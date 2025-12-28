# Rust on M5Stack Cardputer (ESP32-S3)

Проект написан на Rust с использованием `esp-idf-svc`.
Настроено для сборки на macOS (Apple Silicon M1/M2/M3).

## Предварительные требования

1. **Rust & Tools:**
   ```bash
   brew install python3 cmake ninja dfu-util
   cargo install espup ldproxy cargo-generate espflash
   espup install
