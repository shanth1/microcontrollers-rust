# Rust on Microcontrollers

## Структура
* `firmware/` — Исходный код на Rust (Workspace).
    * `cardputer/` — Проекты для M5Stack Cardputer (ESP32-S3).
    * `shared/` — Общие библиотеки (драйверы, математика).
* `arduino/` — Скетчи для вспомогательных контроллеров.
* `docs/` — Документация и пинауты.
* `hardware/` — Схемы и 3D модели.

## Быстрый старт (Rust)

1. **Активация окружения** (если настроен алиас):
   ```bash
   get_esp

Проект написан на Rust с использованием `esp-idf-svc`.
Настроено для сборки на macOS (Apple Silicon M1/M2/M3).

## Предварительные требования

1. **Rust & Tools:**
   ```bash
   brew install python3 cmake ninja dfu-util
   cargo install espup ldproxy cargo-generate espflash
   espup install
