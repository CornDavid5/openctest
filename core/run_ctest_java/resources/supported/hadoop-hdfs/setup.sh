APP_PATH=$(git rev-parse --show-toplevel)
[ ! -d "$APP_PATH/core/run_ctest_java/app/hadoop" ] && git clone git@github.com:CornDavid5/hadoop.git "$APP_PATH/core/run_ctest_java/app/hadoop"
cd "$APP_PATH/core/run_ctest_java/app/hadoop"
git fetch && git checkout hadoop-hdfs-injection
mvn -pl hadoop-hdfs-project/hadoop-hdfs -am install -DskipTests