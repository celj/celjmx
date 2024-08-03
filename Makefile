RUN := bun run

build:
	@$(RUN) build

clean:
	@git clean -fdX
	@rm -f bun.lockb

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