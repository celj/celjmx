RUN := pnpm run

init:
	@pnpm install

dev:
	@$(RUN) dev

build:
	@$(RUN) build

start:
	@$(RUN) start

serve: build start