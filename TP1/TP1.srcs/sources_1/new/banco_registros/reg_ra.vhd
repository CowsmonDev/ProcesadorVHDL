library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg32_ra is
	Port (
		clk : in  STD_LOGIC;
		rst : in  STD_LOGIC;
		wr : in  STD_LOGIC;
		d : in  STD_LOGIC_VECTOR (31 downto 0);
		q : out  STD_LOGIC_VECTOR (31 downto 0)
	);
end reg32_ra;

architecture Behavioral of reg32_ra is
begin
	process(clk, rst)
	begin
		if rst = '1' then
			q <= (others => '0');
		elsif falling_edge (clk) and wr = '1' then
			q <= d;
		end if;
	end process;
end Behavioral;