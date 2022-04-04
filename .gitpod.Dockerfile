FROM baneeishaque/gp-vnc-pcma-zsh-as-gh-chrome-idea-charm-conda3-hb-scrcpy-r-zilla-gram-matlab-mysql-phpstorm-1366x625

WORKDIR $HOME
RUN sudo aria2c --out=code_amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868 \
 && sudo apt install -y \
     ./code_amd64.deb \
 && sudo rm code_amd64.deb \
 && sudo apt update \
 && sudo apt install -y \
     code-insiders \
 && sudo rm -rf /var/lib/apt/lists/*
