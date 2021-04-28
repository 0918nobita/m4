use std::process::Command;

fn main() {
    Command::new("m4")
        .arg("-daeq")
        .status()
        .expect("failed to execute m4");
    println!("\x1b[38;5;9mHello, world!\x1b[0m");
}
