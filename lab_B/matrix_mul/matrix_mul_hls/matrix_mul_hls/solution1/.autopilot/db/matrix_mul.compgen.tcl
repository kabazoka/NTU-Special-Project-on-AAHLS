# This script segment is generated automatically by AutoPilot

set name matrix_mul_fadd_32ns_32ns_32_7_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 6 ALLOW_PRAGMA 1
}


set name matrix_mul_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name matrix_mul_mul_32ns_32ns_63_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set id 532
set name matrix_mul_mux_25632_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 0
set din14_width 32
set din14_signed 0
set din15_width 32
set din15_signed 0
set din16_width 32
set din16_signed 0
set din17_width 32
set din17_signed 0
set din18_width 32
set din18_signed 0
set din19_width 32
set din19_signed 0
set din20_width 32
set din20_signed 0
set din21_width 32
set din21_signed 0
set din22_width 32
set din22_signed 0
set din23_width 32
set din23_signed 0
set din24_width 32
set din24_signed 0
set din25_width 32
set din25_signed 0
set din26_width 32
set din26_signed 0
set din27_width 32
set din27_signed 0
set din28_width 32
set din28_signed 0
set din29_width 32
set din29_signed 0
set din30_width 32
set din30_signed 0
set din31_width 32
set din31_signed 0
set din32_width 32
set din32_signed 0
set din33_width 32
set din33_signed 0
set din34_width 32
set din34_signed 0
set din35_width 32
set din35_signed 0
set din36_width 32
set din36_signed 0
set din37_width 32
set din37_signed 0
set din38_width 32
set din38_signed 0
set din39_width 32
set din39_signed 0
set din40_width 32
set din40_signed 0
set din41_width 32
set din41_signed 0
set din42_width 32
set din42_signed 0
set din43_width 32
set din43_signed 0
set din44_width 32
set din44_signed 0
set din45_width 32
set din45_signed 0
set din46_width 32
set din46_signed 0
set din47_width 32
set din47_signed 0
set din48_width 32
set din48_signed 0
set din49_width 32
set din49_signed 0
set din50_width 32
set din50_signed 0
set din51_width 32
set din51_signed 0
set din52_width 32
set din52_signed 0
set din53_width 32
set din53_signed 0
set din54_width 32
set din54_signed 0
set din55_width 32
set din55_signed 0
set din56_width 32
set din56_signed 0
set din57_width 32
set din57_signed 0
set din58_width 32
set din58_signed 0
set din59_width 32
set din59_signed 0
set din60_width 32
set din60_signed 0
set din61_width 32
set din61_signed 0
set din62_width 32
set din62_signed 0
set din63_width 32
set din63_signed 0
set din64_width 32
set din64_signed 0
set din65_width 32
set din65_signed 0
set din66_width 32
set din66_signed 0
set din67_width 32
set din67_signed 0
set din68_width 32
set din68_signed 0
set din69_width 32
set din69_signed 0
set din70_width 32
set din70_signed 0
set din71_width 32
set din71_signed 0
set din72_width 32
set din72_signed 0
set din73_width 32
set din73_signed 0
set din74_width 32
set din74_signed 0
set din75_width 32
set din75_signed 0
set din76_width 32
set din76_signed 0
set din77_width 32
set din77_signed 0
set din78_width 32
set din78_signed 0
set din79_width 32
set din79_signed 0
set din80_width 32
set din80_signed 0
set din81_width 32
set din81_signed 0
set din82_width 32
set din82_signed 0
set din83_width 32
set din83_signed 0
set din84_width 32
set din84_signed 0
set din85_width 32
set din85_signed 0
set din86_width 32
set din86_signed 0
set din87_width 32
set din87_signed 0
set din88_width 32
set din88_signed 0
set din89_width 32
set din89_signed 0
set din90_width 32
set din90_signed 0
set din91_width 32
set din91_signed 0
set din92_width 32
set din92_signed 0
set din93_width 32
set din93_signed 0
set din94_width 32
set din94_signed 0
set din95_width 32
set din95_signed 0
set din96_width 32
set din96_signed 0
set din97_width 32
set din97_signed 0
set din98_width 32
set din98_signed 0
set din99_width 32
set din99_signed 0
set din100_width 32
set din100_signed 0
set din101_width 32
set din101_signed 0
set din102_width 32
set din102_signed 0
set din103_width 32
set din103_signed 0
set din104_width 32
set din104_signed 0
set din105_width 32
set din105_signed 0
set din106_width 32
set din106_signed 0
set din107_width 32
set din107_signed 0
set din108_width 32
set din108_signed 0
set din109_width 32
set din109_signed 0
set din110_width 32
set din110_signed 0
set din111_width 32
set din111_signed 0
set din112_width 32
set din112_signed 0
set din113_width 32
set din113_signed 0
set din114_width 32
set din114_signed 0
set din115_width 32
set din115_signed 0
set din116_width 32
set din116_signed 0
set din117_width 32
set din117_signed 0
set din118_width 32
set din118_signed 0
set din119_width 32
set din119_signed 0
set din120_width 32
set din120_signed 0
set din121_width 32
set din121_signed 0
set din122_width 32
set din122_signed 0
set din123_width 32
set din123_signed 0
set din124_width 32
set din124_signed 0
set din125_width 32
set din125_signed 0
set din126_width 32
set din126_signed 0
set din127_width 32
set din127_signed 0
set din128_width 32
set din128_signed 0
set din129_width 32
set din129_signed 0
set din130_width 32
set din130_signed 0
set din131_width 32
set din131_signed 0
set din132_width 32
set din132_signed 0
set din133_width 32
set din133_signed 0
set din134_width 32
set din134_signed 0
set din135_width 32
set din135_signed 0
set din136_width 32
set din136_signed 0
set din137_width 32
set din137_signed 0
set din138_width 32
set din138_signed 0
set din139_width 32
set din139_signed 0
set din140_width 32
set din140_signed 0
set din141_width 32
set din141_signed 0
set din142_width 32
set din142_signed 0
set din143_width 32
set din143_signed 0
set din144_width 32
set din144_signed 0
set din145_width 32
set din145_signed 0
set din146_width 32
set din146_signed 0
set din147_width 32
set din147_signed 0
set din148_width 32
set din148_signed 0
set din149_width 32
set din149_signed 0
set din150_width 32
set din150_signed 0
set din151_width 32
set din151_signed 0
set din152_width 32
set din152_signed 0
set din153_width 32
set din153_signed 0
set din154_width 32
set din154_signed 0
set din155_width 32
set din155_signed 0
set din156_width 32
set din156_signed 0
set din157_width 32
set din157_signed 0
set din158_width 32
set din158_signed 0
set din159_width 32
set din159_signed 0
set din160_width 32
set din160_signed 0
set din161_width 32
set din161_signed 0
set din162_width 32
set din162_signed 0
set din163_width 32
set din163_signed 0
set din164_width 32
set din164_signed 0
set din165_width 32
set din165_signed 0
set din166_width 32
set din166_signed 0
set din167_width 32
set din167_signed 0
set din168_width 32
set din168_signed 0
set din169_width 32
set din169_signed 0
set din170_width 32
set din170_signed 0
set din171_width 32
set din171_signed 0
set din172_width 32
set din172_signed 0
set din173_width 32
set din173_signed 0
set din174_width 32
set din174_signed 0
set din175_width 32
set din175_signed 0
set din176_width 32
set din176_signed 0
set din177_width 32
set din177_signed 0
set din178_width 32
set din178_signed 0
set din179_width 32
set din179_signed 0
set din180_width 32
set din180_signed 0
set din181_width 32
set din181_signed 0
set din182_width 32
set din182_signed 0
set din183_width 32
set din183_signed 0
set din184_width 32
set din184_signed 0
set din185_width 32
set din185_signed 0
set din186_width 32
set din186_signed 0
set din187_width 32
set din187_signed 0
set din188_width 32
set din188_signed 0
set din189_width 32
set din189_signed 0
set din190_width 32
set din190_signed 0
set din191_width 32
set din191_signed 0
set din192_width 32
set din192_signed 0
set din193_width 32
set din193_signed 0
set din194_width 32
set din194_signed 0
set din195_width 32
set din195_signed 0
set din196_width 32
set din196_signed 0
set din197_width 32
set din197_signed 0
set din198_width 32
set din198_signed 0
set din199_width 32
set din199_signed 0
set din200_width 32
set din200_signed 0
set din201_width 32
set din201_signed 0
set din202_width 32
set din202_signed 0
set din203_width 32
set din203_signed 0
set din204_width 32
set din204_signed 0
set din205_width 32
set din205_signed 0
set din206_width 32
set din206_signed 0
set din207_width 32
set din207_signed 0
set din208_width 32
set din208_signed 0
set din209_width 32
set din209_signed 0
set din210_width 32
set din210_signed 0
set din211_width 32
set din211_signed 0
set din212_width 32
set din212_signed 0
set din213_width 32
set din213_signed 0
set din214_width 32
set din214_signed 0
set din215_width 32
set din215_signed 0
set din216_width 32
set din216_signed 0
set din217_width 32
set din217_signed 0
set din218_width 32
set din218_signed 0
set din219_width 32
set din219_signed 0
set din220_width 32
set din220_signed 0
set din221_width 32
set din221_signed 0
set din222_width 32
set din222_signed 0
set din223_width 32
set din223_signed 0
set din224_width 32
set din224_signed 0
set din225_width 32
set din225_signed 0
set din226_width 32
set din226_signed 0
set din227_width 32
set din227_signed 0
set din228_width 32
set din228_signed 0
set din229_width 32
set din229_signed 0
set din230_width 32
set din230_signed 0
set din231_width 32
set din231_signed 0
set din232_width 32
set din232_signed 0
set din233_width 32
set din233_signed 0
set din234_width 32
set din234_signed 0
set din235_width 32
set din235_signed 0
set din236_width 32
set din236_signed 0
set din237_width 32
set din237_signed 0
set din238_width 32
set din238_signed 0
set din239_width 32
set din239_signed 0
set din240_width 32
set din240_signed 0
set din241_width 32
set din241_signed 0
set din242_width 32
set din242_signed 0
set din243_width 32
set din243_signed 0
set din244_width 32
set din244_signed 0
set din245_width 32
set din245_signed 0
set din246_width 32
set din246_signed 0
set din247_width 32
set din247_signed 0
set din248_width 32
set din248_signed 0
set din249_width 32
set din249_signed 0
set din250_width 32
set din250_signed 0
set din251_width 32
set din251_signed 0
set din252_width 32
set din252_signed 0
set din253_width 32
set din253_signed 0
set din254_width 32
set din254_signed 0
set din255_width 32
set din255_signed 0
set din256_width 32
set din256_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    din65_width ${din65_width} \
    din65_signed ${din65_signed} \
    din66_width ${din66_width} \
    din66_signed ${din66_signed} \
    din67_width ${din67_width} \
    din67_signed ${din67_signed} \
    din68_width ${din68_width} \
    din68_signed ${din68_signed} \
    din69_width ${din69_width} \
    din69_signed ${din69_signed} \
    din70_width ${din70_width} \
    din70_signed ${din70_signed} \
    din71_width ${din71_width} \
    din71_signed ${din71_signed} \
    din72_width ${din72_width} \
    din72_signed ${din72_signed} \
    din73_width ${din73_width} \
    din73_signed ${din73_signed} \
    din74_width ${din74_width} \
    din74_signed ${din74_signed} \
    din75_width ${din75_width} \
    din75_signed ${din75_signed} \
    din76_width ${din76_width} \
    din76_signed ${din76_signed} \
    din77_width ${din77_width} \
    din77_signed ${din77_signed} \
    din78_width ${din78_width} \
    din78_signed ${din78_signed} \
    din79_width ${din79_width} \
    din79_signed ${din79_signed} \
    din80_width ${din80_width} \
    din80_signed ${din80_signed} \
    din81_width ${din81_width} \
    din81_signed ${din81_signed} \
    din82_width ${din82_width} \
    din82_signed ${din82_signed} \
    din83_width ${din83_width} \
    din83_signed ${din83_signed} \
    din84_width ${din84_width} \
    din84_signed ${din84_signed} \
    din85_width ${din85_width} \
    din85_signed ${din85_signed} \
    din86_width ${din86_width} \
    din86_signed ${din86_signed} \
    din87_width ${din87_width} \
    din87_signed ${din87_signed} \
    din88_width ${din88_width} \
    din88_signed ${din88_signed} \
    din89_width ${din89_width} \
    din89_signed ${din89_signed} \
    din90_width ${din90_width} \
    din90_signed ${din90_signed} \
    din91_width ${din91_width} \
    din91_signed ${din91_signed} \
    din92_width ${din92_width} \
    din92_signed ${din92_signed} \
    din93_width ${din93_width} \
    din93_signed ${din93_signed} \
    din94_width ${din94_width} \
    din94_signed ${din94_signed} \
    din95_width ${din95_width} \
    din95_signed ${din95_signed} \
    din96_width ${din96_width} \
    din96_signed ${din96_signed} \
    din97_width ${din97_width} \
    din97_signed ${din97_signed} \
    din98_width ${din98_width} \
    din98_signed ${din98_signed} \
    din99_width ${din99_width} \
    din99_signed ${din99_signed} \
    din100_width ${din100_width} \
    din100_signed ${din100_signed} \
    din101_width ${din101_width} \
    din101_signed ${din101_signed} \
    din102_width ${din102_width} \
    din102_signed ${din102_signed} \
    din103_width ${din103_width} \
    din103_signed ${din103_signed} \
    din104_width ${din104_width} \
    din104_signed ${din104_signed} \
    din105_width ${din105_width} \
    din105_signed ${din105_signed} \
    din106_width ${din106_width} \
    din106_signed ${din106_signed} \
    din107_width ${din107_width} \
    din107_signed ${din107_signed} \
    din108_width ${din108_width} \
    din108_signed ${din108_signed} \
    din109_width ${din109_width} \
    din109_signed ${din109_signed} \
    din110_width ${din110_width} \
    din110_signed ${din110_signed} \
    din111_width ${din111_width} \
    din111_signed ${din111_signed} \
    din112_width ${din112_width} \
    din112_signed ${din112_signed} \
    din113_width ${din113_width} \
    din113_signed ${din113_signed} \
    din114_width ${din114_width} \
    din114_signed ${din114_signed} \
    din115_width ${din115_width} \
    din115_signed ${din115_signed} \
    din116_width ${din116_width} \
    din116_signed ${din116_signed} \
    din117_width ${din117_width} \
    din117_signed ${din117_signed} \
    din118_width ${din118_width} \
    din118_signed ${din118_signed} \
    din119_width ${din119_width} \
    din119_signed ${din119_signed} \
    din120_width ${din120_width} \
    din120_signed ${din120_signed} \
    din121_width ${din121_width} \
    din121_signed ${din121_signed} \
    din122_width ${din122_width} \
    din122_signed ${din122_signed} \
    din123_width ${din123_width} \
    din123_signed ${din123_signed} \
    din124_width ${din124_width} \
    din124_signed ${din124_signed} \
    din125_width ${din125_width} \
    din125_signed ${din125_signed} \
    din126_width ${din126_width} \
    din126_signed ${din126_signed} \
    din127_width ${din127_width} \
    din127_signed ${din127_signed} \
    din128_width ${din128_width} \
    din128_signed ${din128_signed} \
    din129_width ${din129_width} \
    din129_signed ${din129_signed} \
    din130_width ${din130_width} \
    din130_signed ${din130_signed} \
    din131_width ${din131_width} \
    din131_signed ${din131_signed} \
    din132_width ${din132_width} \
    din132_signed ${din132_signed} \
    din133_width ${din133_width} \
    din133_signed ${din133_signed} \
    din134_width ${din134_width} \
    din134_signed ${din134_signed} \
    din135_width ${din135_width} \
    din135_signed ${din135_signed} \
    din136_width ${din136_width} \
    din136_signed ${din136_signed} \
    din137_width ${din137_width} \
    din137_signed ${din137_signed} \
    din138_width ${din138_width} \
    din138_signed ${din138_signed} \
    din139_width ${din139_width} \
    din139_signed ${din139_signed} \
    din140_width ${din140_width} \
    din140_signed ${din140_signed} \
    din141_width ${din141_width} \
    din141_signed ${din141_signed} \
    din142_width ${din142_width} \
    din142_signed ${din142_signed} \
    din143_width ${din143_width} \
    din143_signed ${din143_signed} \
    din144_width ${din144_width} \
    din144_signed ${din144_signed} \
    din145_width ${din145_width} \
    din145_signed ${din145_signed} \
    din146_width ${din146_width} \
    din146_signed ${din146_signed} \
    din147_width ${din147_width} \
    din147_signed ${din147_signed} \
    din148_width ${din148_width} \
    din148_signed ${din148_signed} \
    din149_width ${din149_width} \
    din149_signed ${din149_signed} \
    din150_width ${din150_width} \
    din150_signed ${din150_signed} \
    din151_width ${din151_width} \
    din151_signed ${din151_signed} \
    din152_width ${din152_width} \
    din152_signed ${din152_signed} \
    din153_width ${din153_width} \
    din153_signed ${din153_signed} \
    din154_width ${din154_width} \
    din154_signed ${din154_signed} \
    din155_width ${din155_width} \
    din155_signed ${din155_signed} \
    din156_width ${din156_width} \
    din156_signed ${din156_signed} \
    din157_width ${din157_width} \
    din157_signed ${din157_signed} \
    din158_width ${din158_width} \
    din158_signed ${din158_signed} \
    din159_width ${din159_width} \
    din159_signed ${din159_signed} \
    din160_width ${din160_width} \
    din160_signed ${din160_signed} \
    din161_width ${din161_width} \
    din161_signed ${din161_signed} \
    din162_width ${din162_width} \
    din162_signed ${din162_signed} \
    din163_width ${din163_width} \
    din163_signed ${din163_signed} \
    din164_width ${din164_width} \
    din164_signed ${din164_signed} \
    din165_width ${din165_width} \
    din165_signed ${din165_signed} \
    din166_width ${din166_width} \
    din166_signed ${din166_signed} \
    din167_width ${din167_width} \
    din167_signed ${din167_signed} \
    din168_width ${din168_width} \
    din168_signed ${din168_signed} \
    din169_width ${din169_width} \
    din169_signed ${din169_signed} \
    din170_width ${din170_width} \
    din170_signed ${din170_signed} \
    din171_width ${din171_width} \
    din171_signed ${din171_signed} \
    din172_width ${din172_width} \
    din172_signed ${din172_signed} \
    din173_width ${din173_width} \
    din173_signed ${din173_signed} \
    din174_width ${din174_width} \
    din174_signed ${din174_signed} \
    din175_width ${din175_width} \
    din175_signed ${din175_signed} \
    din176_width ${din176_width} \
    din176_signed ${din176_signed} \
    din177_width ${din177_width} \
    din177_signed ${din177_signed} \
    din178_width ${din178_width} \
    din178_signed ${din178_signed} \
    din179_width ${din179_width} \
    din179_signed ${din179_signed} \
    din180_width ${din180_width} \
    din180_signed ${din180_signed} \
    din181_width ${din181_width} \
    din181_signed ${din181_signed} \
    din182_width ${din182_width} \
    din182_signed ${din182_signed} \
    din183_width ${din183_width} \
    din183_signed ${din183_signed} \
    din184_width ${din184_width} \
    din184_signed ${din184_signed} \
    din185_width ${din185_width} \
    din185_signed ${din185_signed} \
    din186_width ${din186_width} \
    din186_signed ${din186_signed} \
    din187_width ${din187_width} \
    din187_signed ${din187_signed} \
    din188_width ${din188_width} \
    din188_signed ${din188_signed} \
    din189_width ${din189_width} \
    din189_signed ${din189_signed} \
    din190_width ${din190_width} \
    din190_signed ${din190_signed} \
    din191_width ${din191_width} \
    din191_signed ${din191_signed} \
    din192_width ${din192_width} \
    din192_signed ${din192_signed} \
    din193_width ${din193_width} \
    din193_signed ${din193_signed} \
    din194_width ${din194_width} \
    din194_signed ${din194_signed} \
    din195_width ${din195_width} \
    din195_signed ${din195_signed} \
    din196_width ${din196_width} \
    din196_signed ${din196_signed} \
    din197_width ${din197_width} \
    din197_signed ${din197_signed} \
    din198_width ${din198_width} \
    din198_signed ${din198_signed} \
    din199_width ${din199_width} \
    din199_signed ${din199_signed} \
    din200_width ${din200_width} \
    din200_signed ${din200_signed} \
    din201_width ${din201_width} \
    din201_signed ${din201_signed} \
    din202_width ${din202_width} \
    din202_signed ${din202_signed} \
    din203_width ${din203_width} \
    din203_signed ${din203_signed} \
    din204_width ${din204_width} \
    din204_signed ${din204_signed} \
    din205_width ${din205_width} \
    din205_signed ${din205_signed} \
    din206_width ${din206_width} \
    din206_signed ${din206_signed} \
    din207_width ${din207_width} \
    din207_signed ${din207_signed} \
    din208_width ${din208_width} \
    din208_signed ${din208_signed} \
    din209_width ${din209_width} \
    din209_signed ${din209_signed} \
    din210_width ${din210_width} \
    din210_signed ${din210_signed} \
    din211_width ${din211_width} \
    din211_signed ${din211_signed} \
    din212_width ${din212_width} \
    din212_signed ${din212_signed} \
    din213_width ${din213_width} \
    din213_signed ${din213_signed} \
    din214_width ${din214_width} \
    din214_signed ${din214_signed} \
    din215_width ${din215_width} \
    din215_signed ${din215_signed} \
    din216_width ${din216_width} \
    din216_signed ${din216_signed} \
    din217_width ${din217_width} \
    din217_signed ${din217_signed} \
    din218_width ${din218_width} \
    din218_signed ${din218_signed} \
    din219_width ${din219_width} \
    din219_signed ${din219_signed} \
    din220_width ${din220_width} \
    din220_signed ${din220_signed} \
    din221_width ${din221_width} \
    din221_signed ${din221_signed} \
    din222_width ${din222_width} \
    din222_signed ${din222_signed} \
    din223_width ${din223_width} \
    din223_signed ${din223_signed} \
    din224_width ${din224_width} \
    din224_signed ${din224_signed} \
    din225_width ${din225_width} \
    din225_signed ${din225_signed} \
    din226_width ${din226_width} \
    din226_signed ${din226_signed} \
    din227_width ${din227_width} \
    din227_signed ${din227_signed} \
    din228_width ${din228_width} \
    din228_signed ${din228_signed} \
    din229_width ${din229_width} \
    din229_signed ${din229_signed} \
    din230_width ${din230_width} \
    din230_signed ${din230_signed} \
    din231_width ${din231_width} \
    din231_signed ${din231_signed} \
    din232_width ${din232_width} \
    din232_signed ${din232_signed} \
    din233_width ${din233_width} \
    din233_signed ${din233_signed} \
    din234_width ${din234_width} \
    din234_signed ${din234_signed} \
    din235_width ${din235_width} \
    din235_signed ${din235_signed} \
    din236_width ${din236_width} \
    din236_signed ${din236_signed} \
    din237_width ${din237_width} \
    din237_signed ${din237_signed} \
    din238_width ${din238_width} \
    din238_signed ${din238_signed} \
    din239_width ${din239_width} \
    din239_signed ${din239_signed} \
    din240_width ${din240_width} \
    din240_signed ${din240_signed} \
    din241_width ${din241_width} \
    din241_signed ${din241_signed} \
    din242_width ${din242_width} \
    din242_signed ${din242_signed} \
    din243_width ${din243_width} \
    din243_signed ${din243_signed} \
    din244_width ${din244_width} \
    din244_signed ${din244_signed} \
    din245_width ${din245_width} \
    din245_signed ${din245_signed} \
    din246_width ${din246_width} \
    din246_signed ${din246_signed} \
    din247_width ${din247_width} \
    din247_signed ${din247_signed} \
    din248_width ${din248_width} \
    din248_signed ${din248_signed} \
    din249_width ${din249_width} \
    din249_signed ${din249_signed} \
    din250_width ${din250_width} \
    din250_signed ${din250_signed} \
    din251_width ${din251_width} \
    din251_signed ${din251_signed} \
    din252_width ${din252_width} \
    din252_signed ${din252_signed} \
    din253_width ${din253_width} \
    din253_signed ${din253_signed} \
    din254_width ${din254_width} \
    din254_signed ${din254_signed} \
    din255_width ${din255_width} \
    din255_signed ${din255_signed} \
    din256_width ${din256_width} \
    din256_signed ${din256_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 538
set hasByteEnable 0
set MemName matrix_mul_local_A_RAM_AUTO_1R1W
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 256
set AddrWd 8
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 0
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.196
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 539
set hasByteEnable 0
set MemName matrix_mul_local_C_RAM_AUTO_1R1W
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 65536
set AddrWd 16
set impl_style auto
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 0
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.248
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


set name matrix_mul_gmem0_m_axi
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


set name matrix_mul_gmem1_m_axi
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


set name matrix_mul_gmem2_m_axi
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
A { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
B { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
C { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
M { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
N { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
K { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 68
	offset_end 75
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 540 \
			corename matrix_mul_control_axilite \
			name matrix_mul_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode COR \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler matrix_mul_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


