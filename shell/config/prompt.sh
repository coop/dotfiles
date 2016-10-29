dir="${XDG_DATA_HOME}/bash-git-prompt"

if [[ ! -d $dir ]]; then
  git clone https://github.com/magicmonty/bash-git-prompt.git $dir --depth=1
fi

GIT_PROMPT_ONLY_IN_REPO=1
source "${dir}/gitprompt.sh"
