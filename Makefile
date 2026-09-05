.PHONY: diff diff-externals diff-all apply apply-externals apply-all
.PHONY: rustup-init rustup cargo uv-init uv-tools mise-init mise-tools sdkman-init sdkman-tools sdkman-upgrade
.PHONY: cli-tools google-tools update-tools agent-tools update-agents
.PHONY: android-init dagger-init notion-init
.PHONY: codex-openbook-login

.ONESHELL:

diff:
	chezmoi diff -x externals -v

diff-externals:
	chezmoi diff -i externals -v

diff-all:
	chezmoi diff -v

apply:
	chezmoi apply -x externals -v

apply-externals:
	chezmoi apply -i externals -v

apply-all:
	chezmoi apply -v

rustup-init:
	rustup-init -c rust-analyzer --no-modify-path -v -y

rustup:
	rustup toolchain install stable beta nightly

cargo:
	cargo install --locked cargo-update
	cargo install --locked cargo-geiger
	cargo install --locked cargo-expand

uv-init:
	UV_NO_MODIFY_PATH=1 uv-init -v

uv-tools:
	uv tool install python-language-server
	uv tool install poetry
	uv tool install cookiecutter
	uv tool install copier

rv-init:
	rv-init --no-modify-path

mise-init:
	mise-init

mise-tools:
	mise use -g \
		node@latest \
		npm:typescript@latest \
		npm:typescript-language-server@latest \
		npm:tsx@latest \
		bun@latest \
		deno@latest \
		erlang@latest \
		elixir \
		elm@latest

sdkman-init:
	sdkman-init

sdkman-tools:
	. "${HOME}/.sdkman/bin/sdkman-init.sh"
	sdk install gradle
	sdk install groovy
	sdk install quarkus
	sdk install kotlin
	sdk install sbt
	sdk install visualvm

sdkman-upgrade:
	. "${HOME}/.sdkman/bin/sdkman-init.sh"
	sdk upgrade gradle
	sdk upgrade groovy
	sdk upgrade quarkus
	sdk upgrade kotlin
	sdk upgrade sbt
	sdk upgrade visualvm

cli-tools:
	cargo install --locked flamegraph
	cargo install --locked usage-cli
	cargo install --locked worktrunk
	cargo install --locked mq-run
	uv tool install sqlite-utils
	uv tool install git-remote-codecommit
	uv tool install git-remote-s3
	uv tool install organize-tool
	uv tool install ghtopdep
	uv tool install licensecheck
	mise use -g fnox
	mise use -g npm:@tobilu/qmd@latest

google-tools:
	mise use -g npm:@googleworkspace/cli@latest
	uv tool install gam7

update-tools:
	mise self-update
	mise upgrade
	rustup self update
	rustup update --no-self-update
	cargo install-update -a
	uv self update
	uv tool upgrade --all
	sdk selfupdate
	ghcup upgrade
	choosenim update self
	android update
	ntn update

agent-tools:
	claude-init || true
	agy install --skip-path || true
	mise use -g \
		npm:@openai/codex@latest \
		npm:@google/jules@latest \
		npm:agent-browser@latest
	uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
	uv tool install hermes-agent
	uv tool install graphifyy
	uv tool install git+https://github.com/NVIDIA/skillspector.git
	uv tool install cisco-ai-skill-scanner
	coderabbit-init || true

update-agents:
	claude update
	agy update
	coderabbit update

android-init:
	android-init

dagger-init:
	BIN_DIR="${HOME}/.local/bin" dagger-init

notion-init:
	NTN_INSTALL_DIR="${HOME}/.local/bin" ntn-init

codex-openbook-login:
	mkdir -p "${HOME}/.codex_openbook"
	op read "op://personal/openbook.openai.com/credential" | CODEX_HOME="${HOME}/.codex_openbook" codex login --with-api-key
