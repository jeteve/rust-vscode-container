set -xe
{% if with_cargo_release %}
cargo install cargo-release
{% else %}
# Uncomment this to install cargo-release in the dev container.
# cargo install cargo-release
{% endif %}
