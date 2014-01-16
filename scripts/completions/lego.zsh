if [[ ! -o interactive ]]; then
    return
fi

compctl -K _lego lego

_lego() {
  local word words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(lego commands)"
  elif [ "${#words}" -gt 2 ]; then
    completions="$(lego commands "$words")"
  fi

  reply=("${(ps:\n:)completions}")
}
