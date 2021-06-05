FROM baneeishaque/gp-vnc-pcma-zsh-as-gh-chrome-idea-charm-conda3-hb-scrcpy-r-zilla-gram-matlab-mysql-phpstorm-1366x625

RUN cd $HOME \
 && aria2c https://go.microsoft.com/fwlink/?LinkID=760868 \
 && sudo apt install -y \
     ./code_*_amd64.deb \
 && rm code_*_amd64.deb \
 && sudo apt update \
 && sudo apt install -y \
     code-insiders \
 && sudo rm -rf /var/lib/apt/lists/*
