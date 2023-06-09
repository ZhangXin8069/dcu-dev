# source
_PATH=`cd "$(dirname "$0")";pwd`
source ${_PATH}/../env.sh

# init
_NAME=`basename "$0"`
name='test'
work_name="test"
tmp_name="tmp"
work_path=${_HOME}/${work_name}
tmp_path=${_HOME}/${tmp_name}

# do
pushd ${tmp_path}
echo "###${_NAME} is running...:$(date "+%Y-%m-%d-%H-%M-%S")###"
for ((i = 0; i < 10; i++)); do
    echo "pushd ${tmp_path}" >${name}${i}.sh
    echo "nvcc -o ${name}${i} ${work_path}/${name}${i}.cu && ./${name}${i}" >>${name}${i}.sh
    echo "popd" >>${name}${i}.sh
done
echo "###${_NAME} is done......:$(date "+%Y-%m-%d-%H-%M-%S")###"
popd

# done
bash ${_PATH}/script_copyer.sh
