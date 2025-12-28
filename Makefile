PROJECT_NAME := cardputer-hello

all: run

run:
	cargo espflash flash --monitor

build:
	cargo build

monitor:
	cargo espflash monitor

doc:
	cargo doc --open

doc-stable:
	rustup doc --toolchain stable

clean:
	cargo clean

nuclear-clean:
	cargo clean
	rm -rf .embuild
	rm -rf sdkconfig
