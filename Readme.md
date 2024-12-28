docker 실행 명령어
	docker run -it --rm --shm-size=16G --env DISPLAY=$DISPLAY --env="QT_X11_NO_MITSHM=1" --platform linux/amd64 -v "${PWD}:/home/user/project" -v /tmp/.X11-unix:/tmp/.X11-unix:ro qt6-rtsp

포트번호 필요시
	docker run -it --rm --shm-size=16G --env DISPLAY=$DISPLAY --env="QT_X11_NO_MITSHM=1" --platform linux/amd64 -v "${PWD}:/home/user/project" -v /tmp/.X11-unix:/tmp/.X11-unix:ro -p 8554:8554 qt6-rtsp
