use std::io;
use std::io::BufRead;

fn main() {
    for line in io::stdin().lock().lines() {
        println!("{}", line.unwrap())
    }
}
