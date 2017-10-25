library ieee;
library work;
use work.all;
use ieee.std_logic_1164.all;

entity exme is

  port(ZeroE, reset, clk : in std_logic;
		 RegWriteE, MemToRegE, MemWriteE, JumpE, BranchE : in std_logic;
       WriteRegE : in std_logic_vector(4 downto 0);
		 AluOutE, WriteDataE, PCBranchE : in std_logic_vector(31 downto 0);
		 ZeroM : out std_logic;
       WriteRegM : out std_logic_vector(4 downto 0);
       RegWriteM, MemToRegM, MemWriteM, JumpM, BranchM : out std_logic;
       AluOutM, WriteDataM, PCBranchM : out std_logic_vector(31 downto 0));

end entity;

architecture behavior of exme is
begin

  Zero_FF      : flopr1 port map (reset => reset, clk => clk, d => ZeroE, q => ZeroM);
  AluOut_FF    : flopr     port map (reset => reset, clk => clk, d => AluOutE, q => AluOutM);
  PCBranch_FF  : flopr     port map (reset => reset, clk => clk, d => PCBranchE, q => PCBranchM);
  WriteData_FF : flopr     port map (reset => reset, clk => clk, d => WriteDataE, q => WriteDataM);
  WriteReg_FF  : flopr     generic map (N => 5) port map (reset => reset, clk => clk, d => WriteRegE, q => WriteRegM);
   
  RegWrite_FF   : flopr1 port map (reset => reset, clk => clk, d => RegWriteE, q => RegWriteM);
  MemToReg_FF   : flopr1 port map (reset => reset, clk => clk, d => MemToRegE, q => MemToRegM);
  MemWrite_FF   : flopr1 port map (reset => reset, clk => clk, d => MemWriteE, q => MemWriteM);
  Jump_FF       : flopr1 port map (reset => reset, clk => clk, d => JumpE, q => JumpM);
  Branch_FF     : flopr1 port map (reset => reset, clk => clk, d => BranchE, q => BranchM);

end architecture;