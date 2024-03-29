
set -x

export JAVA_HOME={{ kafka_java_home }}
export DYNAMIC_CONFIG_PATH={{ kafka_kafkaui_conf_dir }}/kafka-ui-config.yaml;
export DYNAMIC_CONFIG_ENABLED=true;

nohup $JAVA_HOME/bin/java \
-Xmx{{ kafka_kafkaui_max_heap }} \
-Dsun.misc.URLClassPath.disableJarChecking=true \
--add-opens jdk.naming.rmi/com.sun.jndi.rmi.registry=ALL-UNNAMED \
--add-opens java.base/java.lang=ALL-UNNAMED \
--add-opens java.base/java.util=ALL-UNNAMED \
--add-opens java.base/sun.nio.ch=ALL-UNNAMED \
--add-opens java.base/sun.security.action=ALL-UNNAMED \
--add-opens java.base/sun.net=ALL-UNNAMED \
--add-opens java.rmi/javax.rmi.ssl=ALL-UNNAMED \
-Dserver.port={{ kafka_kafkaui_port }} \
-jar {{ kafka_kafkaui_dist_file }} > /{{ kafka_kafkaui_log_dir }}/out.log 2>&1 & echo $! > pid;

echo "kafka ui pid: $(cat pid)";

