RUN := pnpm

build:
	@$(RUN) build

clean:
	@rm -rf .next/ next-env.d.ts node_modules/ pnpm-lock.yaml

dev:
	@$(RUN) dev

fmt:
	@$(RUN) fmt

init: clean
	@$(RUN) install

start:
	@$(RUN) start

serve: build start