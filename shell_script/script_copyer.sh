# source
_PATH=$(
    cd "$(dirname "$0")"
    pwd
)
source ${_PATH}/../env.sh

# init
_NAME=$(basename "$0")
name='test'
work_name="test"
tmp_name="tmp"
work_path=${_HOME}/${work_name}
tmp_path=${_HOME}/${tmp_name}

# do
pushd ${_PATH}
echo "###${_NAME} is running...:$(date "+%Y-%m-%d-%H-%M-%S")###"
echo "# >>> alias:$(date "+%Y-%m-%d-%H-%M-%S") >>>" >scripts.sh
for i in $(find ${tmp_path} -type f -name "*.sh"); do
    i=$(basename ${i})
    echo "alias ${i}='bash ${tmp_path}/${i}'" >>scripts.sh
done
echo "# <<< alias:$(date "+%Y-%m-%d-%H-%M-%S") <<<" >>scripts.sh
echo "###${_NAME} is done......:$(date "+%Y-%m-%d-%H-%M-%S")###"
popd

# done
# bash ${_PATH}/script_copyer.sh
