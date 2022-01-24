manage() {
  local command="${1}"
  case "${command}" in
  install)
    case "${OSTYPE}" in
      msys)
        echo "Installing pyenv-win"
        git clone https://github.com/pyenv-win/pyenv-win.git "${HOME}/.pyenv-github"
        ln -s "${HOME}/.pyenv-github/pyenv-win" "${HOME}/.pyenv"
        ;;
      *)
        echo "Installing pyenv"
        git clone https://github.com/pyenv/pyenv.git "${HOME}/.pyenv-github"
        ln -s "${HOME}/.pyenv-github" "${HOME}/.pyenv"
        ;;
      esac
    ;;
  update)
    echo "Updating pyenv"
    (cd "${HOME}/.pyenv-github"; git pull origin master)
    ;;
  esac
}

manage "${@}"
