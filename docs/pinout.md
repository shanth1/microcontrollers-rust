# M5Stack Cardputer Pinout Reference

**Device:** M5Stack Cardputer
**Core:** M5Stamp S3 (ESP32-S3FN8)
**Flash:** 8MB
**PSRAM:** None (Built-in) / Note: StampS3 usually has no PSRAM, keep stack usage in mind.

## 🚀 Quick Reference

| Component | Pin (GPIO) | Notes |
| :--- | :--- | :--- |
| **User Button (Btn A)** | `GPIO 0` | Physical button on the Stamp module (Top) |
| **IR Emitter** | `GPIO 44` | Infrared Transmitter |
| **Battery Voltage** | `GPIO 10` | ADC (Analog Input). Voltage Divider involved. |
| **Lid Sensor** | `GPIO 46` | Hall Effect Sensor (Detects if closed) |
| **Grove Port (HY2.0-4P)**| `GPIO 2`, `GPIO 1` | I2C / UART / GPIO. (G2=SDA, G1=SCL) |

---

## 🖥 Display (ST7789)

The Cardputer uses a 1.14" IPS TFT Screen (240x135). It shares the SPI bus with the SD Card.

| Signal | Pin | Function |
| :--- | :--- | :--- |
| **BL** | `GPIO 38` | Backlight Brightness (PWM) |
| **CS** | `GPIO 12` | Chip Select |
| **DC** | `GPIO 14` | Data/Command |
| **RST** | `GPIO 33` | Reset |
| **MOSI** | `GPIO 35` | SPI Data (Shared) |
| **SCK** | `GPIO 36` | SPI Clock (Shared) |
| **MISO** | `GPIO 37` | SPI MISO (Shared) |

---

## 💾 SD Card Slot

MicroSD card slot sharing the SPI bus with the display.

| Signal | Pin | Notes |
| :--- | :--- | :--- |
| **CS** | `GPIO 13` | Chip Select (Active Low) |
| **MOSI** | `GPIO 35` | Shared |
| **MISO** | `GPIO 37` | Shared |
| **SCK** | `GPIO 36` | Shared |

---

## ⌨️ Keyboard Matrix (56 Keys)

The keyboard is a matrix scanned using 3 address lines (Columns) and 7 input lines (Rows).

| Type | Pins (GPIO) |
| :--- | :--- |
| **Address (Cols)** | `GPIO 8`, `GPIO 9`, `GPIO 11` |
| **Data (Rows)** | `GPIO 13`, `GPIO 15`, `GPIO 3`, `GPIO 4`, `GPIO 5`, `GPIO 6`, `GPIO 7` |

*Note: Since Rust handling of raw matrix scanning can be tricky, ensure you debounce these inputs.*

---

## 🔊 Audio

| Component | Pin | Protocol | Notes |
| :--- | :--- | :--- | :--- |
| **Speaker (NS4148)** | `GPIO 42` (BCLK)<br>`GPIO 41` (LRCK)<br>`GPIO 43` (DATA) | I2S | 1W-8Ω Speaker (Internal) |
| **Mic (SPM1423)** | `GPIO 41` (CLK)<br>`GPIO 42` (DATA) | PDM | Digital Microphone |

---

## 🔋 Power Management

*   **Base Battery:** 120mAh + 1400mAh (in the base).
*   **Voltage Pin:** `GPIO 10` (ADC).
    *   *Formula:* The raw ADC value needs to be converted.
    *   Voltage divider ratio is usually `2:1` or specific to M5 designs. Check schematic.
