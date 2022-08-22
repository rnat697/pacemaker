	component nios2_system is
		port (
			clk_clk                              : in    std_logic                     := 'X';             -- clk
			reset_reset_n                        : in    std_logic                     := 'X';             -- reset_n
			sdram_pll_sdram_clk_clk              : out   std_logic;                                        -- clk
			sdram_wire_addr                      : out   std_logic_vector(11 downto 0);                    -- addr
			sdram_wire_ba                        : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n                     : out   std_logic;                                        -- cas_n
			sdram_wire_cke                       : out   std_logic;                                        -- cke
			sdram_wire_cs_n                      : out   std_logic;                                        -- cs_n
			sdram_wire_dq                        : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm                       : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n                     : out   std_logic;                                        -- ras_n
			sdram_wire_we_n                      : out   std_logic;                                        -- we_n
			uart_external_connection_rxd         : in    std_logic                     := 'X';             -- rxd
			uart_external_connection_txd         : out   std_logic;                                        -- txd
			keys_external_connection_export      : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			led_red_external_connection_export   : out   std_logic_vector(17 downto 0);                    -- export
			led_green_external_connection_export : out   std_logic_vector(8 downto 0);                     -- export
			lcd_external_RS                      : out   std_logic;                                        -- RS
			lcd_external_RW                      : out   std_logic;                                        -- RW
			lcd_external_data                    : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- data
			lcd_external_E                       : out   std_logic;                                        -- E
			switches_external_connection_export  : in    std_logic_vector(17 downto 0) := (others => 'X')  -- export
		);
	end component nios2_system;

	u0 : component nios2_system
		port map (
			clk_clk                              => CONNECTED_TO_clk_clk,                              --                           clk.clk
			reset_reset_n                        => CONNECTED_TO_reset_reset_n,                        --                         reset.reset_n
			sdram_pll_sdram_clk_clk              => CONNECTED_TO_sdram_pll_sdram_clk_clk,              --           sdram_pll_sdram_clk.clk
			sdram_wire_addr                      => CONNECTED_TO_sdram_wire_addr,                      --                    sdram_wire.addr
			sdram_wire_ba                        => CONNECTED_TO_sdram_wire_ba,                        --                              .ba
			sdram_wire_cas_n                     => CONNECTED_TO_sdram_wire_cas_n,                     --                              .cas_n
			sdram_wire_cke                       => CONNECTED_TO_sdram_wire_cke,                       --                              .cke
			sdram_wire_cs_n                      => CONNECTED_TO_sdram_wire_cs_n,                      --                              .cs_n
			sdram_wire_dq                        => CONNECTED_TO_sdram_wire_dq,                        --                              .dq
			sdram_wire_dqm                       => CONNECTED_TO_sdram_wire_dqm,                       --                              .dqm
			sdram_wire_ras_n                     => CONNECTED_TO_sdram_wire_ras_n,                     --                              .ras_n
			sdram_wire_we_n                      => CONNECTED_TO_sdram_wire_we_n,                      --                              .we_n
			uart_external_connection_rxd         => CONNECTED_TO_uart_external_connection_rxd,         --      uart_external_connection.rxd
			uart_external_connection_txd         => CONNECTED_TO_uart_external_connection_txd,         --                              .txd
			keys_external_connection_export      => CONNECTED_TO_keys_external_connection_export,      --      keys_external_connection.export
			led_red_external_connection_export   => CONNECTED_TO_led_red_external_connection_export,   --   led_red_external_connection.export
			led_green_external_connection_export => CONNECTED_TO_led_green_external_connection_export, -- led_green_external_connection.export
			lcd_external_RS                      => CONNECTED_TO_lcd_external_RS,                      --                  lcd_external.RS
			lcd_external_RW                      => CONNECTED_TO_lcd_external_RW,                      --                              .RW
			lcd_external_data                    => CONNECTED_TO_lcd_external_data,                    --                              .data
			lcd_external_E                       => CONNECTED_TO_lcd_external_E,                       --                              .E
			switches_external_connection_export  => CONNECTED_TO_switches_external_connection_export   --  switches_external_connection.export
		);

