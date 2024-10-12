RUN := deno task

build:
	@$(RUN) build

clean:
	@rm -rf deno.lock .next/ next-env.d.ts node_modules/

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