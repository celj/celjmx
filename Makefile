RUN := pnpm run

build:
	@$(RUN) build

clean:
	@rm -rf .next/ next-env.d.ts node_modules/ pnpm-lock.yaml

dev:
	@$(RUN) dev

init:
	@pnpm install

start:
	@$(RUN) start

reinit: clean init
serve: build start