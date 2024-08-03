RUN := bun run

build:
	@$(RUN) build

clean:
	@rm -rf bun.lockb .next/ next-env.d.ts node_modules/

dev:
	@$(RUN) dev

fmt:
	@$(RUN) fmt

init: clean
	@bun i

lint:
	@$(RUN) lint

start:
	@$(RUN) start

serve: build start