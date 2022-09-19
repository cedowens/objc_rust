# Objc Rust

This is a slightly modified version of the original repo at: https://github.com/maciej-irl/objc_rust. This modification runs JXA (JavaScript for Automation) from rust by way of ObjC.

## Steps:

1. Take your desired JXA payload and base64 encode it. Example: `cat [filename].js | base64 | pbcopy`

2. edit the `mycode` variable in `objc/sample.m` and paste in the base64 encoded JXA payload.

3. cd to the parent dir of this repo and run: `cargo run`

4. JXA will be executed and anything written to stdout will be returned.

