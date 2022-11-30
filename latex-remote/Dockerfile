FROM ubuntu:latest

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install  openssh-server sudo latexmk texlive texlive-bibtex-extra biber texlive-fonts-extra texlive-lang-german texlive-latex-extra texlive-science -y && rm -rf /var/cache/apt/*

# Create a user "jan" and group "sshgroup"
RUN groupadd sshgroup && useradd -ms /bin/bash -g sshgroup jan


# Create jan directory in home
RUN mkdir -p /home/jan/.ssh
# Copy the ssh public key in the authorized_keys file. The idkey.pub below is a public key file you get from ssh-keygen. They are under ~/.ssh directory by default.
RUN curl -o /home/jan/.ssh/authorized_keys https://github.com/Gram21.keys
# change ownership of the key file.
RUN chown jan:sshgroup /home/jan/.ssh/authorized_keys && chmod 600 /home/jan/.ssh/authorized_keys


# Start SSH service
RUN service ssh start

# Expose docker port 22
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]