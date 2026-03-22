.PHONY: diff diff-externals diff-all apply apply-externals apply-all
.PHONY: rustup-init rustup cargo uv-init uv-tool mise-init mise-tool google-tool dagger-init agent-tool

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
	cargo install --locked flamegraph
	cargo install --locked cargo-geiger
	cargo install --locked cargo-expand
	cargo install --locked usage-cli

uv-init:
	UV_NO_MODIFY_PATH=1 uv-init -v

uv-tool:
	uv tool install python-language-server
	uv tool install poetry
	uv tool install licensecheck
	uv tool install cookiecutter
	uv tool install copier
	uv tool install sqlite-utils
	uv tool install git-remote-codecommit
	uv tool install git-remote-s3
	uv tool install organize-tool
	uv tool install ghtopdep

mise-init:
	mise-init

mise-tool:
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

google-tool:
	mise use -g npm:@googleworkspace/cli@latest
	uv tool install gam7

dagger-init:
	BIN_DIR="${HOME}/.local/bin" dagger-init

agent-tool:
	claude-init || true
	kiro-init || true
	mise use -g \
		npm:@openai/codex@latest \
		npm:@google/gemini-cli@latest \
		npm:@google/jules@latest
	uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
	coderabbit-init || true
