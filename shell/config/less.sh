export LESS=FRSX
export LESSHISTFILE="${XDG_CACHE_HOME}/less/history"

if [[ ! -d "${XDG_CONFIG_HOME}/less" ]]; then
  mkdir -p "${XDG_CONFIG_HOME}/less"
fi
