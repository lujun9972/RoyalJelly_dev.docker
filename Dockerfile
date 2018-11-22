FROM lujun9972/archlinuxcn.docker
RUN pacman -Syu --noconfirm && pacman -S glibc openssh eclipse-jee maven jdk8-openjdk git --noconfirm && yes|pacman -Scc
COPY starter.sh /root/starter.sh
COPY settings.xml /root/.m2/
CMD ["/root/starter.sh"]