use std::error::Error;
fn main() -> Result<(), Box<dyn Error>> {
    pulumi_wasm_build::generate("random", "4.15.0")?;
    Ok(())
}
