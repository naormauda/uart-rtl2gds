module uart_top (clk,
    rst_n,
    rx,
    rx_done,
    tx,
    tx_done,
    tx_start,
    dvsr,
    rx_data,
    tx_data);
 input clk;
 input rst_n;
 input rx;
 output rx_done;
 output tx;
 output tx_done;
 input tx_start;
 input [15:0] dvsr;
 output [7:0] rx_data;
 input [7:0] tx_data;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire \baud_gen_inst.rx_count_reg[0] ;
 wire \baud_gen_inst.rx_count_reg[10] ;
 wire \baud_gen_inst.rx_count_reg[11] ;
 wire \baud_gen_inst.rx_count_reg[12] ;
 wire \baud_gen_inst.rx_count_reg[13] ;
 wire \baud_gen_inst.rx_count_reg[14] ;
 wire \baud_gen_inst.rx_count_reg[15] ;
 wire \baud_gen_inst.rx_count_reg[1] ;
 wire \baud_gen_inst.rx_count_reg[2] ;
 wire \baud_gen_inst.rx_count_reg[3] ;
 wire \baud_gen_inst.rx_count_reg[4] ;
 wire \baud_gen_inst.rx_count_reg[5] ;
 wire \baud_gen_inst.rx_count_reg[6] ;
 wire \baud_gen_inst.rx_count_reg[7] ;
 wire \baud_gen_inst.rx_count_reg[8] ;
 wire \baud_gen_inst.rx_count_reg[9] ;
 wire \baud_gen_inst.rx_tick ;
 wire \baud_gen_inst.tx_count_reg[0] ;
 wire \baud_gen_inst.tx_count_reg[1] ;
 wire \baud_gen_inst.tx_count_reg[2] ;
 wire \baud_gen_inst.tx_count_reg[3] ;
 wire \baud_gen_inst.tx_tick ;
 wire \uart_rx_inst.n_reg[0] ;
 wire \uart_rx_inst.n_reg[1] ;
 wire \uart_rx_inst.n_reg[2] ;
 wire \uart_rx_inst.rx_sync_0 ;
 wire \uart_rx_inst.rx_sync_1 ;
 wire \uart_rx_inst.s_reg[0] ;
 wire \uart_rx_inst.s_reg[1] ;
 wire \uart_rx_inst.s_reg[2] ;
 wire \uart_rx_inst.s_reg[3] ;
 wire \uart_rx_inst.state_reg[0] ;
 wire \uart_rx_inst.state_reg[1] ;
 wire \uart_tx_inst.bit_count_reg[0] ;
 wire \uart_tx_inst.bit_count_reg[1] ;
 wire \uart_tx_inst.bit_count_reg[2] ;
 wire \uart_tx_inst.shift_reg[0] ;
 wire \uart_tx_inst.shift_reg[1] ;
 wire \uart_tx_inst.shift_reg[2] ;
 wire \uart_tx_inst.shift_reg[3] ;
 wire \uart_tx_inst.shift_reg[4] ;
 wire \uart_tx_inst.shift_reg[5] ;
 wire \uart_tx_inst.shift_reg[6] ;
 wire \uart_tx_inst.shift_reg[7] ;
 wire \uart_tx_inst.state_reg[0] ;
 wire \uart_tx_inst.state_reg[1] ;
 wire \uart_tx_inst.tx_next ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;

 sky130_fd_sc_hd__inv_2 _194_ (.A(\uart_tx_inst.bit_count_reg[1] ),
    .Y(_052_));
 sky130_fd_sc_hd__inv_2 _195_ (.A(net78),
    .Y(_053_));
 sky130_fd_sc_hd__inv_2 _196_ (.A(net77),
    .Y(_054_));
 sky130_fd_sc_hd__inv_2 _197_ (.A(\uart_rx_inst.state_reg[0] ),
    .Y(_055_));
 sky130_fd_sc_hd__inv_2 _198_ (.A(\uart_rx_inst.rx_sync_1 ),
    .Y(_056_));
 sky130_fd_sc_hd__inv_2 _199_ (.A(\baud_gen_inst.rx_count_reg[0] ),
    .Y(_057_));
 sky130_fd_sc_hd__inv_2 _200_ (.A(net8),
    .Y(_058_));
 sky130_fd_sc_hd__inv_2 _201_ (.A(\baud_gen_inst.rx_count_reg[1] ),
    .Y(_059_));
 sky130_fd_sc_hd__inv_2 _202_ (.A(net9),
    .Y(_060_));
 sky130_fd_sc_hd__inv_2 _203_ (.A(\baud_gen_inst.rx_count_reg[2] ),
    .Y(_061_));
 sky130_fd_sc_hd__inv_2 _204_ (.A(\baud_gen_inst.rx_count_reg[6] ),
    .Y(_062_));
 sky130_fd_sc_hd__inv_2 _205_ (.A(net14),
    .Y(_063_));
 sky130_fd_sc_hd__inv_2 _206_ (.A(net2),
    .Y(_064_));
 sky130_fd_sc_hd__inv_2 _207_ (.A(\baud_gen_inst.rx_count_reg[10] ),
    .Y(_065_));
 sky130_fd_sc_hd__inv_2 _208_ (.A(\baud_gen_inst.rx_count_reg[12] ),
    .Y(_066_));
 sky130_fd_sc_hd__inv_2 _209_ (.A(net6),
    .Y(_067_));
 sky130_fd_sc_hd__inv_2 _210_ (.A(\baud_gen_inst.rx_count_reg[15] ),
    .Y(_068_));
 sky130_fd_sc_hd__inv_2 _211_ (.A(net32),
    .Y(_069_));
 sky130_fd_sc_hd__nand2b_1 _212_ (.A_N(\baud_gen_inst.rx_count_reg[3] ),
    .B(net10),
    .Y(_070_));
 sky130_fd_sc_hd__xor2_1 _213_ (.A(net3),
    .B(\baud_gen_inst.rx_count_reg[11] ),
    .X(_071_));
 sky130_fd_sc_hd__xor2_1 _214_ (.A(net11),
    .B(\baud_gen_inst.rx_count_reg[4] ),
    .X(_072_));
 sky130_fd_sc_hd__or2_1 _215_ (.A(net12),
    .B(\baud_gen_inst.rx_count_reg[5] ),
    .X(_073_));
 sky130_fd_sc_hd__nand2_1 _216_ (.A(net12),
    .B(\baud_gen_inst.rx_count_reg[5] ),
    .Y(_074_));
 sky130_fd_sc_hd__and2b_1 _217_ (.A_N(net1),
    .B(\baud_gen_inst.rx_count_reg[0] ),
    .X(_075_));
 sky130_fd_sc_hd__and2b_1 _218_ (.A_N(net10),
    .B(\baud_gen_inst.rx_count_reg[3] ),
    .X(_076_));
 sky130_fd_sc_hd__a221o_1 _219_ (.A1(_063_),
    .A2(\baud_gen_inst.rx_count_reg[7] ),
    .B1(_064_),
    .B2(\baud_gen_inst.rx_count_reg[10] ),
    .C1(_072_),
    .X(_077_));
 sky130_fd_sc_hd__xor2_1 _220_ (.A(net16),
    .B(\baud_gen_inst.rx_count_reg[9] ),
    .X(_078_));
 sky130_fd_sc_hd__a221o_1 _221_ (.A1(net8),
    .A2(_059_),
    .B1(_067_),
    .B2(\baud_gen_inst.rx_count_reg[14] ),
    .C1(_078_),
    .X(_079_));
 sky130_fd_sc_hd__a221o_1 _222_ (.A1(_060_),
    .A2(\baud_gen_inst.rx_count_reg[2] ),
    .B1(net7),
    .B2(_068_),
    .C1(_071_),
    .X(_080_));
 sky130_fd_sc_hd__or2_1 _223_ (.A(net15),
    .B(\baud_gen_inst.rx_count_reg[8] ),
    .X(_081_));
 sky130_fd_sc_hd__nand2_1 _224_ (.A(net15),
    .B(\baud_gen_inst.rx_count_reg[8] ),
    .Y(_082_));
 sky130_fd_sc_hd__nand2_1 _225_ (.A(net5),
    .B(\baud_gen_inst.rx_count_reg[13] ),
    .Y(_083_));
 sky130_fd_sc_hd__or2_1 _226_ (.A(net5),
    .B(\baud_gen_inst.rx_count_reg[13] ),
    .X(_084_));
 sky130_fd_sc_hd__a22o_1 _227_ (.A1(_081_),
    .A2(_082_),
    .B1(_083_),
    .B2(_084_),
    .X(_085_));
 sky130_fd_sc_hd__or4_1 _228_ (.A(_077_),
    .B(_079_),
    .C(_080_),
    .D(_085_),
    .X(_086_));
 sky130_fd_sc_hd__a2bb2o_1 _229_ (.A1_N(net4),
    .A2_N(_066_),
    .B1(net13),
    .B2(_062_),
    .X(_087_));
 sky130_fd_sc_hd__a221o_1 _230_ (.A1(net1),
    .A2(_057_),
    .B1(_073_),
    .B2(_074_),
    .C1(_087_),
    .X(_088_));
 sky130_fd_sc_hd__a221o_1 _231_ (.A1(net9),
    .A2(_061_),
    .B1(net4),
    .B2(_066_),
    .C1(_075_),
    .X(_089_));
 sky130_fd_sc_hd__o22ai_1 _232_ (.A1(_063_),
    .A2(\baud_gen_inst.rx_count_reg[7] ),
    .B1(net7),
    .B2(_068_),
    .Y(_090_));
 sky130_fd_sc_hd__o221ai_1 _233_ (.A1(net13),
    .A2(_062_),
    .B1(_067_),
    .B2(\baud_gen_inst.rx_count_reg[14] ),
    .C1(_070_),
    .Y(_091_));
 sky130_fd_sc_hd__a221o_1 _234_ (.A1(_058_),
    .A2(\baud_gen_inst.rx_count_reg[1] ),
    .B1(net2),
    .B2(_065_),
    .C1(_076_),
    .X(_092_));
 sky130_fd_sc_hd__or4_1 _235_ (.A(_089_),
    .B(_090_),
    .C(_091_),
    .D(_092_),
    .X(_093_));
 sky130_fd_sc_hd__or3_1 _236_ (.A(_086_),
    .B(_088_),
    .C(_093_),
    .X(_094_));
 sky130_fd_sc_hd__inv_2 _237_ (.A(net39),
    .Y(_016_));
 sky130_fd_sc_hd__nor2_1 _238_ (.A(\uart_tx_inst.state_reg[0] ),
    .B(\uart_tx_inst.state_reg[1] ),
    .Y(_095_));
 sky130_fd_sc_hd__nand2_1 _239_ (.A(\uart_tx_inst.state_reg[0] ),
    .B(\uart_tx_inst.state_reg[1] ),
    .Y(_096_));
 sky130_fd_sc_hd__o21a_1 _240_ (.A1(\uart_tx_inst.state_reg[0] ),
    .A2(\uart_tx_inst.shift_reg[0] ),
    .B1(\uart_tx_inst.state_reg[1] ),
    .X(_097_));
 sky130_fd_sc_hd__or2_1 _241_ (.A(_095_),
    .B(_097_),
    .X(\uart_tx_inst.tx_next ));
 sky130_fd_sc_hd__and2b_1 _242_ (.A_N(\baud_gen_inst.rx_count_reg[0] ),
    .B(net40),
    .X(_000_));
 sky130_fd_sc_hd__nand2_1 _243_ (.A(\baud_gen_inst.rx_count_reg[0] ),
    .B(\baud_gen_inst.rx_count_reg[1] ),
    .Y(_098_));
 sky130_fd_sc_hd__or2_1 _244_ (.A(\baud_gen_inst.rx_count_reg[0] ),
    .B(\baud_gen_inst.rx_count_reg[1] ),
    .X(_099_));
 sky130_fd_sc_hd__and3_1 _245_ (.A(net40),
    .B(_098_),
    .C(_099_),
    .X(_007_));
 sky130_fd_sc_hd__or2_1 _246_ (.A(_061_),
    .B(_098_),
    .X(_100_));
 sky130_fd_sc_hd__nand2_1 _247_ (.A(_061_),
    .B(_098_),
    .Y(_101_));
 sky130_fd_sc_hd__and3_1 _248_ (.A(net40),
    .B(_100_),
    .C(_101_),
    .X(_008_));
 sky130_fd_sc_hd__and4_2 _249_ (.A(\baud_gen_inst.rx_count_reg[0] ),
    .B(\baud_gen_inst.rx_count_reg[1] ),
    .C(\baud_gen_inst.rx_count_reg[2] ),
    .D(\baud_gen_inst.rx_count_reg[3] ),
    .X(_102_));
 sky130_fd_sc_hd__inv_2 _250_ (.A(_102_),
    .Y(_103_));
 sky130_fd_sc_hd__a31o_1 _251_ (.A1(\baud_gen_inst.rx_count_reg[0] ),
    .A2(\baud_gen_inst.rx_count_reg[1] ),
    .A3(\baud_gen_inst.rx_count_reg[2] ),
    .B1(\baud_gen_inst.rx_count_reg[3] ),
    .X(_104_));
 sky130_fd_sc_hd__and3_1 _252_ (.A(net40),
    .B(_103_),
    .C(_104_),
    .X(_009_));
 sky130_fd_sc_hd__nand2_1 _253_ (.A(\baud_gen_inst.rx_count_reg[4] ),
    .B(_102_),
    .Y(_105_));
 sky130_fd_sc_hd__or2_1 _254_ (.A(\baud_gen_inst.rx_count_reg[4] ),
    .B(_102_),
    .X(_106_));
 sky130_fd_sc_hd__and3_1 _255_ (.A(net40),
    .B(_105_),
    .C(_106_),
    .X(_010_));
 sky130_fd_sc_hd__and2_1 _256_ (.A(\baud_gen_inst.rx_count_reg[4] ),
    .B(\baud_gen_inst.rx_count_reg[5] ),
    .X(_107_));
 sky130_fd_sc_hd__nand2_1 _257_ (.A(_102_),
    .B(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__a21o_1 _258_ (.A1(\baud_gen_inst.rx_count_reg[4] ),
    .A2(_102_),
    .B1(\baud_gen_inst.rx_count_reg[5] ),
    .X(_109_));
 sky130_fd_sc_hd__and3_1 _259_ (.A(net40),
    .B(_108_),
    .C(_109_),
    .X(_011_));
 sky130_fd_sc_hd__nor2_1 _260_ (.A(_062_),
    .B(_108_),
    .Y(_110_));
 sky130_fd_sc_hd__inv_2 _261_ (.A(_110_),
    .Y(_111_));
 sky130_fd_sc_hd__nand2_1 _262_ (.A(_062_),
    .B(_108_),
    .Y(_112_));
 sky130_fd_sc_hd__and3_1 _263_ (.A(net40),
    .B(_111_),
    .C(_112_),
    .X(_012_));
 sky130_fd_sc_hd__and4_2 _264_ (.A(\baud_gen_inst.rx_count_reg[6] ),
    .B(\baud_gen_inst.rx_count_reg[7] ),
    .C(_102_),
    .D(_107_),
    .X(_113_));
 sky130_fd_sc_hd__inv_2 _265_ (.A(_113_),
    .Y(_114_));
 sky130_fd_sc_hd__o211a_1 _266_ (.A1(\baud_gen_inst.rx_count_reg[7] ),
    .A2(_110_),
    .B1(_114_),
    .C1(net39),
    .X(_013_));
 sky130_fd_sc_hd__or2_1 _267_ (.A(\baud_gen_inst.rx_count_reg[8] ),
    .B(_113_),
    .X(_115_));
 sky130_fd_sc_hd__and2_1 _268_ (.A(\baud_gen_inst.rx_count_reg[8] ),
    .B(_113_),
    .X(_116_));
 sky130_fd_sc_hd__inv_2 _269_ (.A(_116_),
    .Y(_117_));
 sky130_fd_sc_hd__and3_1 _270_ (.A(net39),
    .B(_115_),
    .C(_117_),
    .X(_014_));
 sky130_fd_sc_hd__or2_1 _271_ (.A(\baud_gen_inst.rx_count_reg[9] ),
    .B(_116_),
    .X(_118_));
 sky130_fd_sc_hd__and3_1 _272_ (.A(\baud_gen_inst.rx_count_reg[8] ),
    .B(\baud_gen_inst.rx_count_reg[9] ),
    .C(_113_),
    .X(_119_));
 sky130_fd_sc_hd__inv_2 _273_ (.A(_119_),
    .Y(_120_));
 sky130_fd_sc_hd__and3_1 _274_ (.A(net39),
    .B(_118_),
    .C(_120_),
    .X(_015_));
 sky130_fd_sc_hd__or2_1 _275_ (.A(\baud_gen_inst.rx_count_reg[10] ),
    .B(_119_),
    .X(_121_));
 sky130_fd_sc_hd__and3_1 _276_ (.A(\baud_gen_inst.rx_count_reg[8] ),
    .B(\baud_gen_inst.rx_count_reg[9] ),
    .C(\baud_gen_inst.rx_count_reg[10] ),
    .X(_122_));
 sky130_fd_sc_hd__o211a_1 _277_ (.A1(_065_),
    .A2(_120_),
    .B1(_121_),
    .C1(net39),
    .X(_001_));
 sky130_fd_sc_hd__a21o_1 _278_ (.A1(_113_),
    .A2(_122_),
    .B1(\baud_gen_inst.rx_count_reg[11] ),
    .X(_123_));
 sky130_fd_sc_hd__and3_1 _279_ (.A(\baud_gen_inst.rx_count_reg[11] ),
    .B(_113_),
    .C(_122_),
    .X(_124_));
 sky130_fd_sc_hd__inv_2 _280_ (.A(_124_),
    .Y(_125_));
 sky130_fd_sc_hd__and3_1 _281_ (.A(net39),
    .B(_123_),
    .C(_125_),
    .X(_002_));
 sky130_fd_sc_hd__or2_1 _282_ (.A(\baud_gen_inst.rx_count_reg[12] ),
    .B(_124_),
    .X(_126_));
 sky130_fd_sc_hd__and2_1 _283_ (.A(\baud_gen_inst.rx_count_reg[12] ),
    .B(_124_),
    .X(_127_));
 sky130_fd_sc_hd__o211a_1 _284_ (.A1(_066_),
    .A2(_125_),
    .B1(_126_),
    .C1(net39),
    .X(_003_));
 sky130_fd_sc_hd__nand2_1 _285_ (.A(\baud_gen_inst.rx_count_reg[12] ),
    .B(\baud_gen_inst.rx_count_reg[13] ),
    .Y(_128_));
 sky130_fd_sc_hd__o221a_1 _286_ (.A1(\baud_gen_inst.rx_count_reg[13] ),
    .A2(_127_),
    .B1(_128_),
    .B2(_125_),
    .C1(net39),
    .X(_004_));
 sky130_fd_sc_hd__a31o_1 _287_ (.A1(\baud_gen_inst.rx_count_reg[12] ),
    .A2(\baud_gen_inst.rx_count_reg[13] ),
    .A3(_124_),
    .B1(\baud_gen_inst.rx_count_reg[14] ),
    .X(_129_));
 sky130_fd_sc_hd__nand4_1 _288_ (.A(\baud_gen_inst.rx_count_reg[12] ),
    .B(\baud_gen_inst.rx_count_reg[13] ),
    .C(\baud_gen_inst.rx_count_reg[14] ),
    .D(_124_),
    .Y(_130_));
 sky130_fd_sc_hd__and3_1 _289_ (.A(net39),
    .B(_129_),
    .C(_130_),
    .X(_005_));
 sky130_fd_sc_hd__a41o_1 _290_ (.A1(\baud_gen_inst.rx_count_reg[12] ),
    .A2(\baud_gen_inst.rx_count_reg[13] ),
    .A3(\baud_gen_inst.rx_count_reg[14] ),
    .A4(_124_),
    .B1(\baud_gen_inst.rx_count_reg[15] ),
    .X(_131_));
 sky130_fd_sc_hd__o211a_1 _291_ (.A1(_068_),
    .A2(_130_),
    .B1(_131_),
    .C1(net39),
    .X(_006_));
 sky130_fd_sc_hd__and4b_1 _292_ (.A_N(\uart_rx_inst.s_reg[3] ),
    .B(\uart_rx_inst.s_reg[2] ),
    .C(\uart_rx_inst.s_reg[1] ),
    .D(\uart_rx_inst.s_reg[0] ),
    .X(_132_));
 sky130_fd_sc_hd__nand3_1 _293_ (.A(net41),
    .B(\uart_rx_inst.state_reg[0] ),
    .C(\uart_rx_inst.state_reg[1] ),
    .Y(_133_));
 sky130_fd_sc_hd__and4_1 _294_ (.A(net41),
    .B(\uart_rx_inst.state_reg[0] ),
    .C(\uart_rx_inst.state_reg[1] ),
    .D(_132_),
    .X(net36));
 sky130_fd_sc_hd__and3_1 _295_ (.A(net41),
    .B(\baud_gen_inst.tx_count_reg[1] ),
    .C(\baud_gen_inst.tx_count_reg[0] ),
    .X(_134_));
 sky130_fd_sc_hd__and3_1 _296_ (.A(net76),
    .B(net65),
    .C(_134_),
    .X(_017_));
 sky130_fd_sc_hd__and3_1 _297_ (.A(\uart_tx_inst.state_reg[0] ),
    .B(\uart_tx_inst.state_reg[1] ),
    .C(\baud_gen_inst.tx_tick ),
    .X(net38));
 sky130_fd_sc_hd__nand2b_4 _298_ (.A_N(\uart_tx_inst.state_reg[0] ),
    .B(\uart_tx_inst.state_reg[1] ),
    .Y(_135_));
 sky130_fd_sc_hd__nand3b_1 _299_ (.A_N(\uart_tx_inst.state_reg[0] ),
    .B(\uart_tx_inst.state_reg[1] ),
    .C(\baud_gen_inst.tx_tick ),
    .Y(_136_));
 sky130_fd_sc_hd__a31oi_1 _300_ (.A1(\uart_tx_inst.bit_count_reg[1] ),
    .A2(\uart_tx_inst.bit_count_reg[0] ),
    .A3(\uart_tx_inst.bit_count_reg[2] ),
    .B1(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__a21o_2 _301_ (.A1(net27),
    .A2(_095_),
    .B1(_137_),
    .X(_138_));
 sky130_fd_sc_hd__inv_2 _302_ (.A(_138_),
    .Y(_139_));
 sky130_fd_sc_hd__mux2_1 _303_ (.A0(\uart_tx_inst.shift_reg[1] ),
    .A1(net19),
    .S(_135_),
    .X(_140_));
 sky130_fd_sc_hd__mux2_1 _304_ (.A0(net72),
    .A1(_140_),
    .S(_138_),
    .X(_018_));
 sky130_fd_sc_hd__mux2_1 _305_ (.A0(\uart_tx_inst.shift_reg[2] ),
    .A1(net20),
    .S(_135_),
    .X(_141_));
 sky130_fd_sc_hd__mux2_1 _306_ (.A0(net55),
    .A1(_141_),
    .S(_138_),
    .X(_019_));
 sky130_fd_sc_hd__mux2_1 _307_ (.A0(\uart_tx_inst.shift_reg[3] ),
    .A1(net21),
    .S(_135_),
    .X(_142_));
 sky130_fd_sc_hd__mux2_1 _308_ (.A0(net57),
    .A1(_142_),
    .S(_138_),
    .X(_020_));
 sky130_fd_sc_hd__mux2_1 _309_ (.A0(\uart_tx_inst.shift_reg[4] ),
    .A1(net22),
    .S(_135_),
    .X(_143_));
 sky130_fd_sc_hd__mux2_1 _310_ (.A0(net61),
    .A1(_143_),
    .S(_138_),
    .X(_021_));
 sky130_fd_sc_hd__mux2_1 _311_ (.A0(\uart_tx_inst.shift_reg[5] ),
    .A1(net23),
    .S(_135_),
    .X(_144_));
 sky130_fd_sc_hd__mux2_1 _312_ (.A0(net56),
    .A1(_144_),
    .S(_138_),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _313_ (.A0(\uart_tx_inst.shift_reg[6] ),
    .A1(net24),
    .S(_135_),
    .X(_145_));
 sky130_fd_sc_hd__mux2_1 _314_ (.A0(net60),
    .A1(_145_),
    .S(_138_),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _315_ (.A0(\uart_tx_inst.shift_reg[7] ),
    .A1(net25),
    .S(_135_),
    .X(_146_));
 sky130_fd_sc_hd__mux2_1 _316_ (.A0(net58),
    .A1(_146_),
    .S(_138_),
    .X(_024_));
 sky130_fd_sc_hd__a32o_1 _317_ (.A1(net27),
    .A2(net26),
    .A3(_095_),
    .B1(_139_),
    .B2(net54),
    .X(_025_));
 sky130_fd_sc_hd__nand2b_1 _318_ (.A_N(\uart_rx_inst.state_reg[1] ),
    .B(\uart_rx_inst.state_reg[0] ),
    .Y(_147_));
 sky130_fd_sc_hd__a21o_1 _319_ (.A1(net41),
    .A2(_132_),
    .B1(_147_),
    .X(_148_));
 sky130_fd_sc_hd__and4_1 _320_ (.A(\uart_rx_inst.s_reg[1] ),
    .B(\uart_rx_inst.s_reg[0] ),
    .C(\uart_rx_inst.s_reg[3] ),
    .D(\uart_rx_inst.s_reg[2] ),
    .X(_149_));
 sky130_fd_sc_hd__nand2_1 _321_ (.A(net41),
    .B(_149_),
    .Y(_150_));
 sky130_fd_sc_hd__and2_1 _322_ (.A(_055_),
    .B(\uart_rx_inst.state_reg[1] ),
    .X(_151_));
 sky130_fd_sc_hd__nand2b_2 _323_ (.A_N(\uart_rx_inst.state_reg[0] ),
    .B(\uart_rx_inst.state_reg[1] ),
    .Y(_152_));
 sky130_fd_sc_hd__a21o_1 _324_ (.A1(net41),
    .A2(_149_),
    .B1(_152_),
    .X(_153_));
 sky130_fd_sc_hd__nand2_1 _325_ (.A(net43),
    .B(net44),
    .Y(_154_));
 sky130_fd_sc_hd__nand4_1 _326_ (.A(net42),
    .B(net43),
    .C(net44),
    .D(_149_),
    .Y(_155_));
 sky130_fd_sc_hd__nand2_1 _327_ (.A(_147_),
    .B(_152_),
    .Y(_156_));
 sky130_fd_sc_hd__and4_1 _328_ (.A(_148_),
    .B(_153_),
    .C(_155_),
    .D(_156_),
    .X(_157_));
 sky130_fd_sc_hd__nor2_1 _329_ (.A(\uart_rx_inst.state_reg[0] ),
    .B(net44),
    .Y(_158_));
 sky130_fd_sc_hd__mux2_1 _330_ (.A0(net44),
    .A1(_158_),
    .S(_157_),
    .X(_026_));
 sky130_fd_sc_hd__nor2_1 _331_ (.A(net43),
    .B(net44),
    .Y(_159_));
 sky130_fd_sc_hd__and3b_1 _332_ (.A_N(_159_),
    .B(_151_),
    .C(_154_),
    .X(_160_));
 sky130_fd_sc_hd__mux2_1 _333_ (.A0(net43),
    .A1(_160_),
    .S(_157_),
    .X(_027_));
 sky130_fd_sc_hd__and3_1 _334_ (.A(net43),
    .B(net44),
    .C(_157_),
    .X(_161_));
 sky130_fd_sc_hd__a31o_1 _335_ (.A1(net42),
    .A2(net43),
    .A3(net44),
    .B1(_152_),
    .X(_162_));
 sky130_fd_sc_hd__o2bb2a_1 _336_ (.A1_N(_157_),
    .A2_N(_162_),
    .B1(_161_),
    .B2(net42),
    .X(_028_));
 sky130_fd_sc_hd__o21a_1 _337_ (.A1(\uart_rx_inst.state_reg[0] ),
    .A2(\uart_rx_inst.state_reg[1] ),
    .B1(net41),
    .X(_163_));
 sky130_fd_sc_hd__and2_1 _338_ (.A(\uart_rx_inst.s_reg[0] ),
    .B(_163_),
    .X(_164_));
 sky130_fd_sc_hd__or3_1 _339_ (.A(\uart_rx_inst.state_reg[0] ),
    .B(\uart_rx_inst.state_reg[1] ),
    .C(\uart_rx_inst.rx_sync_1 ),
    .X(_165_));
 sky130_fd_sc_hd__a21oi_1 _340_ (.A1(\uart_rx_inst.s_reg[0] ),
    .A2(_165_),
    .B1(_163_),
    .Y(_166_));
 sky130_fd_sc_hd__nor2_1 _341_ (.A(_164_),
    .B(_166_),
    .Y(_029_));
 sky130_fd_sc_hd__and3_1 _342_ (.A(\uart_rx_inst.s_reg[1] ),
    .B(\uart_rx_inst.s_reg[0] ),
    .C(_163_),
    .X(_167_));
 sky130_fd_sc_hd__o21ai_1 _343_ (.A1(net79),
    .A2(_164_),
    .B1(_165_),
    .Y(_168_));
 sky130_fd_sc_hd__nor2_1 _344_ (.A(_167_),
    .B(_168_),
    .Y(_030_));
 sky130_fd_sc_hd__or2_1 _345_ (.A(\uart_rx_inst.s_reg[2] ),
    .B(_167_),
    .X(_169_));
 sky130_fd_sc_hd__nand2_1 _346_ (.A(\uart_rx_inst.s_reg[2] ),
    .B(_167_),
    .Y(_170_));
 sky130_fd_sc_hd__and3_1 _347_ (.A(_165_),
    .B(_169_),
    .C(_170_),
    .X(_031_));
 sky130_fd_sc_hd__and3_1 _348_ (.A(net41),
    .B(_132_),
    .C(_151_),
    .X(_171_));
 sky130_fd_sc_hd__a31o_1 _349_ (.A1(net75),
    .A2(_165_),
    .A3(_170_),
    .B1(_171_),
    .X(_032_));
 sky130_fd_sc_hd__o22a_1 _350_ (.A1(net41),
    .A2(_055_),
    .B1(_132_),
    .B2(_133_),
    .X(_172_));
 sky130_fd_sc_hd__o311a_1 _351_ (.A1(\uart_rx_inst.state_reg[0] ),
    .A2(\uart_rx_inst.state_reg[1] ),
    .A3(_056_),
    .B1(_162_),
    .C1(_172_),
    .X(_173_));
 sky130_fd_sc_hd__and3_1 _352_ (.A(_148_),
    .B(_153_),
    .C(_173_),
    .X(_174_));
 sky130_fd_sc_hd__xnor2_1 _353_ (.A(_055_),
    .B(_174_),
    .Y(_033_));
 sky130_fd_sc_hd__mux2_1 _354_ (.A0(\uart_rx_inst.state_reg[1] ),
    .A1(_156_),
    .S(_174_),
    .X(_034_));
 sky130_fd_sc_hd__xor2_1 _355_ (.A(net41),
    .B(net64),
    .X(_035_));
 sky130_fd_sc_hd__a21oi_1 _356_ (.A1(\baud_gen_inst.rx_tick ),
    .A2(\baud_gen_inst.tx_count_reg[0] ),
    .B1(net69),
    .Y(_175_));
 sky130_fd_sc_hd__nor2_1 _357_ (.A(_134_),
    .B(net70),
    .Y(_036_));
 sky130_fd_sc_hd__xor2_1 _358_ (.A(net73),
    .B(_134_),
    .X(_037_));
 sky130_fd_sc_hd__a21oi_1 _359_ (.A1(\baud_gen_inst.tx_count_reg[2] ),
    .A2(_134_),
    .B1(net65),
    .Y(_176_));
 sky130_fd_sc_hd__nor2_1 _360_ (.A(_017_),
    .B(net66),
    .Y(_038_));
 sky130_fd_sc_hd__o21a_1 _361_ (.A1(\uart_tx_inst.state_reg[0] ),
    .A2(\uart_tx_inst.state_reg[1] ),
    .B1(\baud_gen_inst.tx_tick ),
    .X(_177_));
 sky130_fd_sc_hd__a21oi_1 _362_ (.A1(net27),
    .A2(_095_),
    .B1(_177_),
    .Y(_178_));
 sky130_fd_sc_hd__and2b_1 _363_ (.A_N(_178_),
    .B(\uart_tx_inst.state_reg[0] ),
    .X(_179_));
 sky130_fd_sc_hd__o21ba_1 _364_ (.A1(_137_),
    .A2(_178_),
    .B1_N(\uart_tx_inst.state_reg[0] ),
    .X(_180_));
 sky130_fd_sc_hd__nor2_1 _365_ (.A(_179_),
    .B(_180_),
    .Y(_039_));
 sky130_fd_sc_hd__o21ba_1 _366_ (.A1(\uart_tx_inst.state_reg[1] ),
    .A2(_179_),
    .B1_N(net38),
    .X(_040_));
 sky130_fd_sc_hd__nor2_2 _367_ (.A(_150_),
    .B(_152_),
    .Y(_181_));
 sky130_fd_sc_hd__or4b_1 _368_ (.A(net42),
    .B(_150_),
    .C(_152_),
    .D_N(_159_),
    .X(_182_));
 sky130_fd_sc_hd__mux2_1 _369_ (.A0(\uart_rx_inst.rx_sync_1 ),
    .A1(net71),
    .S(_182_),
    .X(_041_));
 sky130_fd_sc_hd__or4bb_1 _370_ (.A(net42),
    .B(net43),
    .C_N(net44),
    .D_N(_181_),
    .X(_183_));
 sky130_fd_sc_hd__mux2_1 _371_ (.A0(\uart_rx_inst.rx_sync_1 ),
    .A1(net74),
    .S(_183_),
    .X(_042_));
 sky130_fd_sc_hd__or4bb_1 _372_ (.A(net42),
    .B(\uart_rx_inst.n_reg[0] ),
    .C_N(_181_),
    .D_N(net43),
    .X(_184_));
 sky130_fd_sc_hd__mux2_1 _373_ (.A0(\uart_rx_inst.rx_sync_1 ),
    .A1(net67),
    .S(_184_),
    .X(_043_));
 sky130_fd_sc_hd__and4b_1 _374_ (.A_N(net42),
    .B(net43),
    .C(net44),
    .D(_181_),
    .X(_185_));
 sky130_fd_sc_hd__mux2_1 _375_ (.A0(net68),
    .A1(\uart_rx_inst.rx_sync_1 ),
    .S(_185_),
    .X(_044_));
 sky130_fd_sc_hd__a31oi_1 _376_ (.A1(net42),
    .A2(_159_),
    .A3(_181_),
    .B1(_069_),
    .Y(_186_));
 sky130_fd_sc_hd__a41o_1 _377_ (.A1(net42),
    .A2(\uart_rx_inst.rx_sync_1 ),
    .A3(_159_),
    .A4(_181_),
    .B1(_186_),
    .X(_045_));
 sky130_fd_sc_hd__and4b_1 _378_ (.A_N(\uart_rx_inst.n_reg[1] ),
    .B(\uart_rx_inst.n_reg[0] ),
    .C(_181_),
    .D(\uart_rx_inst.n_reg[2] ),
    .X(_187_));
 sky130_fd_sc_hd__mux2_1 _379_ (.A0(net62),
    .A1(\uart_rx_inst.rx_sync_1 ),
    .S(_187_),
    .X(_046_));
 sky130_fd_sc_hd__and4b_1 _380_ (.A_N(\uart_rx_inst.n_reg[0] ),
    .B(_181_),
    .C(net42),
    .D(net43),
    .X(_188_));
 sky130_fd_sc_hd__mux2_1 _381_ (.A0(net63),
    .A1(\uart_rx_inst.rx_sync_1 ),
    .S(_188_),
    .X(_047_));
 sky130_fd_sc_hd__and4_1 _382_ (.A(\uart_rx_inst.n_reg[2] ),
    .B(\uart_rx_inst.n_reg[1] ),
    .C(net44),
    .D(_181_),
    .X(_189_));
 sky130_fd_sc_hd__mux2_1 _383_ (.A0(net59),
    .A1(\uart_rx_inst.rx_sync_1 ),
    .S(_189_),
    .X(_048_));
 sky130_fd_sc_hd__and3_1 _384_ (.A(\uart_tx_inst.bit_count_reg[0] ),
    .B(_096_),
    .C(_177_),
    .X(_190_));
 sky130_fd_sc_hd__o31a_1 _385_ (.A1(_052_),
    .A2(_054_),
    .A3(_136_),
    .B1(_190_),
    .X(_191_));
 sky130_fd_sc_hd__a21oi_1 _386_ (.A1(_053_),
    .A2(_136_),
    .B1(_191_),
    .Y(_049_));
 sky130_fd_sc_hd__or3b_1 _387_ (.A(\uart_tx_inst.state_reg[1] ),
    .B(_178_),
    .C_N(\uart_tx_inst.state_reg[0] ),
    .X(_192_));
 sky130_fd_sc_hd__nand2_1 _388_ (.A(\uart_tx_inst.bit_count_reg[1] ),
    .B(_191_),
    .Y(_193_));
 sky130_fd_sc_hd__o211a_1 _389_ (.A1(\uart_tx_inst.bit_count_reg[1] ),
    .A2(_190_),
    .B1(_192_),
    .C1(_193_),
    .X(_050_));
 sky130_fd_sc_hd__a21boi_1 _390_ (.A1(_054_),
    .A2(_193_),
    .B1_N(_192_),
    .Y(_051_));
 sky130_fd_sc_hd__dfrtp_1 _391_ (.CLK(clknet_2_3__leaf_clk),
    .D(_018_),
    .RESET_B(net50),
    .Q(\uart_tx_inst.shift_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _392_ (.CLK(clknet_2_3__leaf_clk),
    .D(_019_),
    .RESET_B(net50),
    .Q(\uart_tx_inst.shift_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _393_ (.CLK(clknet_2_1__leaf_clk),
    .D(_020_),
    .RESET_B(net46),
    .Q(\uart_tx_inst.shift_reg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _394_ (.CLK(clknet_2_1__leaf_clk),
    .D(_021_),
    .RESET_B(net46),
    .Q(\uart_tx_inst.shift_reg[3] ));
 sky130_fd_sc_hd__dfrtp_1 _395_ (.CLK(clknet_2_1__leaf_clk),
    .D(_022_),
    .RESET_B(net47),
    .Q(\uart_tx_inst.shift_reg[4] ));
 sky130_fd_sc_hd__dfrtp_1 _396_ (.CLK(clknet_2_3__leaf_clk),
    .D(_023_),
    .RESET_B(net50),
    .Q(\uart_tx_inst.shift_reg[5] ));
 sky130_fd_sc_hd__dfrtp_1 _397_ (.CLK(clknet_2_3__leaf_clk),
    .D(_024_),
    .RESET_B(net50),
    .Q(\uart_tx_inst.shift_reg[6] ));
 sky130_fd_sc_hd__dfrtp_1 _398_ (.CLK(clknet_2_3__leaf_clk),
    .D(_025_),
    .RESET_B(net50),
    .Q(\uart_tx_inst.shift_reg[7] ));
 sky130_fd_sc_hd__dfrtp_1 _399_ (.CLK(clknet_2_1__leaf_clk),
    .D(_026_),
    .RESET_B(net47),
    .Q(\uart_rx_inst.n_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _400_ (.CLK(clknet_2_1__leaf_clk),
    .D(_027_),
    .RESET_B(net46),
    .Q(\uart_rx_inst.n_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _401_ (.CLK(clknet_2_1__leaf_clk),
    .D(_028_),
    .RESET_B(net46),
    .Q(\uart_rx_inst.n_reg[2] ));
 sky130_fd_sc_hd__dfstp_1 _402_ (.CLK(clknet_2_1__leaf_clk),
    .D(net18),
    .SET_B(net47),
    .Q(\uart_rx_inst.rx_sync_0 ));
 sky130_fd_sc_hd__dfrtp_1 _403_ (.CLK(clknet_2_0__leaf_clk),
    .D(_029_),
    .RESET_B(net45),
    .Q(\uart_rx_inst.s_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _404_ (.CLK(clknet_2_0__leaf_clk),
    .D(_030_),
    .RESET_B(net45),
    .Q(\uart_rx_inst.s_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _405_ (.CLK(clknet_2_0__leaf_clk),
    .D(_031_),
    .RESET_B(net45),
    .Q(\uart_rx_inst.s_reg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _406_ (.CLK(clknet_2_0__leaf_clk),
    .D(_032_),
    .RESET_B(net45),
    .Q(\uart_rx_inst.s_reg[3] ));
 sky130_fd_sc_hd__dfrtp_4 _407_ (.CLK(clknet_2_1__leaf_clk),
    .D(_033_),
    .RESET_B(net45),
    .Q(\uart_rx_inst.state_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _408_ (.CLK(clknet_2_0__leaf_clk),
    .D(_034_),
    .RESET_B(net45),
    .Q(\uart_rx_inst.state_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _409_ (.CLK(clknet_2_1__leaf_clk),
    .D(_035_),
    .RESET_B(net47),
    .Q(\baud_gen_inst.tx_count_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _410_ (.CLK(clknet_2_1__leaf_clk),
    .D(_036_),
    .RESET_B(net47),
    .Q(\baud_gen_inst.tx_count_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _411_ (.CLK(clknet_2_3__leaf_clk),
    .D(_037_),
    .RESET_B(net50),
    .Q(\baud_gen_inst.tx_count_reg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _412_ (.CLK(clknet_2_3__leaf_clk),
    .D(_038_),
    .RESET_B(net50),
    .Q(\baud_gen_inst.tx_count_reg[3] ));
 sky130_fd_sc_hd__dfstp_2 _413_ (.CLK(clknet_2_1__leaf_clk),
    .D(net53),
    .SET_B(net47),
    .Q(\uart_rx_inst.rx_sync_1 ));
 sky130_fd_sc_hd__dfrtp_1 _414_ (.CLK(clknet_2_0__leaf_clk),
    .D(_016_),
    .RESET_B(net45),
    .Q(\baud_gen_inst.rx_tick ));
 sky130_fd_sc_hd__dfrtp_1 _415_ (.CLK(clknet_2_3__leaf_clk),
    .D(_017_),
    .RESET_B(net50),
    .Q(\baud_gen_inst.tx_tick ));
 sky130_fd_sc_hd__dfrtp_2 _416_ (.CLK(clknet_2_2__leaf_clk),
    .D(_000_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[0] ));
 sky130_fd_sc_hd__dfrtp_2 _417_ (.CLK(clknet_2_2__leaf_clk),
    .D(_007_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _418_ (.CLK(clknet_2_2__leaf_clk),
    .D(_008_),
    .RESET_B(net50),
    .Q(\baud_gen_inst.rx_count_reg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _419_ (.CLK(clknet_2_3__leaf_clk),
    .D(_009_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[3] ));
 sky130_fd_sc_hd__dfrtp_1 _420_ (.CLK(clknet_2_2__leaf_clk),
    .D(_010_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[4] ));
 sky130_fd_sc_hd__dfrtp_1 _421_ (.CLK(clknet_2_2__leaf_clk),
    .D(_011_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[5] ));
 sky130_fd_sc_hd__dfrtp_1 _422_ (.CLK(clknet_2_2__leaf_clk),
    .D(_012_),
    .RESET_B(net52),
    .Q(\baud_gen_inst.rx_count_reg[6] ));
 sky130_fd_sc_hd__dfrtp_1 _423_ (.CLK(clknet_2_2__leaf_clk),
    .D(_013_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[7] ));
 sky130_fd_sc_hd__dfrtp_1 _424_ (.CLK(clknet_2_0__leaf_clk),
    .D(_014_),
    .RESET_B(net45),
    .Q(\baud_gen_inst.rx_count_reg[8] ));
 sky130_fd_sc_hd__dfrtp_1 _425_ (.CLK(clknet_2_0__leaf_clk),
    .D(_015_),
    .RESET_B(net48),
    .Q(\baud_gen_inst.rx_count_reg[9] ));
 sky130_fd_sc_hd__dfrtp_1 _426_ (.CLK(clknet_2_2__leaf_clk),
    .D(_001_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[10] ));
 sky130_fd_sc_hd__dfrtp_1 _427_ (.CLK(clknet_2_0__leaf_clk),
    .D(_002_),
    .RESET_B(net48),
    .Q(\baud_gen_inst.rx_count_reg[11] ));
 sky130_fd_sc_hd__dfrtp_2 _428_ (.CLK(clknet_2_3__leaf_clk),
    .D(_003_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[12] ));
 sky130_fd_sc_hd__dfrtp_2 _429_ (.CLK(clknet_2_0__leaf_clk),
    .D(_004_),
    .RESET_B(net48),
    .Q(\baud_gen_inst.rx_count_reg[13] ));
 sky130_fd_sc_hd__dfrtp_1 _430_ (.CLK(clknet_2_2__leaf_clk),
    .D(_005_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[14] ));
 sky130_fd_sc_hd__dfrtp_1 _431_ (.CLK(clknet_2_2__leaf_clk),
    .D(_006_),
    .RESET_B(net49),
    .Q(\baud_gen_inst.rx_count_reg[15] ));
 sky130_fd_sc_hd__dfrtp_4 _432_ (.CLK(clknet_2_3__leaf_clk),
    .D(_039_),
    .RESET_B(net50),
    .Q(\uart_tx_inst.state_reg[0] ));
 sky130_fd_sc_hd__dfrtp_4 _433_ (.CLK(clknet_2_3__leaf_clk),
    .D(_040_),
    .RESET_B(net51),
    .Q(\uart_tx_inst.state_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _434_ (.CLK(clknet_2_0__leaf_clk),
    .D(_041_),
    .RESET_B(net45),
    .Q(net28));
 sky130_fd_sc_hd__dfrtp_1 _435_ (.CLK(clknet_2_1__leaf_clk),
    .D(_042_),
    .RESET_B(net46),
    .Q(net29));
 sky130_fd_sc_hd__dfrtp_1 _436_ (.CLK(clknet_2_1__leaf_clk),
    .D(_043_),
    .RESET_B(net46),
    .Q(net30));
 sky130_fd_sc_hd__dfrtp_1 _437_ (.CLK(clknet_2_1__leaf_clk),
    .D(_044_),
    .RESET_B(net46),
    .Q(net31));
 sky130_fd_sc_hd__dfrtp_1 _438_ (.CLK(clknet_2_0__leaf_clk),
    .D(_045_),
    .RESET_B(net45),
    .Q(net32));
 sky130_fd_sc_hd__dfrtp_1 _439_ (.CLK(clknet_2_1__leaf_clk),
    .D(_046_),
    .RESET_B(net46),
    .Q(net33));
 sky130_fd_sc_hd__dfrtp_1 _440_ (.CLK(clknet_2_1__leaf_clk),
    .D(_047_),
    .RESET_B(net46),
    .Q(net34));
 sky130_fd_sc_hd__dfrtp_1 _441_ (.CLK(clknet_2_1__leaf_clk),
    .D(_048_),
    .RESET_B(net46),
    .Q(net35));
 sky130_fd_sc_hd__dfrtp_1 _442_ (.CLK(clknet_2_3__leaf_clk),
    .D(_049_),
    .RESET_B(net51),
    .Q(\uart_tx_inst.bit_count_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _443_ (.CLK(clknet_2_3__leaf_clk),
    .D(_050_),
    .RESET_B(net51),
    .Q(\uart_tx_inst.bit_count_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _444_ (.CLK(clknet_2_2__leaf_clk),
    .D(_051_),
    .RESET_B(net51),
    .Q(\uart_tx_inst.bit_count_reg[2] ));
 sky130_fd_sc_hd__dfstp_1 _445_ (.CLK(clknet_2_3__leaf_clk),
    .D(\uart_tx_inst.tx_next ),
    .SET_B(net51),
    .Q(net37));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_165 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(dvsr[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(dvsr[10]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(dvsr[11]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(dvsr[12]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(dvsr[13]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(dvsr[14]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(dvsr[15]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(dvsr[1]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(dvsr[2]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(dvsr[3]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(dvsr[4]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(dvsr[5]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(dvsr[6]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(dvsr[7]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(dvsr[8]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(dvsr[9]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(rst_n),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(rx),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_1 input19 (.A(tx_data[0]),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_1 input20 (.A(tx_data[1]),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_1 input21 (.A(tx_data[2]),
    .X(net21));
 sky130_fd_sc_hd__clkbuf_1 input22 (.A(tx_data[3]),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_1 input23 (.A(tx_data[4]),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_1 input24 (.A(tx_data[5]),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_1 input25 (.A(tx_data[6]),
    .X(net25));
 sky130_fd_sc_hd__clkbuf_1 input26 (.A(tx_data[7]),
    .X(net26));
 sky130_fd_sc_hd__buf_1 input27 (.A(tx_start),
    .X(net27));
 sky130_fd_sc_hd__buf_2 output28 (.A(net28),
    .X(rx_data[0]));
 sky130_fd_sc_hd__buf_2 output29 (.A(net29),
    .X(rx_data[1]));
 sky130_fd_sc_hd__buf_2 output30 (.A(net30),
    .X(rx_data[2]));
 sky130_fd_sc_hd__buf_2 output31 (.A(net31),
    .X(rx_data[3]));
 sky130_fd_sc_hd__buf_2 output32 (.A(net32),
    .X(rx_data[4]));
 sky130_fd_sc_hd__buf_2 output33 (.A(net33),
    .X(rx_data[5]));
 sky130_fd_sc_hd__buf_2 output34 (.A(net34),
    .X(rx_data[6]));
 sky130_fd_sc_hd__buf_2 output35 (.A(net35),
    .X(rx_data[7]));
 sky130_fd_sc_hd__buf_2 output36 (.A(net36),
    .X(rx_done));
 sky130_fd_sc_hd__buf_2 output37 (.A(net37),
    .X(tx));
 sky130_fd_sc_hd__buf_2 output38 (.A(net38),
    .X(tx_done));
 sky130_fd_sc_hd__buf_2 fanout39 (.A(_094_),
    .X(net39));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout40 (.A(_094_),
    .X(net40));
 sky130_fd_sc_hd__buf_2 fanout41 (.A(\baud_gen_inst.rx_tick ),
    .X(net41));
 sky130_fd_sc_hd__clkbuf_2 fanout42 (.A(\uart_rx_inst.n_reg[2] ),
    .X(net42));
 sky130_fd_sc_hd__clkbuf_2 fanout43 (.A(\uart_rx_inst.n_reg[1] ),
    .X(net43));
 sky130_fd_sc_hd__clkbuf_2 fanout44 (.A(\uart_rx_inst.n_reg[0] ),
    .X(net44));
 sky130_fd_sc_hd__clkbuf_4 fanout45 (.A(net48),
    .X(net45));
 sky130_fd_sc_hd__clkbuf_4 fanout46 (.A(net48),
    .X(net46));
 sky130_fd_sc_hd__clkbuf_2 fanout47 (.A(net48),
    .X(net47));
 sky130_fd_sc_hd__buf_2 fanout48 (.A(net52),
    .X(net48));
 sky130_fd_sc_hd__clkbuf_4 fanout49 (.A(net52),
    .X(net49));
 sky130_fd_sc_hd__clkbuf_4 fanout50 (.A(net52),
    .X(net50));
 sky130_fd_sc_hd__clkbuf_2 fanout51 (.A(net52),
    .X(net51));
 sky130_fd_sc_hd__clkbuf_2 fanout52 (.A(net17),
    .X(net52));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__inv_4 clkload0 (.A(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkinv_4 clkload1 (.A(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload2 (.A(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\uart_rx_inst.rx_sync_0 ),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\uart_tx_inst.shift_reg[7] ),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\uart_tx_inst.shift_reg[1] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\uart_tx_inst.shift_reg[4] ),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\uart_tx_inst.shift_reg[2] ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\uart_tx_inst.shift_reg[6] ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(net35),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\uart_tx_inst.shift_reg[5] ),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(\uart_tx_inst.shift_reg[3] ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(net33),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(net34),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\baud_gen_inst.tx_count_reg[0] ),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\baud_gen_inst.tx_count_reg[3] ),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(_176_),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(net30),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(net31),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\baud_gen_inst.tx_count_reg[1] ),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(_175_),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(net28),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\uart_tx_inst.shift_reg[0] ),
    .X(net72));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\baud_gen_inst.tx_count_reg[2] ),
    .X(net73));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(net29),
    .X(net74));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\uart_rx_inst.s_reg[3] ),
    .X(net75));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\baud_gen_inst.tx_count_reg[2] ),
    .X(net76));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\uart_tx_inst.bit_count_reg[2] ),
    .X(net77));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\uart_tx_inst.bit_count_reg[0] ),
    .X(net78));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\uart_rx_inst.s_reg[1] ),
    .X(net79));
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_63 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_96 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_133 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_147 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_157 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_166 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_173 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_185 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_102 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_164 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_51 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_80 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_93 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_149 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_161 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_183 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_73 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_95 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_137 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_158 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_166 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_64 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_108 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_118 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_130 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_135 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_153 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_165 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_173 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_184 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_39 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_62 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_77 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_89 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_134 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_164 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_42 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_96 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_108 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_120 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_132 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_151 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_180 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_92 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_101 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_133 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_145 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_165 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_32 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_51 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_70 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_93 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_105 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_141 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_153 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_176 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_184 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_86 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_98 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_106 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_136 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_148 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_173 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_7 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_47 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_110 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_132 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_165 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_9 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_50 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_87 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_120 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_132 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_11_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_47 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_59 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_83 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_91 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_112 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_118 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_130 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_138 ();
 sky130_ef_sc_hd__decap_12 FILLER_12_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_162 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_7 ();
 sky130_ef_sc_hd__decap_12 FILLER_13_21 ();
 sky130_ef_sc_hd__decap_12 FILLER_13_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_13_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_91 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_136 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_165 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_182 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_56 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_80 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_93 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_108 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_177 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_187 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_11 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_33 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_60 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_108 ();
 sky130_ef_sc_hd__decap_12 FILLER_15_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_15_133 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_145 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_162 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_188 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_56 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_81 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_16_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_153 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_188 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_17_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_124 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_132 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_20 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_77 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_130 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_138 ();
 sky130_ef_sc_hd__decap_12 FILLER_18_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_153 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_171 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_188 ();
 sky130_ef_sc_hd__decap_12 FILLER_19_6 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_18 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_77 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_149 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_185 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_25 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_41 ();
 sky130_fd_sc_hd__decap_6 FILLER_20_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_59 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_75 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_20_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_20_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_161 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_184 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_18 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_36 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_21_137 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_149 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_157 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_166 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_177 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_188 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_39 ();
 sky130_ef_sc_hd__decap_12 FILLER_22_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_22_128 ();
 sky130_ef_sc_hd__decap_12 FILLER_22_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_22_163 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_175 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_183 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_31 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_70 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_23_90 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_137 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_155 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_188 ();
 sky130_ef_sc_hd__decap_12 FILLER_24_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_24_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_24_50 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_70 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_78 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_90 ();
 sky130_fd_sc_hd__decap_6 FILLER_24_112 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_118 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_123 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_24_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_24_153 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_165 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_43 ();
 sky130_fd_sc_hd__decap_6 FILLER_25_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_76 ();
 sky130_ef_sc_hd__decap_12 FILLER_25_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_25_94 ();
 sky130_fd_sc_hd__decap_6 FILLER_25_106 ();
 sky130_ef_sc_hd__decap_12 FILLER_25_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_25_143 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_182 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_10 ();
 sky130_fd_sc_hd__decap_6 FILLER_26_22 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_33 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_26_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_26_94 ();
 sky130_ef_sc_hd__decap_12 FILLER_26_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_118 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_122 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_126 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_132 ();
 sky130_ef_sc_hd__decap_12 FILLER_26_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_26_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_27_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_27_24 ();
 sky130_ef_sc_hd__decap_12 FILLER_27_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_27_48 ();
 sky130_fd_sc_hd__decap_8 FILLER_27_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_27_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_140 ();
 sky130_fd_sc_hd__decap_6 FILLER_27_162 ();
 sky130_ef_sc_hd__decap_12 FILLER_27_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_28_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_28_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_28_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_28_41 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_59 ();
 sky130_ef_sc_hd__decap_12 FILLER_28_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_80 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_98 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_141 ();
 sky130_fd_sc_hd__fill_2 FILLER_28_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_177 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_29_17 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_29_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_68 ();
 sky130_ef_sc_hd__decap_12 FILLER_29_75 ();
 sky130_ef_sc_hd__decap_12 FILLER_29_87 ();
 sky130_ef_sc_hd__decap_12 FILLER_29_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_29_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_29_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_29_137 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_145 ();
 sky130_ef_sc_hd__decap_12 FILLER_29_150 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_162 ();
 sky130_ef_sc_hd__decap_12 FILLER_29_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_29_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_33 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_75 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_30_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_138 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_145 ();
 sky130_ef_sc_hd__decap_12 FILLER_30_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_14 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_90 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_31_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_31_181 ();
endmodule
