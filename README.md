# LQ’s dotfiles

## Xcode
```bash
sudo xcode-select --install
```

## Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## ohmyzsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## k8s

### krew

> https://krew.sigs.k8s.io/docs/user-guide/setup/install/

```bash
(
  set -x; cd "$(mktemp -d)" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/krew.{tar.gz,yaml}" &&
  tar zxvf krew.tar.gz &&
  KREW=./krew-"$(uname | tr '[:upper:]' '[:lower:]')_amd64" &&
  "$KREW" install --manifest=krew.yaml --archive=krew.tar.gz &&
  "$KREW" update
)
````

## ZSH prompt
```bash
npm install -g spaceship-prompt
```
## Tmux Plugin Manager

> Press prefix + I (capital i, as in Install) to fetch the plugin.

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

```bash
# Reload TMUX environment:
tmux source-file ~/.tmux.conf
```

## Nodejs

### nvm
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

## k8s

### helm

```bash
helm init --client-only
helm plugin install https://github.com/chartmuseum/helm-push
helm repo add basebit-chartmuseum http://xx.xx.xx
```

## Python

### Install virtualenv
```bash
sudo pip install virtualenv
```

### Create a dir to store your virtualenvs
```bash
mkdir ~/.virtualenvs
```

### 设置环境变量
```bash
# Virtual Environment
export PYENV_ROOT=$HOME/.pyenv
# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi
```

## References
- [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
- [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)
