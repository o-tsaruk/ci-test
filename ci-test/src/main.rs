use crate::functions::mul_for_two;

mod functions;

fn main() {
    println!("Hello, world!");

    let result = mul_for_two(2);
    println!("2 * 2 = {:?}", result);
}
