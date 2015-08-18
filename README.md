# Docker Motion

Docker container with linux motion for motion detection. This has been explicitely built with RTSP/h.264 support.

# Running

* Create conf files
* Run:

    docker run -d --name docker-motion -p 8080:8080 -v /data/cams:/data -v ~/git/docker-motion/files:/etc/motion tdeckers/docker-motion motion -c /etc/motion/motion.conf
