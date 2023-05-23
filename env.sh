# source 
_PATH=`cd "$(dirname "$0")";pwd` 
source ${_PATH}/../env.sh 
  
# init 
_HOME=$(pwd)
_NAME=`basename "$0"` 
name='test' 
work_name="test" 
tmp_name="tmp" 
work_path=${_HOME}/${work_name} 
tmp_path=${_HOME}/${tmp_name}

#do
source ${_HOME}/shell_script/scripts.sh
