use crate::something::some_library;
mod something;

fn main() {
    println!("Hello, world!");
    let _x = some_library::some_fn();
}
