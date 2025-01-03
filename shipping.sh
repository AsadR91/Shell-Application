script=$(realpath "0")
script_path=$(dirname "$script")
source ${script_path}/common.sh
mysql_root_password=$1

if [ -z "$mysql_root_password" ]; then
  echo MYSQL root Password is Missing
  exit
fi

# shellcheck disable=SC2034
component="shipping"
# shellcheck disable=SC2034
schema_setup=mysql

func_java