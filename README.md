# ROS2-Docker-Server

## Creating Image

```bash
docker build -t mfet442/ros2-desktop-vnc:jazzy .
```

## Creating the container

```bash
docker run -d \
    -p user1port:80 \
    -e USER=user1 \
    -e PASSWORD=user1pwd \
    -e ROS_DOMAIN_ID=1 \
    --security-opt seccomp=unconfined\
    --shm-size=512m \
    -v /home/mfet442/docker_ws/user1:/home \
    --name user1_container mfet442/ros2-desktop-vnc:jazzy
```

## License

TODO:

### Acknowledgements

-   This Dockerfile is based on [Tiryoh/docker-ros2-desktop-vnc](https://github.com/Tiryoh/docker-ros2-desktop-vnc), licensed under the [Apache License 2.0](https://github.com/Tiryoh/docker-ros2-desktop-vnc/blob/92d934e995fb50515be1ca3ae165c1e348b2de80/LICENSE).
-   This Dockerfile is based on [HaoguangYang/container_over_browser](https://github.com/HaoguangYang/container_over_browser/tree/mfet442), licensed under the [Apache License 2.0](https://github.com/HaoguangYang/container_over_browser/blob/fb23abdb56a76aa2c0fc616697005bcc4fa4c845/LICENSE).
