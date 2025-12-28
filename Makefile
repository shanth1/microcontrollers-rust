PROJECT_DIR := firmware/cardputer/001-hello

run:
	cd $(PROJECT_DIR) && cargo run

monitor:
	cd $(PROJECT_DIR) && cargo espflash monitor

build:
	cd $(PROJECT_DIR) && cargo build

doc:
	cargo doc --open --workspace --no-deps

clean:
	cargo clean

nuclear-clean:
	cargo clean
	rm -rf firmware/cardputer/001-hello/.embuild
	rm -rf firmware/cardputer/001-hello/sdkconfig
