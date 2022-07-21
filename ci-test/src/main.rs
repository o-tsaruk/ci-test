mod something;
use crate::functions::mul_for_two;

mod functions;
mod module1;


fn main() {
    println!("Hello, world!");
    let _test = something::some_library::some_fn1();
    let _test2 = something::some_library::some_fn3(3,3);
}
