library IEEE;
use IEEE.std_logic_1164.all;
package instructions is
	constant halt : std_logic_vector(5 downto 0) := "111111";
	constant nop : std_logic_vector(5 downto 0) := "000000";
	constant load_reg_reg : std_logic_vector(5 downto 0) := "000001";
	constant load_reg_addr : std_logic_vector(5 downto 0) := "000010";
	constant load8_reg_reg : std_logic_vector(5 downto 0) := "000011";
	constant load8_reg_addr : std_logic_vector(5 downto 0) := "000100";
	constant set_reg_imm : std_logic_vector(5 downto 0) := "000101";
	constant set_reg_addr : std_logic_vector(5 downto 0) := "000110";
	constant store_reg_reg : std_logic_vector(5 downto 0) := "000111";
	constant storel_reg_reg : std_logic_vector(5 downto 0) := "001000";
	constant storeg_reg_reg : std_logic_vector(5 downto 0) := "001001";
	constant store_reg_addr : std_logic_vector(5 downto 0) := "001010";
	constant storel_reg_addr : std_logic_vector(5 downto 0) := "001011";
	constant storeg_reg_addr : std_logic_vector(5 downto 0) := "001100";
	constant copy_reg_reg : std_logic_vector(5 downto 0) := "001101";
	constant push_reg : std_logic_vector(5 downto 0) := "001110";
	constant pop_reg : std_logic_vector(5 downto 0) := "001111";
	constant add_reg_reg : std_logic_vector(5 downto 0) := "010000";
	constant add_reg_imm : std_logic_vector(5 downto 0) := "010001";
	constant sub_reg_reg : std_logic_vector(5 downto 0) := "010010";
	constant sub_reg_imm : std_logic_vector(5 downto 0) := "010011";
	constant cmp_reg_reg : std_logic_vector(5 downto 0) := "010100";
	constant cmp_reg_imm : std_logic_vector(5 downto 0) := "010101";
	constant not_reg : std_logic_vector(5 downto 0) := "010110";
	constant shiftl_reg : std_logic_vector(5 downto 0) := "010111";
	constant shiftr_reg : std_logic_vector(5 downto 0) := "011000";
	constant and_reg_reg : std_logic_vector(5 downto 0) := "011001";
	constant and_reg_imm : std_logic_vector(5 downto 0) := "011010";
	constant or_reg_reg : std_logic_vector(5 downto 0) := "011011";
	constant or_reg_imm : std_logic_vector(5 downto 0) := "011100";
	constant xor_reg_reg : std_logic_vector(5 downto 0) := "011101";
	constant xor_reg_imm : std_logic_vector(5 downto 0) := "011110";
	constant jump_addr : std_logic_vector(5 downto 0) := "011111";
	constant jump_reg : std_logic_vector(5 downto 0) := "100000";
	constant jumpeq_addr : std_logic_vector(5 downto 0) := "100001";
	constant jumpeq_reg : std_logic_vector(5 downto 0) := "100010";
	constant jumpl_addr : std_logic_vector(5 downto 0) := "100011";
	constant jumpl_reg : std_logic_vector(5 downto 0) := "100100";
	constant jumpg_addr : std_logic_vector(5 downto 0) := "100101";
	constant jumpg_reg : std_logic_vector(5 downto 0) := "100110";
	constant jumpc_addr : std_logic_vector(5 downto 0) := "100111";
	constant jumpc_reg : std_logic_vector(5 downto 0) := "101000";
	constant call_addr : std_logic_vector(5 downto 0) := "101001";
	constant ret : std_logic_vector(5 downto 0) := "101010";
	constant in_reg_dev : std_logic_vector(5 downto 0) := "101011";
	constant out_dev_reg : std_logic_vector(5 downto 0) := "101100";
end package instructions;