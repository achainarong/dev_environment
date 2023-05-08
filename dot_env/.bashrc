source <(kubectl completion bash)
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/anaconda3/bin:$PATH"
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export VCPKG_ROOT="$HOME/vcpkg"
export FZF_DEFAULT_OPTS='--height 30% --layout=reverse --border'
