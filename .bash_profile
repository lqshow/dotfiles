export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


export LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-color

# BASIC
export BASEBIT=~/workspace/basebit
export BASEBIT_GITLAB=$BASEBIT/gitlab
export HISTFILESIZE=10000000
export HISTSIZE=10000000
export PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH

# Virtual Environment
export PYENV_ROOT=$HOME/.pyenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi
eval "$(pyenv init -)"

# JAVA
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH

# MYSQL
export MYSQL_HOME=/usr/local/mysql
export PATH=$MYSQL_HOME/bin:$PATH

# SCALA
export SCALA_HOME=/opt/scala/current
export PATH=$PATH:$SCALA_HOME/bin

# JETTY
export JETTY_HOME=/usr/local/Cellar/jetty/9.4.6.v20170531/libexec

# HADOOP
export HADOOP_HOME=/opt/hadoop/current
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
#export HADOOP_CONF_DIR=/opt/conf/hadoop/conf
export HADOOP_CONF_DIR=/opt/conf/online-hadoop/xcloud
export HADOOP_USER_NAME=hadoop

# KAFKA
export KAFKA_HOME=/opt/kafka/current
export PATH=$PATH:$KAFKA_HOME/bin

# SPARK
export SPARK_HOME=/opt/spark/current
export PATH=$PATH:$SPARK_HOME/bin

# DRILL
export MASTER_DIR=/opt/drill
export DRILL_HOME=$MASTER_DIR/current
export DRILL_SITE=$MASTER_DIR/site
export DRILL_NAME=apache-drill-1.13.0.tar.gz
export DRILL_CONF_DIR=$DRILL_SITE

# CONSUL
export CONSUL_UI_BETA=true

# Go
export GOROOT=/usr/local/Cellar/go/1.14/libexec
export GOPATH=/Users/linqiong/workspace/app/golang/lib
#:/Users/linqiong/workspace/app/golang/workspace:/Users/linqiong/workspace/github/lqshow/k8s-labs/lab5-golang-redis
#export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:/Users/linqiong/workspace/app/golang/lib/bin
export PATH=$PATH:/usr/local/bin
export GOPROXY=https://goproxy.cn

# Kubernetes
export KUBECONFIG=$HOME/.kube/config:/Users/linqiong/workspace/k8s/kubeconfig/basebit/aws-dev-kubeconfig-xdp-fuwu:/Users/linqiong/workspace/k8s/kubeconfig/basebit/aws-dev-kubeconfig-xdp-system-qiong-lin:/Users/linqiong/workspace/k8s/kubeconfig/basebit/aws-uat-kubeconfig-xdp-fuwu-qiong-lin:/Users/linqiong/workspace/k8s/kubeconfig/basebit/aws-uat-kubeconfig-xdp-system-qiong-lin:/Users/linqiong/workspace/k8s/kubeconfig/basebit/config_221:/Users/linqiong/workspace/k8s/kubeconfig/basebit/cluster-184-context:/Users/linqiong/workspace/k8s/kubeconfig/basebit/enigma2-mesh-staging:/Users/linqiong/workspace/k8s/kubeconfig/basebit/k8s-daas-dev-config:/Users/linqiong/workspace/k8s/kubeconfig/basebit/k8s-xdp-read-config:/Users/linqiong/workspace/k8s/kubeconfig/basebit/k8s-stpa-dev-config:/Users/linqiong/workspace/k8s/kubeconfig/basebit/k8s-jerry.ji-config:/Users/linqiong/workspace/k8s/kubeconfig/basebit/k8s-xdp-dev-config:/Users/linqiong/workspace/k8s/kubeconfig/basebit/k8s-goldfinger-dev-config:/Users/linqiong/workspace/k8s/kubeconfig/basebit/k8s-rancher-config
#export KUBECONFIG=/Users/linqiong/workspace/k8s/kubeconfig/basebit/k8s-xdp-dev-config

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

alias klog="kubectl logs -f --tail 500 --timestamps"
alias klogp="kubectl logs -f --tail 500 --timestamps -p"


# go path
export BASEBIT_GOPATH=$GOPATH/src/basebit

# Istio
export PATH=/Users/linqiong/workspace/istio/istio-1.4.0/bin:$PATH
#export PATH=$PATH:$HOME/.istioctl/bin

# kubebuilder
export PATH=$PATH:/usr/local/kubebuilder/bin

# WJW
export WJW=/Users/linqiong/Downloads/wjw/shell

# vscode
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin



