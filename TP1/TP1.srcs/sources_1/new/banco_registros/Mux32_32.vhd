library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux3232 is
	Port(
		in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15, in_16, in_17, in_18, in_19, in_20, in_21, in_22, in_23, in_24, in_25, in_26, in_27, in_28, in_29, in_30, in_31 : in STD_LOGIC_VECTOR(31 downto 0);
		sel : in STD_LOGIC_VECTOR(4 downto 0);
		o : out STD_LOGIC_VECTOR(31 downto 0)
	);
end Mux3232;

architecture Behavioral of Mux3232 is
begin
	with sel select
		o <= in_0 when x"00",
		in_1 when x"01",
		in_2 when x"02",
		in_3 when x"03",
		in_4 when x"04",
		in_5 when x"05",
		in_6 when x"06",
		in_7 when x"07",
		in_8 when x"08",
		in_9 when x"09",
		in_10 when x"0a",
		in_11 when x"0b",
		in_12 when x"0c",
		in_13 when x"0d",
		in_14 when x"0e",
		in_15 when x"0f",
		in_16 when x"10",
		in_17 when x"11",
		in_18 when x"12",
		in_19 when x"13",
		in_20 when x"14",
		in_21 when x"15",
		in_22 when x"16",
		in_23 when x"17",
		in_24 when x"18",
		in_25 when x"19",
		in_26 when x"1a",
		in_27 when x"1b",
		in_28 when x"1c",
		in_29 when x"1d",
		in_30 when x"1e",
		in_31 when others;

end;