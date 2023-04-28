library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registers is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           wr : in STD_LOGIC;
           reg1_rd : in STD_LOGIC_VECTOR (4 downto 0);
           reg2_rd : in STD_LOGIC_VECTOR (4 downto 0);
		   reg_wr : in STD_LOGIC_VECTOR (4 downto 0);
		   data_wr : in STD_LOGIC_VECTOR (31 downto 0);
		   data1_rd : out STD_LOGIC_VECTOR (31 downto 0);
		   data2_rd : out STD_LOGIC_VECTOR (31 downto 0)
		);
end Registers;

architecture Behavioral of Registers is

	component Mux3232
	PORT(in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15, in_16, in_17, in_18, in_19, in_20, in_21, in_22, in_23, in_24, in_25, in_26, in_27, in_28, in_29, in_30, in_31 : in STD_LOGIC_VECTOR(31 downto 0);
			sel : in STD_LOGIC_VECTOR(4 downto 0);
			out_0 : out STD_LOGIC_VECTOR(31 downto 0));
	end component;
	component Dmux3232
	PORT(
		i : in STD_LOGIC_VECTOR(31 downto 0);
		sel : in STD_LOGIC_VECTOR(4 downto 0);
		out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7, out_8, out_9, out_10, out_11, out_12, out_13, out_14, out_15, out_16, out_17, out_18, out_19, out_20, out_21, out_22, out_23, out_24, out_25, out_26, out_27, out_28, out_29, out_30, out_31 : out STD_LOGIC_VECTOR(31 downto 0)
	);
	end component;

	component reg32_ra
	PORT(
		clk : in STD_LOGIC;
		reset : in STD_LOGIC;
		wr : in STD_LOGIC;
		data_in : in STD_LOGIC_VECTOR(31 downto 0);
		data_out : out STD_LOGIC_VECTOR(31 downto 0)
	);
	end component;

	signal reg_out_0, reg_out_1, reg_out_2, reg_out_3, reg_out_4, reg_out_5, reg_out_6, reg_out_7, reg_out_8, reg_out_9, reg_out_10, reg_out_11, reg_out_12, reg_out_13, reg_out_14, reg_out_15, reg_out_16, reg_out_17, reg_out_18, reg_out_19, reg_out_20, reg_out_21, reg_out_22, reg_out_23, reg_out_24, reg_out_25, reg_out_26, reg_out_27, reg_out_28, reg_out_29, reg_out_30, reg_out_31 : STD_LOGIC_VECTOR(31 downto 0);
	signal reg_in_0, reg_in_1, reg_in_2, reg_in_3, reg_in_4, reg_in_5, reg_in_6, reg_in_7, reg_in_8, reg_in_9, reg_in_10, reg_in_11, reg_in_12, reg_in_13, reg_in_14, reg_in_15, reg_in_16, reg_in_17, reg_in_18, reg_in_19, reg_in_20, reg_in_21, reg_in_22, reg_in_23, reg_in_24, reg_in_25, reg_in_26, reg_in_27, reg_in_28, reg_in_29, reg_in_30, reg_in_31 : STD_LOGIC_VECTOR(31 downto 0);

begin

	reg0: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_0, data_out=>reg_out_0);
	reg1: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_1, data_out=>reg_out_1);
	reg2: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_2, data_out=>reg_out_2);
	reg3: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_3, data_out=>reg_out_3);
	reg4: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_4, data_out=>reg_out_4);
	reg5: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_5, data_out=>reg_out_5);
	reg6: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_6, data_out=>reg_out_6);
	reg7: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_7, data_out=>reg_out_7);
	reg8: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_8, data_out=>reg_out_8);
	reg9: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_9, data_out=>reg_out_9);
	reg10: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_10, data_out=>reg_out_10);
	reg11: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_11, data_out=>reg_out_11);
	reg12: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_12, data_out=>reg_out_12);
	reg13: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_13, data_out=>reg_out_13);
	reg14: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_14, data_out=>reg_out_14);
	reg15: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_15, data_out=>reg_out_15);
	reg16: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_16, data_out=>reg_out_16);
	reg17: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_17, data_out=>reg_out_17);
	reg18: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_18, data_out=>reg_out_18);
	reg19: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_19, data_out=>reg_out_19);
	reg20: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_20, data_out=>reg_out_20);
	reg21: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_21, data_out=>reg_out_21);
	reg22: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_22, data_out=>reg_out_22);
	reg23: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_23, data_out=>reg_out_23);
	reg24: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_24, data_out=>reg_out_24);
	reg25: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_25, data_out=>reg_out_25);
	reg26: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_26, data_out=>reg_out_26);
	reg27: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_27, data_out=>reg_out_27);
	reg28: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_28, data_out=>reg_out_28);
	reg29: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_29, data_out=>reg_out_29);
	reg30: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_30, data_out=>reg_out_30);
	reg31: reg32_ra PORT MAP( clk=>clk, reset=>reset, wr=>wr, data_in=>reg_in_31, data_out=>reg_out_31);

	dmux: Dmux3232 PORT MAP(
		i=>data_wr,
		sel=>reg_wr,
		out_0=>reg_in_0,
		out_1=>reg_in_1,
		out_2=>reg_in_2,
		out_3=>reg_in_3,
		out_4=>reg_in_4,
		out_5=>reg_in_5,
		out_6=>reg_in_6,
		out_7=>reg_in_7,
		out_8=>reg_in_8,
		out_9=>reg_in_9,
		out_10=>reg_in_10,
		out_11=>reg_in_11,
		out_12=>reg_in_12,
		out_13=>reg_in_13,
		out_14=>reg_in_14,
		out_15=>reg_in_15,
		out_16=>reg_in_16,
		out_17=>reg_in_17,
		out_18=>reg_in_18,
		out_19=>reg_in_19,
		out_20=>reg_in_20,
		out_21=>reg_in_21,
		out_22=>reg_in_22,
		out_23=>reg_in_23,
		out_24=>reg_in_24,
		out_25=>reg_in_25,
		out_26=>reg_in_26,
		out_27=>reg_in_27,
		out_28=>reg_in_28,
		out_29=>reg_in_29,
		out_30=>reg_in_30,
		out_31=>reg_in_31
	);

	mux_out1: Mux3232 PORT MAP(
		in_0=>reg_out_0,
		in_1=>reg_out_1,
		in_2=>reg_out_2,
		in_3=>reg_out_3,
		in_4=>reg_out_4,
		in_5=>reg_out_5,
		in_6=>reg_out_6,
		in_7=>reg_out_7,
		in_8=>reg_out_8,
		in_9=>reg_out_9,
		in_10=>reg_out_10,
		in_11=>reg_out_11,
		in_12=>reg_out_12,
		in_13=>reg_out_13,
		in_14=>reg_out_14,
		in_15=>reg_out_15,
		in_16=>reg_out_16,
		in_17=>reg_out_17,
		in_18=>reg_out_18,
		in_19=>reg_out_19,
		in_20=>reg_out_20,
		in_21=>reg_out_21,
		in_22=>reg_out_22,
		in_23=>reg_out_23,
		in_24=>reg_out_24,
		in_25=>reg_out_25,
		in_26=>reg_out_26,
		in_27=>reg_out_27,
		in_28=>reg_out_28,
		in_29=>reg_out_29,
		in_30=>reg_out_30,
		in_31=>reg_out_31,
		sel=>reg1_rd,
		out_0=>data1_rd
	);

	mux_out2: Mux3232 PORT MAP(
		in_0=>reg_out_0,
		in_1=>reg_out_1,
		in_2=>reg_out_2,
		in_3=>reg_out_3,
		in_4=>reg_out_4,
		in_5=>reg_out_5,
		in_6=>reg_out_6,
		in_7=>reg_out_7,
		in_8=>reg_out_8,
		in_9=>reg_out_9,
		in_10=>reg_out_10,
		in_11=>reg_out_11,
		in_12=>reg_out_12,
		in_13=>reg_out_13,
		in_14=>reg_out_14,
		in_15=>reg_out_15,
		in_16=>reg_out_16,
		in_17=>reg_out_17,
		in_18=>reg_out_18,
		in_19=>reg_out_19,
		in_20=>reg_out_20,
		in_21=>reg_out_21,
		in_22=>reg_out_22,
		in_23=>reg_out_23,
		in_24=>reg_out_24,
		in_25=>reg_out_25,
		in_26=>reg_out_26,
		in_27=>reg_out_27,
		in_28=>reg_out_28,
		in_29=>reg_out_29,
		in_30=>reg_out_30,
		in_31=>reg_out_31,
		sel=>reg2_rd,
		out_0=>data2_rd
	);

end Behavioral;