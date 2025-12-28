use std::thread;
use std::time::Duration;
use shared::add_numbers;

fn main() {
    esp_idf_svc::sys::link_patches();
    esp_idf_svc::log::EspLogger::initialize_default();

    println!("System started");

    let mut count = 0;
    loop {
        count += 1;
        let sum = add_numbers(count, 5);
        println!("Loop: {}, Sum: {}", count, sum);
        thread::sleep(Duration::from_secs(1));
    }
}
