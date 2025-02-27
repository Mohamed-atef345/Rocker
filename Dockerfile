FROM  ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y bash\
    wget\
    openssh-server\
    curl\
    python3\
    python3-pip\
    cmake\
    git\
    vim\
    nano\
    iputils-ping\
    tmux\
    x11-utils \
    x11-apps \
    xvfb \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add - && \
apt-get update && apt-get install -y ros-noetic-desktop-full &&\
rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y ros-noetic-rosserial-arduino ros-noetic-rosserial 

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" \
    > /etc/apt/sources.list.d/ros-latest.list' &&\
    wget http://packages.ros.org/ros.key -O - | sudo apt-key add - && \
    apt-get update && apt-get install -y python3-catkin-tools && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y sshpass gnome-terminal

RUN useradd -m ros_noetic
USER ros_noetic

WORKDIR /home/ros_noetic/ros_ws
