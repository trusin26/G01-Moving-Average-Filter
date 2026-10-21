module g01_moving_average4 (clk,
    rst_n,
    valid_in,
    valid_out,
    avg_out,
    sample_in);
 input clk;
 input rst_n;
 input valid_in;
 output valid_out;
 output [7:0] avg_out;
 input [7:0] sample_in;

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
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire \count_q[0] ;
 wire \count_q[1] ;
 wire \count_q[2] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire \sample_mem[0][0] ;
 wire \sample_mem[0][1] ;
 wire \sample_mem[0][2] ;
 wire \sample_mem[0][3] ;
 wire \sample_mem[0][4] ;
 wire \sample_mem[0][5] ;
 wire \sample_mem[0][6] ;
 wire \sample_mem[0][7] ;
 wire \sample_mem[1][0] ;
 wire \sample_mem[1][1] ;
 wire \sample_mem[1][2] ;
 wire \sample_mem[1][3] ;
 wire \sample_mem[1][4] ;
 wire \sample_mem[1][5] ;
 wire \sample_mem[1][6] ;
 wire \sample_mem[1][7] ;
 wire \sample_mem[2][0] ;
 wire \sample_mem[2][1] ;
 wire \sample_mem[2][2] ;
 wire \sample_mem[2][3] ;
 wire \sample_mem[2][4] ;
 wire \sample_mem[2][5] ;
 wire \sample_mem[2][6] ;
 wire \sample_mem[2][7] ;
 wire \sample_mem[3][0] ;
 wire \sample_mem[3][1] ;
 wire \sample_mem[3][2] ;
 wire \sample_mem[3][3] ;
 wire \sample_mem[3][4] ;
 wire \sample_mem[3][5] ;
 wire \sample_mem[3][6] ;
 wire \sample_mem[3][7] ;
 wire \sum_q[0] ;
 wire \sum_q[1] ;
 wire \sum_q[2] ;
 wire \sum_q[3] ;
 wire \sum_q[4] ;
 wire \sum_q[5] ;
 wire \sum_q[6] ;
 wire \sum_q[7] ;
 wire net10;
 wire net19;
 wire \wr_ptr[0] ;
 wire \wr_ptr[1] ;
 wire net20;
 wire clknet_0_clk;
 wire clknet_3_0__leaf_clk;
 wire clknet_3_1__leaf_clk;
 wire clknet_3_2__leaf_clk;
 wire clknet_3_3__leaf_clk;
 wire clknet_3_4__leaf_clk;
 wire clknet_3_5__leaf_clk;
 wire clknet_3_6__leaf_clk;
 wire clknet_3_7__leaf_clk;

 sky130_fd_sc_hd__fill_1 FILLER_0_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_122 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_147 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_156 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_184 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_63 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_168 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_171 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_186 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_40 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_108 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_163 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_166 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_26 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_84 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_87 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_114 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_156 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_162 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_180 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_186 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_56 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_59 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_167 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_184 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_152 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_155 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_18 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_180 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_104 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_140 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_143 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_21 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_84 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_126 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_138 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_166 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_104 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_128 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_134 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_140 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_143 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_146 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_152 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_155 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_166 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_172 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_39 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_42 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_45 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_54 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_86 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_89 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_92 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_95 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_98 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_133 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_166 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_184 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_52 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_58 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_128 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_84 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_87 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_116 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_140 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_143 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_146 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_149 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_152 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_155 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_184 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_28 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_40 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_79 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_128 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_130 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_133 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_32 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_54 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_112 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_124 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_147 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_176 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_58 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_61 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_124 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_147 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_174 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_177 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_180 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_186 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_134 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_168 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_92 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_95 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_98 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_12 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_142 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_148 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_151 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_154 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_33 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_77 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_112 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_124 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_130 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_133 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_147 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_156 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_168 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_171 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_174 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_177 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_180 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_116 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_127 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_130 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_147 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_154 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_157 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_177 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_180 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_186 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_66 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_9 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_112 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_152 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_168 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_171 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_56 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_128 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_145 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_148 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_154 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_157 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_19 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_22 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_112 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_124 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_147 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_188 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_39 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_48 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_51 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_54 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_63 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_97 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_137 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_177 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_180 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_186 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_32 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_76 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_95 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_98 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_10 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_128 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_13 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_149 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_152 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_155 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_184 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_104 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_135 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_147 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_166 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_184 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_86 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_134 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_147 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_184 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_104 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_124 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_142 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_145 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_148 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_154 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_163 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_166 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_184 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_84 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_87 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_98 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_108 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_40 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_152 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_134 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_147 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_156 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_40 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_43 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_130 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_133 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_136 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_142 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_145 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_148 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_154 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_33 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_39 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_48 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_69 ();
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
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_72 ();
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
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_165 ();
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
 sky130_fd_sc_hd__inv_2 _203_ (.A(net20),
    .Y(_062_));
 sky130_fd_sc_hd__inv_2 _204_ (.A(\count_q[2] ),
    .Y(_063_));
 sky130_fd_sc_hd__nand2_2 _205_ (.A(net10),
    .B(net1),
    .Y(_064_));
 sky130_fd_sc_hd__and4b_2 _206_ (.A_N(\wr_ptr[0] ),
    .B(net1),
    .C(net10),
    .D(\wr_ptr[1] ),
    .X(_065_));
 sky130_fd_sc_hd__and2b_2 _207_ (.A_N(_065_),
    .B(net1),
    .X(_066_));
 sky130_fd_sc_hd__a22o_2 _208_ (.A1(net2),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][0] ),
    .X(_004_));
 sky130_fd_sc_hd__a22o_2 _209_ (.A1(net3),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][1] ),
    .X(_005_));
 sky130_fd_sc_hd__a22o_2 _210_ (.A1(net4),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][2] ),
    .X(_006_));
 sky130_fd_sc_hd__a22o_2 _211_ (.A1(net5),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][3] ),
    .X(_007_));
 sky130_fd_sc_hd__a22o_2 _212_ (.A1(net6),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][4] ),
    .X(_008_));
 sky130_fd_sc_hd__a22o_2 _213_ (.A1(net7),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][5] ),
    .X(_009_));
 sky130_fd_sc_hd__a22o_2 _214_ (.A1(net8),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][6] ),
    .X(_010_));
 sky130_fd_sc_hd__a22o_2 _215_ (.A1(net9),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][7] ),
    .X(_011_));
 sky130_fd_sc_hd__nand2_2 _216_ (.A(net10),
    .B(\wr_ptr[0] ),
    .Y(_067_));
 sky130_fd_sc_hd__nor2_2 _217_ (.A(\wr_ptr[1] ),
    .B(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__o21a_2 _218_ (.A1(\wr_ptr[1] ),
    .A2(_067_),
    .B1(net1),
    .X(_069_));
 sky130_fd_sc_hd__and3_2 _219_ (.A(net10),
    .B(net1),
    .C(_068_),
    .X(_070_));
 sky130_fd_sc_hd__a22o_2 _220_ (.A1(\sample_mem[1][0] ),
    .A2(_069_),
    .B1(_070_),
    .B2(net2),
    .X(_012_));
 sky130_fd_sc_hd__a22o_2 _221_ (.A1(\sample_mem[1][1] ),
    .A2(_069_),
    .B1(_070_),
    .B2(net3),
    .X(_013_));
 sky130_fd_sc_hd__a22o_2 _222_ (.A1(\sample_mem[1][2] ),
    .A2(_069_),
    .B1(_070_),
    .B2(net4),
    .X(_014_));
 sky130_fd_sc_hd__a22o_2 _223_ (.A1(\sample_mem[1][3] ),
    .A2(_069_),
    .B1(_070_),
    .B2(net5),
    .X(_015_));
 sky130_fd_sc_hd__a22o_2 _224_ (.A1(\sample_mem[1][4] ),
    .A2(_069_),
    .B1(_070_),
    .B2(net6),
    .X(_016_));
 sky130_fd_sc_hd__a22o_2 _225_ (.A1(\sample_mem[1][5] ),
    .A2(_069_),
    .B1(_070_),
    .B2(net7),
    .X(_017_));
 sky130_fd_sc_hd__a22o_2 _226_ (.A1(\sample_mem[1][6] ),
    .A2(_069_),
    .B1(_070_),
    .B2(net8),
    .X(_018_));
 sky130_fd_sc_hd__a22o_2 _227_ (.A1(\sample_mem[1][7] ),
    .A2(_069_),
    .B1(_070_),
    .B2(net9),
    .X(_019_));
 sky130_fd_sc_hd__nor3_2 _228_ (.A(\wr_ptr[1] ),
    .B(\wr_ptr[0] ),
    .C(_064_),
    .Y(_071_));
 sky130_fd_sc_hd__and2b_2 _229_ (.A_N(_071_),
    .B(net1),
    .X(_072_));
 sky130_fd_sc_hd__a22o_2 _230_ (.A1(net2),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][0] ),
    .X(_020_));
 sky130_fd_sc_hd__a22o_2 _231_ (.A1(net3),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][1] ),
    .X(_021_));
 sky130_fd_sc_hd__a22o_2 _232_ (.A1(net4),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][2] ),
    .X(_022_));
 sky130_fd_sc_hd__a22o_2 _233_ (.A1(net5),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][3] ),
    .X(_023_));
 sky130_fd_sc_hd__a22o_2 _234_ (.A1(net6),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][4] ),
    .X(_024_));
 sky130_fd_sc_hd__a22o_2 _235_ (.A1(net7),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][5] ),
    .X(_025_));
 sky130_fd_sc_hd__a22o_2 _236_ (.A1(net8),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][6] ),
    .X(_026_));
 sky130_fd_sc_hd__a22o_2 _237_ (.A1(net9),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][7] ),
    .X(_027_));
 sky130_fd_sc_hd__a2bb2o_2 _238_ (.A1_N(\wr_ptr[1] ),
    .A2_N(_064_),
    .B1(_067_),
    .B2(net1),
    .X(_073_));
 sky130_fd_sc_hd__nor2_2 _239_ (.A(_064_),
    .B(_073_),
    .Y(_074_));
 sky130_fd_sc_hd__a22o_2 _240_ (.A1(\sample_mem[3][0] ),
    .A2(_073_),
    .B1(_074_),
    .B2(net2),
    .X(_028_));
 sky130_fd_sc_hd__a22o_2 _241_ (.A1(\sample_mem[3][1] ),
    .A2(_073_),
    .B1(_074_),
    .B2(net3),
    .X(_029_));
 sky130_fd_sc_hd__a22o_2 _242_ (.A1(\sample_mem[3][2] ),
    .A2(_073_),
    .B1(_074_),
    .B2(net4),
    .X(_030_));
 sky130_fd_sc_hd__a22o_2 _243_ (.A1(\sample_mem[3][3] ),
    .A2(_073_),
    .B1(_074_),
    .B2(net5),
    .X(_031_));
 sky130_fd_sc_hd__a22o_2 _244_ (.A1(\sample_mem[3][4] ),
    .A2(_073_),
    .B1(_074_),
    .B2(net6),
    .X(_032_));
 sky130_fd_sc_hd__a22o_2 _245_ (.A1(\sample_mem[3][5] ),
    .A2(_073_),
    .B1(_074_),
    .B2(net7),
    .X(_033_));
 sky130_fd_sc_hd__a22o_2 _246_ (.A1(\sample_mem[3][6] ),
    .A2(_073_),
    .B1(_074_),
    .B2(net8),
    .X(_034_));
 sky130_fd_sc_hd__a22o_2 _247_ (.A1(\sample_mem[3][7] ),
    .A2(_073_),
    .B1(_074_),
    .B2(net9),
    .X(_035_));
 sky130_fd_sc_hd__or2_2 _248_ (.A(net10),
    .B(\wr_ptr[0] ),
    .X(_075_));
 sky130_fd_sc_hd__and3_2 _249_ (.A(net1),
    .B(_067_),
    .C(_075_),
    .X(_036_));
 sky130_fd_sc_hd__and2_2 _250_ (.A(\wr_ptr[1] ),
    .B(_067_),
    .X(_076_));
 sky130_fd_sc_hd__o21a_2 _251_ (.A1(_068_),
    .A2(_076_),
    .B1(net1),
    .X(_037_));
 sky130_fd_sc_hd__a21o_2 _252_ (.A1(\count_q[1] ),
    .A2(\count_q[0] ),
    .B1(\count_q[2] ),
    .X(_077_));
 sky130_fd_sc_hd__and2_2 _253_ (.A(net20),
    .B(_077_),
    .X(_078_));
 sky130_fd_sc_hd__nand2_2 _254_ (.A(net20),
    .B(_077_),
    .Y(_079_));
 sky130_fd_sc_hd__and3_2 _255_ (.A(net20),
    .B(net1),
    .C(_077_),
    .X(_038_));
 sky130_fd_sc_hd__nand2_2 _256_ (.A(\sum_q[1] ),
    .B(net3),
    .Y(_080_));
 sky130_fd_sc_hd__nand2_2 _257_ (.A(\sum_q[0] ),
    .B(net2),
    .Y(_081_));
 sky130_fd_sc_hd__xnor2_2 _258_ (.A(\sum_q[1] ),
    .B(net3),
    .Y(_082_));
 sky130_fd_sc_hd__o21ai_2 _259_ (.A1(_081_),
    .A2(_082_),
    .B1(_080_),
    .Y(_083_));
 sky130_fd_sc_hd__and2_2 _260_ (.A(\sum_q[2] ),
    .B(net4),
    .X(_084_));
 sky130_fd_sc_hd__or2_2 _261_ (.A(\sum_q[2] ),
    .B(net4),
    .X(_085_));
 sky130_fd_sc_hd__and2b_2 _262_ (.A_N(_084_),
    .B(_085_),
    .X(_086_));
 sky130_fd_sc_hd__xnor2_2 _263_ (.A(_083_),
    .B(_086_),
    .Y(_087_));
 sky130_fd_sc_hd__mux4_2 _264_ (.A0(\sample_mem[0][2] ),
    .A1(\sample_mem[1][2] ),
    .A2(\sample_mem[2][2] ),
    .A3(\sample_mem[3][2] ),
    .S0(_000_),
    .S1(_001_),
    .X(_088_));
 sky130_fd_sc_hd__nor2_2 _265_ (.A(_087_),
    .B(_088_),
    .Y(_089_));
 sky130_fd_sc_hd__xor2_2 _266_ (.A(_087_),
    .B(_088_),
    .X(_090_));
 sky130_fd_sc_hd__xnor2_2 _267_ (.A(_081_),
    .B(_082_),
    .Y(_091_));
 sky130_fd_sc_hd__mux4_2 _268_ (.A0(\sample_mem[0][1] ),
    .A1(\sample_mem[1][1] ),
    .A2(\sample_mem[2][1] ),
    .A3(\sample_mem[3][1] ),
    .S0(_000_),
    .S1(_001_),
    .X(_092_));
 sky130_fd_sc_hd__nor2_2 _269_ (.A(_091_),
    .B(_092_),
    .Y(_093_));
 sky130_fd_sc_hd__xor2_2 _270_ (.A(_091_),
    .B(_092_),
    .X(_094_));
 sky130_fd_sc_hd__or2_2 _271_ (.A(\sum_q[0] ),
    .B(net2),
    .X(_095_));
 sky130_fd_sc_hd__nand2_2 _272_ (.A(_081_),
    .B(_095_),
    .Y(_096_));
 sky130_fd_sc_hd__mux4_2 _273_ (.A0(\sample_mem[0][0] ),
    .A1(\sample_mem[1][0] ),
    .A2(\sample_mem[2][0] ),
    .A3(\sample_mem[3][0] ),
    .S0(_000_),
    .S1(_001_),
    .X(_097_));
 sky130_fd_sc_hd__nand2_2 _274_ (.A(_096_),
    .B(_097_),
    .Y(_098_));
 sky130_fd_sc_hd__nand2_2 _275_ (.A(_094_),
    .B(_098_),
    .Y(_099_));
 sky130_fd_sc_hd__a21o_2 _276_ (.A1(_094_),
    .A2(_098_),
    .B1(_093_),
    .X(_100_));
 sky130_fd_sc_hd__nor2_2 _277_ (.A(_090_),
    .B(_100_),
    .Y(_101_));
 sky130_fd_sc_hd__a21o_2 _278_ (.A1(_090_),
    .A2(_100_),
    .B1(_063_),
    .X(_102_));
 sky130_fd_sc_hd__o22a_2 _279_ (.A1(\count_q[2] ),
    .A2(_087_),
    .B1(_101_),
    .B2(_102_),
    .X(_103_));
 sky130_fd_sc_hd__nand2_2 _280_ (.A(_078_),
    .B(_103_),
    .Y(_104_));
 sky130_fd_sc_hd__o211a_2 _281_ (.A1(net11),
    .A2(_078_),
    .B1(_104_),
    .C1(net1),
    .X(_039_));
 sky130_fd_sc_hd__nand2_2 _282_ (.A(\sum_q[3] ),
    .B(net5),
    .Y(_105_));
 sky130_fd_sc_hd__or2_2 _283_ (.A(\sum_q[3] ),
    .B(net5),
    .X(_106_));
 sky130_fd_sc_hd__nand2_2 _284_ (.A(_105_),
    .B(_106_),
    .Y(_107_));
 sky130_fd_sc_hd__a21oi_2 _285_ (.A1(_083_),
    .A2(_085_),
    .B1(_084_),
    .Y(_108_));
 sky130_fd_sc_hd__xnor2_2 _286_ (.A(_107_),
    .B(_108_),
    .Y(_109_));
 sky130_fd_sc_hd__mux4_2 _287_ (.A0(\sample_mem[0][3] ),
    .A1(\sample_mem[1][3] ),
    .A2(\sample_mem[2][3] ),
    .A3(\sample_mem[3][3] ),
    .S0(_000_),
    .S1(_001_),
    .X(_110_));
 sky130_fd_sc_hd__nor2_2 _288_ (.A(_109_),
    .B(_110_),
    .Y(_111_));
 sky130_fd_sc_hd__xor2_2 _289_ (.A(_109_),
    .B(_110_),
    .X(_112_));
 sky130_fd_sc_hd__a21o_2 _290_ (.A1(_090_),
    .A2(_100_),
    .B1(_089_),
    .X(_113_));
 sky130_fd_sc_hd__xnor2_2 _291_ (.A(_112_),
    .B(_113_),
    .Y(_114_));
 sky130_fd_sc_hd__mux2_1 _292_ (.A0(_109_),
    .A1(_114_),
    .S(\count_q[2] ),
    .X(_115_));
 sky130_fd_sc_hd__nand2_2 _293_ (.A(_078_),
    .B(_115_),
    .Y(_116_));
 sky130_fd_sc_hd__o211a_2 _294_ (.A1(net12),
    .A2(_078_),
    .B1(_116_),
    .C1(net1),
    .X(_040_));
 sky130_fd_sc_hd__and2_2 _295_ (.A(\sum_q[4] ),
    .B(net6),
    .X(_117_));
 sky130_fd_sc_hd__or2_2 _296_ (.A(\sum_q[4] ),
    .B(net6),
    .X(_118_));
 sky130_fd_sc_hd__nand2b_2 _297_ (.A_N(_117_),
    .B(_118_),
    .Y(_119_));
 sky130_fd_sc_hd__a221o_2 _298_ (.A1(\sum_q[3] ),
    .A2(net5),
    .B1(_083_),
    .B2(_085_),
    .C1(_084_),
    .X(_120_));
 sky130_fd_sc_hd__nand2_2 _299_ (.A(_106_),
    .B(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__xnor2_2 _300_ (.A(_119_),
    .B(_121_),
    .Y(_122_));
 sky130_fd_sc_hd__mux4_2 _301_ (.A0(\sample_mem[0][4] ),
    .A1(\sample_mem[1][4] ),
    .A2(\sample_mem[2][4] ),
    .A3(\sample_mem[3][4] ),
    .S0(_000_),
    .S1(_001_),
    .X(_123_));
 sky130_fd_sc_hd__nor2_2 _302_ (.A(_122_),
    .B(_123_),
    .Y(_124_));
 sky130_fd_sc_hd__nand2_2 _303_ (.A(_122_),
    .B(_123_),
    .Y(_125_));
 sky130_fd_sc_hd__and2b_2 _304_ (.A_N(_124_),
    .B(_125_),
    .X(_126_));
 sky130_fd_sc_hd__a21o_2 _305_ (.A1(_112_),
    .A2(_113_),
    .B1(_111_),
    .X(_127_));
 sky130_fd_sc_hd__nand2_2 _306_ (.A(_126_),
    .B(_127_),
    .Y(_128_));
 sky130_fd_sc_hd__o21a_2 _307_ (.A1(_126_),
    .A2(_127_),
    .B1(\count_q[2] ),
    .X(_129_));
 sky130_fd_sc_hd__a2bb2o_2 _308_ (.A1_N(\count_q[2] ),
    .A2_N(_122_),
    .B1(_128_),
    .B2(_129_),
    .X(_130_));
 sky130_fd_sc_hd__or2_2 _309_ (.A(net13),
    .B(_078_),
    .X(_131_));
 sky130_fd_sc_hd__o211a_2 _310_ (.A1(_079_),
    .A2(_130_),
    .B1(_131_),
    .C1(net1),
    .X(_041_));
 sky130_fd_sc_hd__a31o_2 _311_ (.A1(_106_),
    .A2(_118_),
    .A3(_120_),
    .B1(_117_),
    .X(_132_));
 sky130_fd_sc_hd__nor2_2 _312_ (.A(\sum_q[5] ),
    .B(net7),
    .Y(_133_));
 sky130_fd_sc_hd__or2_2 _313_ (.A(\sum_q[5] ),
    .B(net7),
    .X(_134_));
 sky130_fd_sc_hd__and2_2 _314_ (.A(\sum_q[5] ),
    .B(net7),
    .X(_135_));
 sky130_fd_sc_hd__nor2_2 _315_ (.A(_133_),
    .B(_135_),
    .Y(_136_));
 sky130_fd_sc_hd__xnor2_2 _316_ (.A(_132_),
    .B(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__mux4_2 _317_ (.A0(\sample_mem[0][5] ),
    .A1(\sample_mem[1][5] ),
    .A2(\sample_mem[2][5] ),
    .A3(\sample_mem[3][5] ),
    .S0(_000_),
    .S1(_001_),
    .X(_138_));
 sky130_fd_sc_hd__nand2_2 _318_ (.A(_137_),
    .B(_138_),
    .Y(_139_));
 sky130_fd_sc_hd__nor2_2 _319_ (.A(_137_),
    .B(_138_),
    .Y(_140_));
 sky130_fd_sc_hd__or2_2 _320_ (.A(_137_),
    .B(_138_),
    .X(_141_));
 sky130_fd_sc_hd__nand2_2 _321_ (.A(_139_),
    .B(_141_),
    .Y(_142_));
 sky130_fd_sc_hd__a21oi_2 _322_ (.A1(_125_),
    .A2(_127_),
    .B1(_124_),
    .Y(_143_));
 sky130_fd_sc_hd__xnor2_2 _323_ (.A(_142_),
    .B(_143_),
    .Y(_144_));
 sky130_fd_sc_hd__mux2_1 _324_ (.A0(_137_),
    .A1(_144_),
    .S(\count_q[2] ),
    .X(_145_));
 sky130_fd_sc_hd__nand2_2 _325_ (.A(_078_),
    .B(_145_),
    .Y(_146_));
 sky130_fd_sc_hd__o211a_2 _326_ (.A1(net14),
    .A2(_078_),
    .B1(_146_),
    .C1(net1),
    .X(_042_));
 sky130_fd_sc_hd__and2_2 _327_ (.A(\sum_q[6] ),
    .B(net8),
    .X(_147_));
 sky130_fd_sc_hd__or2_2 _328_ (.A(\sum_q[6] ),
    .B(net8),
    .X(_148_));
 sky130_fd_sc_hd__nand2b_2 _329_ (.A_N(_147_),
    .B(_148_),
    .Y(_149_));
 sky130_fd_sc_hd__a311o_2 _330_ (.A1(_106_),
    .A2(_118_),
    .A3(_120_),
    .B1(_135_),
    .C1(_117_),
    .X(_150_));
 sky130_fd_sc_hd__nand2_2 _331_ (.A(_134_),
    .B(_150_),
    .Y(_151_));
 sky130_fd_sc_hd__xnor2_2 _332_ (.A(_149_),
    .B(_151_),
    .Y(_152_));
 sky130_fd_sc_hd__mux4_2 _333_ (.A0(\sample_mem[0][6] ),
    .A1(\sample_mem[1][6] ),
    .A2(\sample_mem[2][6] ),
    .A3(\sample_mem[3][6] ),
    .S0(_000_),
    .S1(_001_),
    .X(_153_));
 sky130_fd_sc_hd__nor2_2 _334_ (.A(_152_),
    .B(_153_),
    .Y(_154_));
 sky130_fd_sc_hd__xor2_2 _335_ (.A(_152_),
    .B(_153_),
    .X(_155_));
 sky130_fd_sc_hd__a211o_2 _336_ (.A1(_125_),
    .A2(_127_),
    .B1(_140_),
    .C1(_124_),
    .X(_156_));
 sky130_fd_sc_hd__and3_2 _337_ (.A(_139_),
    .B(_155_),
    .C(_156_),
    .X(_157_));
 sky130_fd_sc_hd__a21oi_2 _338_ (.A1(_139_),
    .A2(_156_),
    .B1(_155_),
    .Y(_158_));
 sky130_fd_sc_hd__or2_2 _339_ (.A(\count_q[2] ),
    .B(_152_),
    .X(_159_));
 sky130_fd_sc_hd__o31a_2 _340_ (.A1(_063_),
    .A2(_157_),
    .A3(_158_),
    .B1(_159_),
    .X(_160_));
 sky130_fd_sc_hd__nand2_2 _341_ (.A(_078_),
    .B(_160_),
    .Y(_161_));
 sky130_fd_sc_hd__o211a_2 _342_ (.A1(net15),
    .A2(_078_),
    .B1(_161_),
    .C1(net1),
    .X(_043_));
 sky130_fd_sc_hd__nand2_2 _343_ (.A(\sum_q[7] ),
    .B(net9),
    .Y(_162_));
 sky130_fd_sc_hd__or2_2 _344_ (.A(\sum_q[7] ),
    .B(net9),
    .X(_163_));
 sky130_fd_sc_hd__nand2_2 _345_ (.A(_162_),
    .B(_163_),
    .Y(_164_));
 sky130_fd_sc_hd__a31o_2 _346_ (.A1(_134_),
    .A2(_148_),
    .A3(_150_),
    .B1(_147_),
    .X(_165_));
 sky130_fd_sc_hd__xor2_2 _347_ (.A(_164_),
    .B(_165_),
    .X(_166_));
 sky130_fd_sc_hd__nor2_2 _348_ (.A(\count_q[2] ),
    .B(_166_),
    .Y(_167_));
 sky130_fd_sc_hd__mux4_2 _349_ (.A0(\sample_mem[0][7] ),
    .A1(\sample_mem[1][7] ),
    .A2(\sample_mem[2][7] ),
    .A3(\sample_mem[3][7] ),
    .S0(_000_),
    .S1(_001_),
    .X(_168_));
 sky130_fd_sc_hd__nand2_2 _350_ (.A(_166_),
    .B(_168_),
    .Y(_169_));
 sky130_fd_sc_hd__or2_2 _351_ (.A(_166_),
    .B(_168_),
    .X(_170_));
 sky130_fd_sc_hd__inv_2 _352_ (.A(_170_),
    .Y(_171_));
 sky130_fd_sc_hd__nand2_2 _353_ (.A(_169_),
    .B(_170_),
    .Y(_172_));
 sky130_fd_sc_hd__a31o_2 _354_ (.A1(_139_),
    .A2(_155_),
    .A3(_156_),
    .B1(_154_),
    .X(_173_));
 sky130_fd_sc_hd__xnor2_2 _355_ (.A(_172_),
    .B(_173_),
    .Y(_174_));
 sky130_fd_sc_hd__a211o_2 _356_ (.A1(\count_q[2] ),
    .A2(_174_),
    .B1(_167_),
    .C1(_079_),
    .X(_175_));
 sky130_fd_sc_hd__o211a_2 _357_ (.A1(net16),
    .A2(_078_),
    .B1(_175_),
    .C1(net1),
    .X(_044_));
 sky130_fd_sc_hd__a21bo_2 _358_ (.A1(_163_),
    .A2(_165_),
    .B1_N(_162_),
    .X(_176_));
 sky130_fd_sc_hd__nand2_2 _359_ (.A(_002_),
    .B(_176_),
    .Y(_177_));
 sky130_fd_sc_hd__or2_2 _360_ (.A(_002_),
    .B(_176_),
    .X(_178_));
 sky130_fd_sc_hd__and2_2 _361_ (.A(_177_),
    .B(_178_),
    .X(_179_));
 sky130_fd_sc_hd__a2111oi_2 _362_ (.A1(_169_),
    .A2(_173_),
    .B1(_179_),
    .C1(_171_),
    .D1(_063_),
    .Y(_180_));
 sky130_fd_sc_hd__a211o_2 _363_ (.A1(_169_),
    .A2(_173_),
    .B1(_171_),
    .C1(_063_),
    .X(_181_));
 sky130_fd_sc_hd__and2_2 _364_ (.A(_179_),
    .B(_181_),
    .X(_182_));
 sky130_fd_sc_hd__or2_2 _365_ (.A(net17),
    .B(_078_),
    .X(_183_));
 sky130_fd_sc_hd__o311a_2 _366_ (.A1(_079_),
    .A2(_180_),
    .A3(_182_),
    .B1(_183_),
    .C1(net1),
    .X(_045_));
 sky130_fd_sc_hd__xnor2_2 _367_ (.A(_003_),
    .B(_177_),
    .Y(_184_));
 sky130_fd_sc_hd__xnor2_2 _368_ (.A(_180_),
    .B(_184_),
    .Y(_185_));
 sky130_fd_sc_hd__a21oi_2 _369_ (.A1(net18),
    .A2(net1),
    .B1(_038_),
    .Y(_186_));
 sky130_fd_sc_hd__a21oi_2 _370_ (.A1(_078_),
    .A2(_185_),
    .B1(_186_),
    .Y(_046_));
 sky130_fd_sc_hd__a21o_2 _371_ (.A1(net20),
    .A2(_063_),
    .B1(\count_q[0] ),
    .X(_187_));
 sky130_fd_sc_hd__and3_2 _372_ (.A(net20),
    .B(_063_),
    .C(\count_q[0] ),
    .X(_188_));
 sky130_fd_sc_hd__and3b_2 _373_ (.A_N(_188_),
    .B(net1),
    .C(_187_),
    .X(_049_));
 sky130_fd_sc_hd__o21ai_2 _374_ (.A1(\count_q[1] ),
    .A2(_188_),
    .B1(net1),
    .Y(_189_));
 sky130_fd_sc_hd__a21oi_2 _375_ (.A1(\count_q[1] ),
    .A2(_188_),
    .B1(_189_),
    .Y(_050_));
 sky130_fd_sc_hd__a21o_2 _376_ (.A1(\count_q[2] ),
    .A2(net1),
    .B1(_038_),
    .X(_051_));
 sky130_fd_sc_hd__a21oi_2 _377_ (.A1(\count_q[2] ),
    .A2(_097_),
    .B1(_096_),
    .Y(_190_));
 sky130_fd_sc_hd__a31o_2 _378_ (.A1(\count_q[2] ),
    .A2(_096_),
    .A3(_097_),
    .B1(_062_),
    .X(_191_));
 sky130_fd_sc_hd__o221a_2 _379_ (.A1(net20),
    .A2(\sum_q[0] ),
    .B1(_190_),
    .B2(_191_),
    .C1(net1),
    .X(_052_));
 sky130_fd_sc_hd__or2_2 _380_ (.A(_094_),
    .B(_098_),
    .X(_192_));
 sky130_fd_sc_hd__nor2_2 _381_ (.A(\count_q[2] ),
    .B(_091_),
    .Y(_193_));
 sky130_fd_sc_hd__a311o_2 _382_ (.A1(\count_q[2] ),
    .A2(_099_),
    .A3(_192_),
    .B1(_193_),
    .C1(_062_),
    .X(_194_));
 sky130_fd_sc_hd__o211a_2 _383_ (.A1(net20),
    .A2(\sum_q[1] ),
    .B1(net1),
    .C1(_194_),
    .X(_053_));
 sky130_fd_sc_hd__nand2_2 _384_ (.A(net20),
    .B(_103_),
    .Y(_195_));
 sky130_fd_sc_hd__o211a_2 _385_ (.A1(net20),
    .A2(\sum_q[2] ),
    .B1(net1),
    .C1(_195_),
    .X(_054_));
 sky130_fd_sc_hd__nand2_2 _386_ (.A(net20),
    .B(_115_),
    .Y(_196_));
 sky130_fd_sc_hd__o211a_2 _387_ (.A1(net20),
    .A2(\sum_q[3] ),
    .B1(net1),
    .C1(_196_),
    .X(_055_));
 sky130_fd_sc_hd__or2_2 _388_ (.A(net20),
    .B(\sum_q[4] ),
    .X(_197_));
 sky130_fd_sc_hd__o211a_2 _389_ (.A1(_062_),
    .A2(_130_),
    .B1(_197_),
    .C1(net1),
    .X(_056_));
 sky130_fd_sc_hd__nand2_2 _390_ (.A(net20),
    .B(_145_),
    .Y(_198_));
 sky130_fd_sc_hd__o211a_2 _391_ (.A1(net20),
    .A2(\sum_q[5] ),
    .B1(net1),
    .C1(_198_),
    .X(_057_));
 sky130_fd_sc_hd__nand2_2 _392_ (.A(net10),
    .B(_160_),
    .Y(_199_));
 sky130_fd_sc_hd__o211a_2 _393_ (.A1(net10),
    .A2(\sum_q[6] ),
    .B1(net1),
    .C1(_199_),
    .X(_058_));
 sky130_fd_sc_hd__a211o_2 _394_ (.A1(\count_q[2] ),
    .A2(_174_),
    .B1(_167_),
    .C1(_062_),
    .X(_200_));
 sky130_fd_sc_hd__o211a_2 _395_ (.A1(net10),
    .A2(\sum_q[7] ),
    .B1(net1),
    .C1(_200_),
    .X(_059_));
 sky130_fd_sc_hd__or2_2 _396_ (.A(net10),
    .B(_002_),
    .X(_201_));
 sky130_fd_sc_hd__o311a_2 _397_ (.A1(_062_),
    .A2(_180_),
    .A3(_182_),
    .B1(_201_),
    .C1(net1),
    .X(_060_));
 sky130_fd_sc_hd__o21ai_2 _398_ (.A1(_003_),
    .A2(net10),
    .B1(net1),
    .Y(_202_));
 sky130_fd_sc_hd__a21oi_2 _399_ (.A1(net10),
    .A2(_185_),
    .B1(_202_),
    .Y(_061_));
 sky130_fd_sc_hd__and3_2 _400_ (.A(net1),
    .B(_067_),
    .C(_075_),
    .X(_047_));
 sky130_fd_sc_hd__o21a_2 _401_ (.A1(_068_),
    .A2(_076_),
    .B1(net1),
    .X(_048_));
 sky130_fd_sc_hd__dfxtp_2 _402_ (.CLK(clknet_3_0__leaf_clk),
    .D(_004_),
    .Q(\sample_mem[2][0] ));
 sky130_fd_sc_hd__dfxtp_2 _403_ (.CLK(clknet_3_2__leaf_clk),
    .D(_005_),
    .Q(\sample_mem[2][1] ));
 sky130_fd_sc_hd__dfxtp_2 _404_ (.CLK(clknet_3_0__leaf_clk),
    .D(_006_),
    .Q(\sample_mem[2][2] ));
 sky130_fd_sc_hd__dfxtp_2 _405_ (.CLK(clknet_3_1__leaf_clk),
    .D(_007_),
    .Q(\sample_mem[2][3] ));
 sky130_fd_sc_hd__dfxtp_2 _406_ (.CLK(clknet_3_4__leaf_clk),
    .D(_008_),
    .Q(\sample_mem[2][4] ));
 sky130_fd_sc_hd__dfxtp_2 _407_ (.CLK(clknet_3_1__leaf_clk),
    .D(_009_),
    .Q(\sample_mem[2][5] ));
 sky130_fd_sc_hd__dfxtp_2 _408_ (.CLK(clknet_3_1__leaf_clk),
    .D(_010_),
    .Q(\sample_mem[2][6] ));
 sky130_fd_sc_hd__dfxtp_2 _409_ (.CLK(clknet_3_1__leaf_clk),
    .D(_011_),
    .Q(\sample_mem[2][7] ));
 sky130_fd_sc_hd__dfxtp_2 _410_ (.CLK(clknet_3_0__leaf_clk),
    .D(_012_),
    .Q(\sample_mem[1][0] ));
 sky130_fd_sc_hd__dfxtp_2 _411_ (.CLK(clknet_3_2__leaf_clk),
    .D(_013_),
    .Q(\sample_mem[1][1] ));
 sky130_fd_sc_hd__dfxtp_2 _412_ (.CLK(clknet_3_3__leaf_clk),
    .D(_014_),
    .Q(\sample_mem[1][2] ));
 sky130_fd_sc_hd__dfxtp_2 _413_ (.CLK(clknet_3_3__leaf_clk),
    .D(_015_),
    .Q(\sample_mem[1][3] ));
 sky130_fd_sc_hd__dfxtp_2 _414_ (.CLK(clknet_3_6__leaf_clk),
    .D(_016_),
    .Q(\sample_mem[1][4] ));
 sky130_fd_sc_hd__dfxtp_2 _415_ (.CLK(clknet_3_3__leaf_clk),
    .D(_017_),
    .Q(\sample_mem[1][5] ));
 sky130_fd_sc_hd__dfxtp_2 _416_ (.CLK(clknet_3_1__leaf_clk),
    .D(_018_),
    .Q(\sample_mem[1][6] ));
 sky130_fd_sc_hd__dfxtp_2 _417_ (.CLK(clknet_3_4__leaf_clk),
    .D(_019_),
    .Q(\sample_mem[1][7] ));
 sky130_fd_sc_hd__dfxtp_2 _418_ (.CLK(clknet_3_0__leaf_clk),
    .D(_020_),
    .Q(\sample_mem[0][0] ));
 sky130_fd_sc_hd__dfxtp_2 _419_ (.CLK(clknet_3_2__leaf_clk),
    .D(_021_),
    .Q(\sample_mem[0][1] ));
 sky130_fd_sc_hd__dfxtp_2 _420_ (.CLK(clknet_3_3__leaf_clk),
    .D(_022_),
    .Q(\sample_mem[0][2] ));
 sky130_fd_sc_hd__dfxtp_2 _421_ (.CLK(clknet_3_3__leaf_clk),
    .D(_023_),
    .Q(\sample_mem[0][3] ));
 sky130_fd_sc_hd__dfxtp_2 _422_ (.CLK(clknet_3_6__leaf_clk),
    .D(_024_),
    .Q(\sample_mem[0][4] ));
 sky130_fd_sc_hd__dfxtp_2 _423_ (.CLK(clknet_3_1__leaf_clk),
    .D(_025_),
    .Q(\sample_mem[0][5] ));
 sky130_fd_sc_hd__dfxtp_2 _424_ (.CLK(clknet_3_0__leaf_clk),
    .D(_026_),
    .Q(\sample_mem[0][6] ));
 sky130_fd_sc_hd__dfxtp_2 _425_ (.CLK(clknet_3_1__leaf_clk),
    .D(_027_),
    .Q(\sample_mem[0][7] ));
 sky130_fd_sc_hd__dfxtp_2 _426_ (.CLK(clknet_3_0__leaf_clk),
    .D(_028_),
    .Q(\sample_mem[3][0] ));
 sky130_fd_sc_hd__dfxtp_2 _427_ (.CLK(clknet_3_2__leaf_clk),
    .D(_029_),
    .Q(\sample_mem[3][1] ));
 sky130_fd_sc_hd__dfxtp_2 _428_ (.CLK(clknet_3_2__leaf_clk),
    .D(_030_),
    .Q(\sample_mem[3][2] ));
 sky130_fd_sc_hd__dfxtp_2 _429_ (.CLK(clknet_3_3__leaf_clk),
    .D(_031_),
    .Q(\sample_mem[3][3] ));
 sky130_fd_sc_hd__dfxtp_2 _430_ (.CLK(clknet_3_4__leaf_clk),
    .D(_032_),
    .Q(\sample_mem[3][4] ));
 sky130_fd_sc_hd__dfxtp_2 _431_ (.CLK(clknet_3_1__leaf_clk),
    .D(_033_),
    .Q(\sample_mem[3][5] ));
 sky130_fd_sc_hd__dfxtp_2 _432_ (.CLK(clknet_3_1__leaf_clk),
    .D(_034_),
    .Q(\sample_mem[3][6] ));
 sky130_fd_sc_hd__dfxtp_2 _433_ (.CLK(clknet_3_4__leaf_clk),
    .D(_035_),
    .Q(\sample_mem[3][7] ));
 sky130_fd_sc_hd__dfxtp_2 _434_ (.CLK(clknet_3_0__leaf_clk),
    .D(_036_),
    .Q(_000_));
 sky130_fd_sc_hd__dfxtp_2 _435_ (.CLK(clknet_3_0__leaf_clk),
    .D(_037_),
    .Q(_001_));
 sky130_fd_sc_hd__dfxtp_2 _436_ (.CLK(clknet_3_7__leaf_clk),
    .D(_038_),
    .Q(net19));
 sky130_fd_sc_hd__dfxtp_2 _437_ (.CLK(clknet_3_6__leaf_clk),
    .D(_039_),
    .Q(net11));
 sky130_fd_sc_hd__dfxtp_2 _438_ (.CLK(clknet_3_6__leaf_clk),
    .D(_040_),
    .Q(net12));
 sky130_fd_sc_hd__dfxtp_2 _439_ (.CLK(clknet_3_7__leaf_clk),
    .D(_041_),
    .Q(net13));
 sky130_fd_sc_hd__dfxtp_2 _440_ (.CLK(clknet_3_7__leaf_clk),
    .D(_042_),
    .Q(net14));
 sky130_fd_sc_hd__dfxtp_2 _441_ (.CLK(clknet_3_5__leaf_clk),
    .D(_043_),
    .Q(net15));
 sky130_fd_sc_hd__dfxtp_2 _442_ (.CLK(clknet_3_5__leaf_clk),
    .D(_044_),
    .Q(net16));
 sky130_fd_sc_hd__dfxtp_2 _443_ (.CLK(clknet_3_5__leaf_clk),
    .D(_045_),
    .Q(net17));
 sky130_fd_sc_hd__dfxtp_2 _444_ (.CLK(clknet_3_5__leaf_clk),
    .D(_046_),
    .Q(net18));
 sky130_fd_sc_hd__dfxtp_2 _445_ (.CLK(clknet_3_0__leaf_clk),
    .D(_047_),
    .Q(\wr_ptr[0] ));
 sky130_fd_sc_hd__dfxtp_2 _446_ (.CLK(clknet_3_0__leaf_clk),
    .D(_048_),
    .Q(\wr_ptr[1] ));
 sky130_fd_sc_hd__dfxtp_2 _447_ (.CLK(clknet_3_7__leaf_clk),
    .D(_049_),
    .Q(\count_q[0] ));
 sky130_fd_sc_hd__dfxtp_2 _448_ (.CLK(clknet_3_7__leaf_clk),
    .D(_050_),
    .Q(\count_q[1] ));
 sky130_fd_sc_hd__dfxtp_2 _449_ (.CLK(clknet_3_7__leaf_clk),
    .D(_051_),
    .Q(\count_q[2] ));
 sky130_fd_sc_hd__dfxtp_2 _450_ (.CLK(clknet_3_2__leaf_clk),
    .D(_052_),
    .Q(\sum_q[0] ));
 sky130_fd_sc_hd__dfxtp_2 _451_ (.CLK(clknet_3_2__leaf_clk),
    .D(_053_),
    .Q(\sum_q[1] ));
 sky130_fd_sc_hd__dfxtp_2 _452_ (.CLK(clknet_3_2__leaf_clk),
    .D(_054_),
    .Q(\sum_q[2] ));
 sky130_fd_sc_hd__dfxtp_2 _453_ (.CLK(clknet_3_6__leaf_clk),
    .D(_055_),
    .Q(\sum_q[3] ));
 sky130_fd_sc_hd__dfxtp_2 _454_ (.CLK(clknet_3_6__leaf_clk),
    .D(_056_),
    .Q(\sum_q[4] ));
 sky130_fd_sc_hd__dfxtp_2 _455_ (.CLK(clknet_3_7__leaf_clk),
    .D(_057_),
    .Q(\sum_q[5] ));
 sky130_fd_sc_hd__dfxtp_2 _456_ (.CLK(clknet_3_4__leaf_clk),
    .D(_058_),
    .Q(\sum_q[6] ));
 sky130_fd_sc_hd__dfxtp_2 _457_ (.CLK(clknet_3_5__leaf_clk),
    .D(_059_),
    .Q(\sum_q[7] ));
 sky130_fd_sc_hd__dfxtp_2 _458_ (.CLK(clknet_3_5__leaf_clk),
    .D(_060_),
    .Q(_002_));
 sky130_fd_sc_hd__dfxtp_2 _459_ (.CLK(clknet_3_5__leaf_clk),
    .D(_061_),
    .Q(_003_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_clk (.A(clknet_0_clk),
    .X(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_clk (.A(clknet_0_clk),
    .X(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_clk (.A(clknet_0_clk),
    .X(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_clk (.A(clknet_0_clk),
    .X(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_clk (.A(clknet_0_clk),
    .X(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_clk (.A(clknet_0_clk),
    .X(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_clk (.A(clknet_0_clk),
    .X(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_clk (.A(clknet_0_clk),
    .X(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload1 (.A(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__bufinv_16 clkload2 (.A(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload3 (.A(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload4 (.A(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__bufinv_16 clkload5 (.A(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload6 (.A(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__buf_2 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input10 (.A(valid_in),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(sample_in[0]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(sample_in[1]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(sample_in[2]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input5 (.A(sample_in[3]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input6 (.A(sample_in[4]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input7 (.A(sample_in[5]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input8 (.A(sample_in[6]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input9 (.A(sample_in[7]),
    .X(net9));
 sky130_fd_sc_hd__buf_6 max_cap20 (.A(net10),
    .X(net20));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output11 (.A(net11),
    .X(avg_out[0]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output12 (.A(net12),
    .X(avg_out[1]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output13 (.A(net13),
    .X(avg_out[2]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output14 (.A(net14),
    .X(avg_out[3]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output15 (.A(net15),
    .X(avg_out[4]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output16 (.A(net16),
    .X(avg_out[5]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output17 (.A(net17),
    .X(avg_out[6]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output18 (.A(net18),
    .X(avg_out[7]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output19 (.A(net19),
    .X(valid_out));
endmodule
