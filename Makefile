APP := cardputer-hello

all: run

run:
	cargo espflash flash --monitor -p $(APP)

monitor:
	cargo espflash monitor -p $(APP)

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
