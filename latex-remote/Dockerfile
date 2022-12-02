FROM ubuntu:latest

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install  openssh-server sudo latexmk texlive texlive-bibtex-extra biber texlive-fonts-extra texlive-lang-german texlive-latex-extra texlive-science -y && rm -rf /var/cache/apt/*


RUN mkdir -p /root/.ssh
RUN curl -o /root/.ssh/authorized_keys https://github.com/Gram21.keys

# Start SSH service
RUN service ssh start

# Expose docker port 22
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]