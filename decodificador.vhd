entity decodificador is
	port (
		e1,e0,en:in bit;
		s0,s1,s2,s3:out bit
		);
end;

--architecture algoritmica of decodificador is
--	begin
--		process(e0,e1,en)
--			begin
--				if en='0' then
--					s0<='0';s1<='0';s2<='0';s3<='0';
--				elsif e0='0' and e1='0' then
--					s0<='1';
--				elsif e0='1' and e1='0' then
--					s1<='1';
--				elsif e0='0' and e1='1' then
--					s2<='1';
--				elsif e0='1' and e1='1' then
--					s3<='1';
--				end if;
--		end process;
--end algoritmica;

architecture rtl of decodificador is
	signal e0n,e1n:bit;
	begin
		e0n<=not(e0);
		e1n<=not(e1);
		s0<=e0n and e1n and en;
		s1<=e0 and e1n and en;
		s2<=e0n and e1 and en;
		s3<=e0 and e1 and en;
end rtl;