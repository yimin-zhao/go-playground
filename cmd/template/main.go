package main

import (
	"bytes"
	"fmt"
	"text/template"
)

type TemplateData struct {
	ImageName string
	ImageTag  string
	Creds     string
	ImageURI  string
	JobFile   string
	Mounts    string
	LogPath   string
}

const (
	podman_template = `#!/bin/bash
IMAGE_NAME="{{.ImageName}}"
IMAGE_TAG="{{.ImageTag}}"
IMAGE=$IMAGE_NAME:$IMAGE_TAG
CREDS="{{.Creds}}"
IMAGE_URI="{{.ImageURI}}"
JOB_FILE="{{.JobFile}}"
MOUNTS="{{.Mounts}}"
LOG_PATH="{{.LogPath}}"

dnf install -y iptables
export PATH=$PATH:/usr/sbin/
if [[ -z $IMAGE_URI ]]; then
	podman pull $IMAGE $CREDS
else
  if [[ $IMAGE_URI =~ "s3://" ]]; then
		tmpImage=/tmp/image
		aws s3 cp $IMAGE_URI $tmpImage --quiet
		podman load -i $tmpImage
		rm -f $tmpImage
	elif [[ $IMAGE_URI =~ "oss://" ]]; then
		tmpImage=/tmp/image
		aliyun oss cp $IMAGE_URI $tmpImage 2>&1 >/dev/null
		podman load -i $tmpImage
		rm -f $tmpImage
	else
		podman load -i $IMAGE_URI
	fi
fi

if [[ -z $SLURM_RESTART_COUNT ]]; then
	# first submit
	echo "First submit job $SLURM_JOB_ID, call podman directly"
	podman run  $MOUNTS $IMAGE $JOB_FILE $LOG_PATH
else
	# requeue
	echo "Requeue job $SLURM_JOB_ID"
	id=$(podman ps -a | grep "$IMAGE" | awk '{print $1}')
	if [[ -z $id ]]; then
		echo "No previous container is found, run it from beginning"
		podman run  $MOUNTS $IMAGE $JOB_FILE $LOG_PATH
	else
		echo "Found previous container $id, ready to resume"
		podman container restore $id --tcp-established --file-locks
		echo "Wait until podman process exit..."
		pid=$(ps aux | grep  [p]odman | head -n 1 | awk '{print $2}')
		tail --pid=$pid -f /dev/null
	fi
fi
`
)

func main() {
	tmp, err := template.New("bash").Parse(podman_template)
	if err != nil {
		return
	}

	data := &TemplateData{
		ImageName: "docker.io/library/nginx",
		ImageTag:  "v1.22",
		Creds:     "username:password",
		ImageURI:  "s3://bucket/nginx.tar",
		JobFile:   "run_nginx.sh",
		Mounts:    "/var/log/memverge:/var/opt/log",
		LogPath:   "/mnt/var/memverge/log",
	}
	buf := new(bytes.Buffer)
	err = tmp.Execute(buf, data)
	if err != nil {
		return
	}
	fmt.Println(buf)
}