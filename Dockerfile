FROM dock0/arch
  ENV EDITOR=vim
  ENV TERM=xterm-256color

  RUN curl -fs https://blackarch.org/strap.sh > /root/strap.sh \
    && echo '9f770789df3b7803105e5fbc19212889674cd503 /root/strap.sh' sha1sum -c \
    && chmod +x /root/strap.sh \
    && /root/strap.sh \
    && pacman -S --noconfirm yay sudo vim zsh git net-tools bind-tools ldns htop \
    && useradd -m red
   
  # needed by many tools
  RUN pacman -S --needed --noconfirm base-devel \
    && pacman -Scc --noconfirm

  COPY sudoers /etc/sudoers
  RUN chown root:root /etc/sudoers \
    && chmod 0440 /etc/sudoers

  USER red
  WORKDIR /home/red
