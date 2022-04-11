set -xe
{% if with_cargo_release %}
cargo install cargo-release
{% else %}
# Uncomment this to install cargo-release in the dev container.
# cargo install cargo-release
{% endif %}

{% if with_web_assembly %}
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install --lts
npm install npm@latest -g
{% endif %}