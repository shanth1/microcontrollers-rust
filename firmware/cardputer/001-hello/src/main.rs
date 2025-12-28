use std::thread;
use std::time::Duration;

fn main() {
    esp_idf_svc::sys::link_patches();
    esp_idf_svc::log::EspLogger::initialize_default();

    println!("Cardputer Rust!");

    let mut count = 0;

    loop {
        count += 1;
        println!("Cardputer работает! Счетчик: {}", count);

        thread::sleep(Duration::from_secs(1));
    }
}
