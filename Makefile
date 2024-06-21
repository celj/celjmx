RUN := pnpm run

dev:
	@$(RUN) dev

build:
	@$(RUN) build

start:
	@$(RUN) start

serve: build start