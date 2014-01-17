library verilog;
use verilog.vl_types.all;
entity MSS_CORE2 is
    port(
        CLKC            : in     vl_logic;
        FABINT          : in     vl_logic;
        MAC_CRSDV       : in     vl_logic;
        MAC_RXD         : in     vl_logic_vector(1 downto 0);
        MAC_RXER        : in     vl_logic;
        MAINXIN         : in     vl_logic;
        MSSHRDATA       : in     vl_logic_vector(31 downto 0);
        MSSHREADY       : in     vl_logic;
        MSSHRESP        : in     vl_logic;
        MSS_RESET_N     : in     vl_logic;
        UART_0_RXD      : in     vl_logic;
        FAB_CLK         : out    vl_logic;
        GLC             : out    vl_logic;
        M2F_GPO_0       : out    vl_logic;
        M2F_GPO_1       : out    vl_logic;
        M2F_RESET_N     : out    vl_logic;
        MAC_MDC         : out    vl_logic;
        MAC_TXD         : out    vl_logic_vector(1 downto 0);
        MAC_TXEN        : out    vl_logic;
        MSSHADDR        : out    vl_logic_vector(19 downto 0);
        MSSHLOCK        : out    vl_logic;
        MSSHSIZE        : out    vl_logic_vector(1 downto 0);
        MSSHTRANS       : out    vl_logic_vector(1 downto 0);
        MSSHWDATA       : out    vl_logic_vector(31 downto 0);
        MSSHWRITE       : out    vl_logic;
        UART_0_TXD      : out    vl_logic;
        MAC_MDIO        : inout  vl_logic
    );
end MSS_CORE2;
