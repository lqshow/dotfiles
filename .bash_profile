export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
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

# JAVA
#export JAVA_HOME=$(/usr/libexec/java_home)
#export PATH=$JAVA_HOME/bin:$PATH

# MYSQL
#export MYSQL_HOME=/usr/local/mysql
#export PATH=$MYSQL_HOME/bin:$PATH

# SCALA
#export SCALA_HOME=/opt/scala/current
#export PATH=$PATH:$SCALA_HOME/bin

# JETTY
#export JETTY_HOME=/usr/local/Cellar/jetty/9.4.6.v20170531/libexec

# HADOOP
#export HADOOP_HOME=/opt/hadoop/current
#export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
#export HADOOP_CONF_DIR=/opt/conf/hadoop/conf
#export HADOOP_CONF_DIR=/opt/conf/online-hadoop/xcloud
#export HADOOP_USER_NAME=hadoop

# KAFKA
#export KAFKA_HOME=/opt/kafka/current
#export PATH=$PATH:$KAFKA_HOME/bin

# SPARK
#export SPARK_HOME=/opt/spark/current
#export PATH=$PATH:$SPARK_HOME/bin

# DRILL
#export MASTER_DIR=/opt/drill
#export DRILL_HOME=$MASTER_DIR/current
#export DRILL_SITE=$MASTER_DIR/site
#export DRILL_NAME=apache-drill-1.13.0.tar.gz
#export DRILL_CONF_DIR=$DRILL_SITE

# CONSUL
#export CONSUL_UI_BETA=true


#export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"


# go path
#export BASEBIT_GOPATH=$GOPATH/src/basebit

# Istio
#export PATH=/Users/linqiong/workspace/istio/istio-1.4.0/bin:$PATH
#export PATH=$PATH:$HOME/.istioctl/bin

# kubebuilder
#export PATH=$PATH:/usr/local/kubebuilder/bin

# vscode
#export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin



