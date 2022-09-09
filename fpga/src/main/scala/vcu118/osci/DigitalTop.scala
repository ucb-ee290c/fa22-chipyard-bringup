package chipyard.fpga.vcu118.osci

import chisel3._

import freechips.rocketchip.subsystem._
import freechips.rocketchip.system._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.devices.tilelink._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.tilelink._

import chipyard.{DigitalTop, DigitalTopModule}

// ------------------------------------
// Osci VCU118 DigitalTop
// ------------------------------------

class OsciVCU118DigitalTop(implicit p: Parameters) extends DigitalTop
  with sifive.blocks.devices.i2c.HasPeripheryI2C
  with testchipip.HasPeripheryTSIHostWidget
{
  override lazy val module = new OsciVCU118DigitalTopModule(this)
}

class OsciVCU118DigitalTopModule[+L <: OsciVCU118DigitalTop](l: L) extends DigitalTopModule(l)
  with sifive.blocks.devices.i2c.HasPeripheryI2CModuleImp
