install_dir="${XDG_DATA_HOME}/asdf"

if [ ! -d "${install_dir}" ]; then
  git clone https://github.com/asdf-vm/asdf.git "${install_dir}"
fi

source "${install_dir}/asdf.sh"
source "${install_dir}/completions/asdf.bash"

unset install_dir
