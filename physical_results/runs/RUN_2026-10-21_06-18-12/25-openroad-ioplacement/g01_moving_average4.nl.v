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
 wire \count_q[0] ;
 wire \count_q[1] ;
 wire \count_q[2] ;
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
 wire \wr_ptr[0] ;
 wire \wr_ptr[1] ;

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
 sky130_fd_sc_hd__inv_2 _203_ (.A(valid_in),
    .Y(_062_));
 sky130_fd_sc_hd__inv_2 _204_ (.A(\count_q[2] ),
    .Y(_063_));
 sky130_fd_sc_hd__nand2_2 _205_ (.A(valid_in),
    .B(rst_n),
    .Y(_064_));
 sky130_fd_sc_hd__and4b_2 _206_ (.A_N(\wr_ptr[0] ),
    .B(rst_n),
    .C(valid_in),
    .D(\wr_ptr[1] ),
    .X(_065_));
 sky130_fd_sc_hd__and2b_2 _207_ (.A_N(_065_),
    .B(rst_n),
    .X(_066_));
 sky130_fd_sc_hd__a22o_2 _208_ (.A1(sample_in[0]),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][0] ),
    .X(_004_));
 sky130_fd_sc_hd__a22o_2 _209_ (.A1(sample_in[1]),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][1] ),
    .X(_005_));
 sky130_fd_sc_hd__a22o_2 _210_ (.A1(sample_in[2]),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][2] ),
    .X(_006_));
 sky130_fd_sc_hd__a22o_2 _211_ (.A1(sample_in[3]),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][3] ),
    .X(_007_));
 sky130_fd_sc_hd__a22o_2 _212_ (.A1(sample_in[4]),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][4] ),
    .X(_008_));
 sky130_fd_sc_hd__a22o_2 _213_ (.A1(sample_in[5]),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][5] ),
    .X(_009_));
 sky130_fd_sc_hd__a22o_2 _214_ (.A1(sample_in[6]),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][6] ),
    .X(_010_));
 sky130_fd_sc_hd__a22o_2 _215_ (.A1(sample_in[7]),
    .A2(_065_),
    .B1(_066_),
    .B2(\sample_mem[2][7] ),
    .X(_011_));
 sky130_fd_sc_hd__nand2_2 _216_ (.A(valid_in),
    .B(\wr_ptr[0] ),
    .Y(_067_));
 sky130_fd_sc_hd__nor2_2 _217_ (.A(\wr_ptr[1] ),
    .B(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__o21a_2 _218_ (.A1(\wr_ptr[1] ),
    .A2(_067_),
    .B1(rst_n),
    .X(_069_));
 sky130_fd_sc_hd__and3_2 _219_ (.A(valid_in),
    .B(rst_n),
    .C(_068_),
    .X(_070_));
 sky130_fd_sc_hd__a22o_2 _220_ (.A1(\sample_mem[1][0] ),
    .A2(_069_),
    .B1(_070_),
    .B2(sample_in[0]),
    .X(_012_));
 sky130_fd_sc_hd__a22o_2 _221_ (.A1(\sample_mem[1][1] ),
    .A2(_069_),
    .B1(_070_),
    .B2(sample_in[1]),
    .X(_013_));
 sky130_fd_sc_hd__a22o_2 _222_ (.A1(\sample_mem[1][2] ),
    .A2(_069_),
    .B1(_070_),
    .B2(sample_in[2]),
    .X(_014_));
 sky130_fd_sc_hd__a22o_2 _223_ (.A1(\sample_mem[1][3] ),
    .A2(_069_),
    .B1(_070_),
    .B2(sample_in[3]),
    .X(_015_));
 sky130_fd_sc_hd__a22o_2 _224_ (.A1(\sample_mem[1][4] ),
    .A2(_069_),
    .B1(_070_),
    .B2(sample_in[4]),
    .X(_016_));
 sky130_fd_sc_hd__a22o_2 _225_ (.A1(\sample_mem[1][5] ),
    .A2(_069_),
    .B1(_070_),
    .B2(sample_in[5]),
    .X(_017_));
 sky130_fd_sc_hd__a22o_2 _226_ (.A1(\sample_mem[1][6] ),
    .A2(_069_),
    .B1(_070_),
    .B2(sample_in[6]),
    .X(_018_));
 sky130_fd_sc_hd__a22o_2 _227_ (.A1(\sample_mem[1][7] ),
    .A2(_069_),
    .B1(_070_),
    .B2(sample_in[7]),
    .X(_019_));
 sky130_fd_sc_hd__nor3_2 _228_ (.A(\wr_ptr[1] ),
    .B(\wr_ptr[0] ),
    .C(_064_),
    .Y(_071_));
 sky130_fd_sc_hd__and2b_2 _229_ (.A_N(_071_),
    .B(rst_n),
    .X(_072_));
 sky130_fd_sc_hd__a22o_2 _230_ (.A1(sample_in[0]),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][0] ),
    .X(_020_));
 sky130_fd_sc_hd__a22o_2 _231_ (.A1(sample_in[1]),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][1] ),
    .X(_021_));
 sky130_fd_sc_hd__a22o_2 _232_ (.A1(sample_in[2]),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][2] ),
    .X(_022_));
 sky130_fd_sc_hd__a22o_2 _233_ (.A1(sample_in[3]),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][3] ),
    .X(_023_));
 sky130_fd_sc_hd__a22o_2 _234_ (.A1(sample_in[4]),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][4] ),
    .X(_024_));
 sky130_fd_sc_hd__a22o_2 _235_ (.A1(sample_in[5]),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][5] ),
    .X(_025_));
 sky130_fd_sc_hd__a22o_2 _236_ (.A1(sample_in[6]),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][6] ),
    .X(_026_));
 sky130_fd_sc_hd__a22o_2 _237_ (.A1(sample_in[7]),
    .A2(_071_),
    .B1(_072_),
    .B2(\sample_mem[0][7] ),
    .X(_027_));
 sky130_fd_sc_hd__a2bb2o_2 _238_ (.A1_N(\wr_ptr[1] ),
    .A2_N(_064_),
    .B1(_067_),
    .B2(rst_n),
    .X(_073_));
 sky130_fd_sc_hd__nor2_2 _239_ (.A(_064_),
    .B(_073_),
    .Y(_074_));
 sky130_fd_sc_hd__a22o_2 _240_ (.A1(\sample_mem[3][0] ),
    .A2(_073_),
    .B1(_074_),
    .B2(sample_in[0]),
    .X(_028_));
 sky130_fd_sc_hd__a22o_2 _241_ (.A1(\sample_mem[3][1] ),
    .A2(_073_),
    .B1(_074_),
    .B2(sample_in[1]),
    .X(_029_));
 sky130_fd_sc_hd__a22o_2 _242_ (.A1(\sample_mem[3][2] ),
    .A2(_073_),
    .B1(_074_),
    .B2(sample_in[2]),
    .X(_030_));
 sky130_fd_sc_hd__a22o_2 _243_ (.A1(\sample_mem[3][3] ),
    .A2(_073_),
    .B1(_074_),
    .B2(sample_in[3]),
    .X(_031_));
 sky130_fd_sc_hd__a22o_2 _244_ (.A1(\sample_mem[3][4] ),
    .A2(_073_),
    .B1(_074_),
    .B2(sample_in[4]),
    .X(_032_));
 sky130_fd_sc_hd__a22o_2 _245_ (.A1(\sample_mem[3][5] ),
    .A2(_073_),
    .B1(_074_),
    .B2(sample_in[5]),
    .X(_033_));
 sky130_fd_sc_hd__a22o_2 _246_ (.A1(\sample_mem[3][6] ),
    .A2(_073_),
    .B1(_074_),
    .B2(sample_in[6]),
    .X(_034_));
 sky130_fd_sc_hd__a22o_2 _247_ (.A1(\sample_mem[3][7] ),
    .A2(_073_),
    .B1(_074_),
    .B2(sample_in[7]),
    .X(_035_));
 sky130_fd_sc_hd__or2_2 _248_ (.A(valid_in),
    .B(\wr_ptr[0] ),
    .X(_075_));
 sky130_fd_sc_hd__and3_2 _249_ (.A(rst_n),
    .B(_067_),
    .C(_075_),
    .X(_036_));
 sky130_fd_sc_hd__and2_2 _250_ (.A(\wr_ptr[1] ),
    .B(_067_),
    .X(_076_));
 sky130_fd_sc_hd__o21a_2 _251_ (.A1(_068_),
    .A2(_076_),
    .B1(rst_n),
    .X(_037_));
 sky130_fd_sc_hd__a21o_2 _252_ (.A1(\count_q[1] ),
    .A2(\count_q[0] ),
    .B1(\count_q[2] ),
    .X(_077_));
 sky130_fd_sc_hd__and2_2 _253_ (.A(valid_in),
    .B(_077_),
    .X(_078_));
 sky130_fd_sc_hd__nand2_2 _254_ (.A(valid_in),
    .B(_077_),
    .Y(_079_));
 sky130_fd_sc_hd__and3_2 _255_ (.A(valid_in),
    .B(rst_n),
    .C(_077_),
    .X(_038_));
 sky130_fd_sc_hd__nand2_2 _256_ (.A(\sum_q[1] ),
    .B(sample_in[1]),
    .Y(_080_));
 sky130_fd_sc_hd__nand2_2 _257_ (.A(\sum_q[0] ),
    .B(sample_in[0]),
    .Y(_081_));
 sky130_fd_sc_hd__xnor2_2 _258_ (.A(\sum_q[1] ),
    .B(sample_in[1]),
    .Y(_082_));
 sky130_fd_sc_hd__o21ai_2 _259_ (.A1(_081_),
    .A2(_082_),
    .B1(_080_),
    .Y(_083_));
 sky130_fd_sc_hd__and2_2 _260_ (.A(\sum_q[2] ),
    .B(sample_in[2]),
    .X(_084_));
 sky130_fd_sc_hd__or2_2 _261_ (.A(\sum_q[2] ),
    .B(sample_in[2]),
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
    .B(sample_in[0]),
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
 sky130_fd_sc_hd__o211a_2 _281_ (.A1(avg_out[0]),
    .A2(_078_),
    .B1(_104_),
    .C1(rst_n),
    .X(_039_));
 sky130_fd_sc_hd__nand2_2 _282_ (.A(\sum_q[3] ),
    .B(sample_in[3]),
    .Y(_105_));
 sky130_fd_sc_hd__or2_2 _283_ (.A(\sum_q[3] ),
    .B(sample_in[3]),
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
 sky130_fd_sc_hd__o211a_2 _294_ (.A1(avg_out[1]),
    .A2(_078_),
    .B1(_116_),
    .C1(rst_n),
    .X(_040_));
 sky130_fd_sc_hd__and2_2 _295_ (.A(\sum_q[4] ),
    .B(sample_in[4]),
    .X(_117_));
 sky130_fd_sc_hd__or2_2 _296_ (.A(\sum_q[4] ),
    .B(sample_in[4]),
    .X(_118_));
 sky130_fd_sc_hd__nand2b_2 _297_ (.A_N(_117_),
    .B(_118_),
    .Y(_119_));
 sky130_fd_sc_hd__a221o_2 _298_ (.A1(\sum_q[3] ),
    .A2(sample_in[3]),
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
 sky130_fd_sc_hd__or2_2 _309_ (.A(avg_out[2]),
    .B(_078_),
    .X(_131_));
 sky130_fd_sc_hd__o211a_2 _310_ (.A1(_079_),
    .A2(_130_),
    .B1(_131_),
    .C1(rst_n),
    .X(_041_));
 sky130_fd_sc_hd__a31o_2 _311_ (.A1(_106_),
    .A2(_118_),
    .A3(_120_),
    .B1(_117_),
    .X(_132_));
 sky130_fd_sc_hd__nor2_2 _312_ (.A(\sum_q[5] ),
    .B(sample_in[5]),
    .Y(_133_));
 sky130_fd_sc_hd__or2_2 _313_ (.A(\sum_q[5] ),
    .B(sample_in[5]),
    .X(_134_));
 sky130_fd_sc_hd__and2_2 _314_ (.A(\sum_q[5] ),
    .B(sample_in[5]),
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
 sky130_fd_sc_hd__o211a_2 _326_ (.A1(avg_out[3]),
    .A2(_078_),
    .B1(_146_),
    .C1(rst_n),
    .X(_042_));
 sky130_fd_sc_hd__and2_2 _327_ (.A(\sum_q[6] ),
    .B(sample_in[6]),
    .X(_147_));
 sky130_fd_sc_hd__or2_2 _328_ (.A(\sum_q[6] ),
    .B(sample_in[6]),
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
 sky130_fd_sc_hd__o211a_2 _342_ (.A1(avg_out[4]),
    .A2(_078_),
    .B1(_161_),
    .C1(rst_n),
    .X(_043_));
 sky130_fd_sc_hd__nand2_2 _343_ (.A(\sum_q[7] ),
    .B(sample_in[7]),
    .Y(_162_));
 sky130_fd_sc_hd__or2_2 _344_ (.A(\sum_q[7] ),
    .B(sample_in[7]),
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
 sky130_fd_sc_hd__o211a_2 _357_ (.A1(avg_out[5]),
    .A2(_078_),
    .B1(_175_),
    .C1(rst_n),
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
 sky130_fd_sc_hd__or2_2 _365_ (.A(avg_out[6]),
    .B(_078_),
    .X(_183_));
 sky130_fd_sc_hd__o311a_2 _366_ (.A1(_079_),
    .A2(_180_),
    .A3(_182_),
    .B1(_183_),
    .C1(rst_n),
    .X(_045_));
 sky130_fd_sc_hd__xnor2_2 _367_ (.A(_003_),
    .B(_177_),
    .Y(_184_));
 sky130_fd_sc_hd__xnor2_2 _368_ (.A(_180_),
    .B(_184_),
    .Y(_185_));
 sky130_fd_sc_hd__a21oi_2 _369_ (.A1(avg_out[7]),
    .A2(rst_n),
    .B1(_038_),
    .Y(_186_));
 sky130_fd_sc_hd__a21oi_2 _370_ (.A1(_078_),
    .A2(_185_),
    .B1(_186_),
    .Y(_046_));
 sky130_fd_sc_hd__a21o_2 _371_ (.A1(valid_in),
    .A2(_063_),
    .B1(\count_q[0] ),
    .X(_187_));
 sky130_fd_sc_hd__and3_2 _372_ (.A(valid_in),
    .B(_063_),
    .C(\count_q[0] ),
    .X(_188_));
 sky130_fd_sc_hd__and3b_2 _373_ (.A_N(_188_),
    .B(rst_n),
    .C(_187_),
    .X(_049_));
 sky130_fd_sc_hd__o21ai_2 _374_ (.A1(\count_q[1] ),
    .A2(_188_),
    .B1(rst_n),
    .Y(_189_));
 sky130_fd_sc_hd__a21oi_2 _375_ (.A1(\count_q[1] ),
    .A2(_188_),
    .B1(_189_),
    .Y(_050_));
 sky130_fd_sc_hd__a21o_2 _376_ (.A1(\count_q[2] ),
    .A2(rst_n),
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
 sky130_fd_sc_hd__o221a_2 _379_ (.A1(valid_in),
    .A2(\sum_q[0] ),
    .B1(_190_),
    .B2(_191_),
    .C1(rst_n),
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
 sky130_fd_sc_hd__o211a_2 _383_ (.A1(valid_in),
    .A2(\sum_q[1] ),
    .B1(rst_n),
    .C1(_194_),
    .X(_053_));
 sky130_fd_sc_hd__nand2_2 _384_ (.A(valid_in),
    .B(_103_),
    .Y(_195_));
 sky130_fd_sc_hd__o211a_2 _385_ (.A1(valid_in),
    .A2(\sum_q[2] ),
    .B1(rst_n),
    .C1(_195_),
    .X(_054_));
 sky130_fd_sc_hd__nand2_2 _386_ (.A(valid_in),
    .B(_115_),
    .Y(_196_));
 sky130_fd_sc_hd__o211a_2 _387_ (.A1(valid_in),
    .A2(\sum_q[3] ),
    .B1(rst_n),
    .C1(_196_),
    .X(_055_));
 sky130_fd_sc_hd__or2_2 _388_ (.A(valid_in),
    .B(\sum_q[4] ),
    .X(_197_));
 sky130_fd_sc_hd__o211a_2 _389_ (.A1(_062_),
    .A2(_130_),
    .B1(_197_),
    .C1(rst_n),
    .X(_056_));
 sky130_fd_sc_hd__nand2_2 _390_ (.A(valid_in),
    .B(_145_),
    .Y(_198_));
 sky130_fd_sc_hd__o211a_2 _391_ (.A1(valid_in),
    .A2(\sum_q[5] ),
    .B1(rst_n),
    .C1(_198_),
    .X(_057_));
 sky130_fd_sc_hd__nand2_2 _392_ (.A(valid_in),
    .B(_160_),
    .Y(_199_));
 sky130_fd_sc_hd__o211a_2 _393_ (.A1(valid_in),
    .A2(\sum_q[6] ),
    .B1(rst_n),
    .C1(_199_),
    .X(_058_));
 sky130_fd_sc_hd__a211o_2 _394_ (.A1(\count_q[2] ),
    .A2(_174_),
    .B1(_167_),
    .C1(_062_),
    .X(_200_));
 sky130_fd_sc_hd__o211a_2 _395_ (.A1(valid_in),
    .A2(\sum_q[7] ),
    .B1(rst_n),
    .C1(_200_),
    .X(_059_));
 sky130_fd_sc_hd__or2_2 _396_ (.A(valid_in),
    .B(_002_),
    .X(_201_));
 sky130_fd_sc_hd__o311a_2 _397_ (.A1(_062_),
    .A2(_180_),
    .A3(_182_),
    .B1(_201_),
    .C1(rst_n),
    .X(_060_));
 sky130_fd_sc_hd__o21ai_2 _398_ (.A1(_003_),
    .A2(valid_in),
    .B1(rst_n),
    .Y(_202_));
 sky130_fd_sc_hd__a21oi_2 _399_ (.A1(valid_in),
    .A2(_185_),
    .B1(_202_),
    .Y(_061_));
 sky130_fd_sc_hd__and3_2 _400_ (.A(rst_n),
    .B(_067_),
    .C(_075_),
    .X(_047_));
 sky130_fd_sc_hd__o21a_2 _401_ (.A1(_068_),
    .A2(_076_),
    .B1(rst_n),
    .X(_048_));
 sky130_fd_sc_hd__dfxtp_2 _402_ (.CLK(clk),
    .D(_004_),
    .Q(\sample_mem[2][0] ));
 sky130_fd_sc_hd__dfxtp_2 _403_ (.CLK(clk),
    .D(_005_),
    .Q(\sample_mem[2][1] ));
 sky130_fd_sc_hd__dfxtp_2 _404_ (.CLK(clk),
    .D(_006_),
    .Q(\sample_mem[2][2] ));
 sky130_fd_sc_hd__dfxtp_2 _405_ (.CLK(clk),
    .D(_007_),
    .Q(\sample_mem[2][3] ));
 sky130_fd_sc_hd__dfxtp_2 _406_ (.CLK(clk),
    .D(_008_),
    .Q(\sample_mem[2][4] ));
 sky130_fd_sc_hd__dfxtp_2 _407_ (.CLK(clk),
    .D(_009_),
    .Q(\sample_mem[2][5] ));
 sky130_fd_sc_hd__dfxtp_2 _408_ (.CLK(clk),
    .D(_010_),
    .Q(\sample_mem[2][6] ));
 sky130_fd_sc_hd__dfxtp_2 _409_ (.CLK(clk),
    .D(_011_),
    .Q(\sample_mem[2][7] ));
 sky130_fd_sc_hd__dfxtp_2 _410_ (.CLK(clk),
    .D(_012_),
    .Q(\sample_mem[1][0] ));
 sky130_fd_sc_hd__dfxtp_2 _411_ (.CLK(clk),
    .D(_013_),
    .Q(\sample_mem[1][1] ));
 sky130_fd_sc_hd__dfxtp_2 _412_ (.CLK(clk),
    .D(_014_),
    .Q(\sample_mem[1][2] ));
 sky130_fd_sc_hd__dfxtp_2 _413_ (.CLK(clk),
    .D(_015_),
    .Q(\sample_mem[1][3] ));
 sky130_fd_sc_hd__dfxtp_2 _414_ (.CLK(clk),
    .D(_016_),
    .Q(\sample_mem[1][4] ));
 sky130_fd_sc_hd__dfxtp_2 _415_ (.CLK(clk),
    .D(_017_),
    .Q(\sample_mem[1][5] ));
 sky130_fd_sc_hd__dfxtp_2 _416_ (.CLK(clk),
    .D(_018_),
    .Q(\sample_mem[1][6] ));
 sky130_fd_sc_hd__dfxtp_2 _417_ (.CLK(clk),
    .D(_019_),
    .Q(\sample_mem[1][7] ));
 sky130_fd_sc_hd__dfxtp_2 _418_ (.CLK(clk),
    .D(_020_),
    .Q(\sample_mem[0][0] ));
 sky130_fd_sc_hd__dfxtp_2 _419_ (.CLK(clk),
    .D(_021_),
    .Q(\sample_mem[0][1] ));
 sky130_fd_sc_hd__dfxtp_2 _420_ (.CLK(clk),
    .D(_022_),
    .Q(\sample_mem[0][2] ));
 sky130_fd_sc_hd__dfxtp_2 _421_ (.CLK(clk),
    .D(_023_),
    .Q(\sample_mem[0][3] ));
 sky130_fd_sc_hd__dfxtp_2 _422_ (.CLK(clk),
    .D(_024_),
    .Q(\sample_mem[0][4] ));
 sky130_fd_sc_hd__dfxtp_2 _423_ (.CLK(clk),
    .D(_025_),
    .Q(\sample_mem[0][5] ));
 sky130_fd_sc_hd__dfxtp_2 _424_ (.CLK(clk),
    .D(_026_),
    .Q(\sample_mem[0][6] ));
 sky130_fd_sc_hd__dfxtp_2 _425_ (.CLK(clk),
    .D(_027_),
    .Q(\sample_mem[0][7] ));
 sky130_fd_sc_hd__dfxtp_2 _426_ (.CLK(clk),
    .D(_028_),
    .Q(\sample_mem[3][0] ));
 sky130_fd_sc_hd__dfxtp_2 _427_ (.CLK(clk),
    .D(_029_),
    .Q(\sample_mem[3][1] ));
 sky130_fd_sc_hd__dfxtp_2 _428_ (.CLK(clk),
    .D(_030_),
    .Q(\sample_mem[3][2] ));
 sky130_fd_sc_hd__dfxtp_2 _429_ (.CLK(clk),
    .D(_031_),
    .Q(\sample_mem[3][3] ));
 sky130_fd_sc_hd__dfxtp_2 _430_ (.CLK(clk),
    .D(_032_),
    .Q(\sample_mem[3][4] ));
 sky130_fd_sc_hd__dfxtp_2 _431_ (.CLK(clk),
    .D(_033_),
    .Q(\sample_mem[3][5] ));
 sky130_fd_sc_hd__dfxtp_2 _432_ (.CLK(clk),
    .D(_034_),
    .Q(\sample_mem[3][6] ));
 sky130_fd_sc_hd__dfxtp_2 _433_ (.CLK(clk),
    .D(_035_),
    .Q(\sample_mem[3][7] ));
 sky130_fd_sc_hd__dfxtp_2 _434_ (.CLK(clk),
    .D(_036_),
    .Q(_000_));
 sky130_fd_sc_hd__dfxtp_2 _435_ (.CLK(clk),
    .D(_037_),
    .Q(_001_));
 sky130_fd_sc_hd__dfxtp_2 _436_ (.CLK(clk),
    .D(_038_),
    .Q(valid_out));
 sky130_fd_sc_hd__dfxtp_2 _437_ (.CLK(clk),
    .D(_039_),
    .Q(avg_out[0]));
 sky130_fd_sc_hd__dfxtp_2 _438_ (.CLK(clk),
    .D(_040_),
    .Q(avg_out[1]));
 sky130_fd_sc_hd__dfxtp_2 _439_ (.CLK(clk),
    .D(_041_),
    .Q(avg_out[2]));
 sky130_fd_sc_hd__dfxtp_2 _440_ (.CLK(clk),
    .D(_042_),
    .Q(avg_out[3]));
 sky130_fd_sc_hd__dfxtp_2 _441_ (.CLK(clk),
    .D(_043_),
    .Q(avg_out[4]));
 sky130_fd_sc_hd__dfxtp_2 _442_ (.CLK(clk),
    .D(_044_),
    .Q(avg_out[5]));
 sky130_fd_sc_hd__dfxtp_2 _443_ (.CLK(clk),
    .D(_045_),
    .Q(avg_out[6]));
 sky130_fd_sc_hd__dfxtp_2 _444_ (.CLK(clk),
    .D(_046_),
    .Q(avg_out[7]));
 sky130_fd_sc_hd__dfxtp_2 _445_ (.CLK(clk),
    .D(_047_),
    .Q(\wr_ptr[0] ));
 sky130_fd_sc_hd__dfxtp_2 _446_ (.CLK(clk),
    .D(_048_),
    .Q(\wr_ptr[1] ));
 sky130_fd_sc_hd__dfxtp_2 _447_ (.CLK(clk),
    .D(_049_),
    .Q(\count_q[0] ));
 sky130_fd_sc_hd__dfxtp_2 _448_ (.CLK(clk),
    .D(_050_),
    .Q(\count_q[1] ));
 sky130_fd_sc_hd__dfxtp_2 _449_ (.CLK(clk),
    .D(_051_),
    .Q(\count_q[2] ));
 sky130_fd_sc_hd__dfxtp_2 _450_ (.CLK(clk),
    .D(_052_),
    .Q(\sum_q[0] ));
 sky130_fd_sc_hd__dfxtp_2 _451_ (.CLK(clk),
    .D(_053_),
    .Q(\sum_q[1] ));
 sky130_fd_sc_hd__dfxtp_2 _452_ (.CLK(clk),
    .D(_054_),
    .Q(\sum_q[2] ));
 sky130_fd_sc_hd__dfxtp_2 _453_ (.CLK(clk),
    .D(_055_),
    .Q(\sum_q[3] ));
 sky130_fd_sc_hd__dfxtp_2 _454_ (.CLK(clk),
    .D(_056_),
    .Q(\sum_q[4] ));
 sky130_fd_sc_hd__dfxtp_2 _455_ (.CLK(clk),
    .D(_057_),
    .Q(\sum_q[5] ));
 sky130_fd_sc_hd__dfxtp_2 _456_ (.CLK(clk),
    .D(_058_),
    .Q(\sum_q[6] ));
 sky130_fd_sc_hd__dfxtp_2 _457_ (.CLK(clk),
    .D(_059_),
    .Q(\sum_q[7] ));
 sky130_fd_sc_hd__dfxtp_2 _458_ (.CLK(clk),
    .D(_060_),
    .Q(_002_));
 sky130_fd_sc_hd__dfxtp_2 _459_ (.CLK(clk),
    .D(_061_),
    .Q(_003_));
endmodule
