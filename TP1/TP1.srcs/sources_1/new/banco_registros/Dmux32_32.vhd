library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dmux3232 is
	Port(
		i : in STD_LOGIC_VECTOR(31 downto 0);
		sel : in STD_LOGIC_VECTOR(4 downto 0);
		out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7, out_8, out_9, out_10, out_11, out_12, out_13, out_14, out_15, out_16, out_17, out_18, out_19, out_20, out_21, out_22, out_23, out_24, out_25, out_26, out_27, out_28, out_29, out_30, out_31 : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Dmux3232;

architecture Behavioral of Dmux3232 is
begin
	process(sel)
	begin
		case sel is
			when x"00" =>
				out_0 <= i;
			when x"01" =>
				out_1 <= i;
			when x"02" =>
				out_2 <= i;
			when x"03" =>
				out_3 <= i;
			when x"04" =>
				out_4 <= i;
			when x"05" =>
				out_5 <= i;
			when x"06" =>
				out_6 <= i;
			when x"07" =>
				out_7 <= i;
			when x"08" =>
				out_8 <= i;
			when x"09" =>
				out_9 <= i;
			when x"0A" =>
				out_10 <= i;
			when x"0B" =>
				out_11 <= i;
			when x"0C" =>
				out_12 <= i;
			when x"0D" =>
				out_13 <= i;
			when x"0E" =>
				out_14 <= i;
			when x"0F" =>
				out_15 <= i;
			when x"10" =>
				out_16 <= i;
			when x"11" =>
				out_17 <= i;
			when x"12" =>
				out_18 <= i;
			when x"13" =>
				out_19 <= i;
			when x"14" =>
				out_20 <= i;
			when x"15" =>
				out_21 <= i;
			when x"16" =>
				out_22 <= i;
			when x"17" =>
				out_23 <= i;
			when x"18" =>
				out_24 <= i;
			when x"19" =>
				out_25 <= i;
			when x"1A" =>
				out_26 <= i;
			when x"1B" =>
				out_27 <= i;
			when x"1C" =>
				out_28 <= i;
			when x"1D" =>
				out_29 <= i;
			when x"1E" =>
				out_30 <= i;
			when others =>
				out_31 <= i;
		end case;
	end process;
end;