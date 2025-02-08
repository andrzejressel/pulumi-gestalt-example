use std::error::Error;
fn main() -> Result<(), Box<dyn Error>> {
    pulumi_gestalt_build::generate("random", "4.15.0")?;
    Ok(())
}
