FROM lujun9972/archlinuxcn.docker
RUN pacman -Syu --noconfirm && pacman -S glibc eclipse-jee maven jdk8-openjdk git --noconfirm && yes|pacman -Scc
CMD ["eclipse"]