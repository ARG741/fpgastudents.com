-- FPGA projects: What is an FPGA?
-- VHDL example code for adder on FPGA
 library ieee;  
 use ieee.std_logic_1164.all;  
 entity fpga4student_Adder is  
   port( A, B, Ci : in std_logic;  
      S, Co : out std_logic);  
 end fpga4student_Adder;  
 architecture structural of fpga4student_Adder is  
 signal tmp1, tmp2, tmp3: std_logic;  
 begin  
   tmp1 <= A xor B;  
   tmp2 <= A and B;  
   tmp3 <= tmp1 and Ci;  
   Co <= tmp2 or tmp3;  
   S <= tmp1 xor Ci;  
 end structural; 