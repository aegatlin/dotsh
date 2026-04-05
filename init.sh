for dotsh_file in ~/.config/sh/*.sh; do
  [[ "$dotsh_file" == *"init.sh" ]] && continue
  source "$dotsh_file"
done
