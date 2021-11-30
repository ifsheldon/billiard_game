
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GAME_TOP is
   port(

      clk_i          : in  std_logic;
      rstn_i         : in  std_logic;
      
      -- buttons
      col_sw         : in  std_logic_vector(11 downto 0);
      
      -- VGA display
      hsync         : out std_logic;
      vsync         : out std_logic;
      pix_r         : out std_logic_vector(3 downto 0);
      pix_g         : out std_logic_vector(3 downto 0);
      pix_b         : out std_logic_vector(3 downto 0);
             
      -- PS2 interface signals
      ps2_clk        : inout std_logic;
      ps2_data       : inout std_logic;
  
      -- push buttons
      sw             : in std_logic_vector(4 downto 0);
  
      -- sSeg interface
      a              : out std_logic;
      b              : out std_logic;
      c              : out std_logic;
      d              : out std_logic;
      e              : out std_logic;
      f              : out std_logic;
      g              : out std_logic;
      an             : out std_logic_vector(7 downto 0)
   
   );
end GAME_TOP;

architecture Behavioral of GAME_TOP is

-- 200 MHz Clock Generator
component clk_wiz_0
port
 (-- Clock in ports
  clk_100MHz_i      : in     std_logic;
  -- Clock out ports
  clk_83MHz_o       : out    std_logic
 );
end component;


COMPONENT sSeg is
PORT (
    clk            : in std_logic;
    numx           : in std_logic_vector(11 downto 0);
    numy           : in std_logic_vector(11 downto 0);
    a              : out std_logic;
    b              : out std_logic;
    c              : out std_logic;
    d              : out std_logic;
    e              : out std_logic;
    f              : out std_logic;
    g              : out std_logic;
    an             : out std_logic_vector(7 downto 0)
);
END COMPONENT;

COMPONENT MouseCtl is
PORT(
   clk            : in std_logic;
   rst            : in std_logic;
   xpos           : out std_logic_vector(11 downto 0);
   ypos           : out std_logic_vector(11 downto 0);
   zpos           : out std_logic_vector(3 downto 0);
   left           : out std_logic;
   middle         : out std_logic;
   right          : out std_logic;
   new_event      : out std_logic;
   value          : in std_logic_vector(11 downto 0);
   setx           : in std_logic;
   sety           : in std_logic;
   setmax_x       : in std_logic;
   setmax_y       : in std_logic;
   ps2_clk        : inout std_logic;
   ps2_data       : inout std_logic
);
END COMPONENT;

COMPONENT game is
PORT (
    clk      : in std_logic;
    rst      : in std_logic;
    left_click : in std_logic;
    right_click : in std_logic;
    
    sw        : in std_logic_vector(4 downto 0);         
    col_sw    : in std_logic_vector(11 downto 0);    
    pointer_x : in std_logic_vector(11 downto 0);
    pointer_y : in std_logic_vector(11 downto 0);
    
    hsync    : out std_logic;
    vsync    : out std_logic;
    pix_r    : out std_logic_vector(3 downto 0);
    pix_g    : out std_logic_vector(3 downto 0);
    pix_b    : out std_logic_vector(3 downto 0);    

    score    : in std_logic_vector(11 downto 0);
    shots    : in std_logic_vector(11 downto 0)    

);
END COMPONENT;

signal clk_83MHz  : std_logic;
signal rst        : std_logic;

signal left_click : std_logic;
signal right_click: std_logic;
signal MOUSE_X_POS: std_logic_vector (11 downto 0);
signal MOUSE_Y_POS: std_logic_vector (11 downto 0);
signal score      : std_logic_vector (11 downto 0);
signal shots      : std_logic_vector (11 downto 0);

-- ===============================================  ARCH BEHAV =======================================

begin
   rst <= not rstn_i;

----------------------------------------------------------------------------------
-- 83MHz clock
----------------------------------------------------------------------------------

   Inst_clk_wiz_0: clk_wiz_0
   port map (
      clk_100MHz_i   => clk_i,
      clk_83MHz_o    => clk_83MHz
      );


----------------------------------------------------------------------------------
-- Mouse Controller
----------------------------------------------------------------------------------
   Inst_MouseCtl: MouseCtl
   PORT MAP
   (
      clk            => clk_83MHz,
      rst            => rst,
      xpos           => MOUSE_X_POS,
      ypos           => MOUSE_Y_POS,
      zpos           => open,
      left           => left_click,
      middle         => open,
      right          => right_click,
      new_event      => open,
      value          => x"000",
      setx           => '0',
      sety           => '0',
      setmax_x       => '0',
      setmax_y       => '0',
      ps2_clk        => ps2_clk,
      ps2_data       => ps2_data
   );

----------------------------------------------------------------------------------
-- 7 seg
----------------------------------------------------------------------------------

   Inst_sSeg: sSeg
   port map(
        clk     => clk_83MHz,
        numx    => shots,
        numy    => score,
        a       => a,
        b       => b,
        c       => c,
        d       => d,
        e       => e,
        f       => f,
        g       => g,
        an      => an   
    );

----------------------------------------------------------------------------------
-- Game
----------------------------------------------------------------------------------
 
   Inst_game: game
   port map(
        clk         => clk_83MHz,
        rst         => rst,
        left_click  => left_click,
        right_click => right_click,
        sw          => sw,
        col_sw      => col_sw,
        
        pointer_x    => MOUSE_X_POS,
        pointer_y    => MOUSE_Y_POS,
        
        hsync       => hsync,
        vsync       => vsync,
        pix_r       => pix_r,
        pix_g       => pix_g,
        pix_b       => pix_b,
        score       => score,
        shots       => shots
   );
 
 
 
end Behavioral;

