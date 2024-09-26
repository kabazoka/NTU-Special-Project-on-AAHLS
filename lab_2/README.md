# AAHLS Lab#2 FIR Filter

## Introduction
透過兩個專案：
1. FIRN11MAXI
    * 以AXI-Master Interface為設計FIR IP。
    * 與Lab#1相同，包含hls, vvd以及ipy三大步驟的原始碼。
2. FIRN11Stream
    * 以AXI-Stream Interface為設計FIR IP。
    * 同上。

## Learnings
1. 算是附加上的學習，瞭解了FIR filter的原理及應用。
2. 在AXI-Stream的部分瞭解到這個介面的特殊性：FIR kernel不需要知道Memory address，而是透過DMA IP來input/output。
3. 延續前一點，在使用上DMA IP時需要連接input的memory to stream(MM2S)接線和output stream to memory(S2MM)。
4. 課程討論時了解到AXI bus的特性，同學在Block diagram上發現Core IP的HP0接線同時擔任in以及out的角色，因此瞭解到AXI為bus在做溝通，並非單純的一條接線。

## Result
[Github Link (FIRN11MAXI)](https://github.com/kabazoka/Special-Project-on-AAHLS/blob/main/lab_2/FIRN11MAXI.ipynb)
![image](https://hackmd.io/_uploads/HJkLiuz0R.png)


[Github Link (FIRN11Stream)](https://github.com/kabazoka/Special-Project-on-AAHLS/blob/main/lab_2/FIRN11Stream.ipynb)
![image](https://hackmd.io/_uploads/B1fPj_MRC.png)


# AAHLS Lab#1 Multiplication
1. 透過乘法器ip練習HLS流程，使用上Vitis HLS編譯C++ code，其中也有使用上#pragma HLS INTERFACE s_axilite 指令，這表式該函式的輸入與輸出都是透過 AXI Lite 介面進行資料傳輸。其中使用上Vitis HLS的C Synthesis, Co-simulation功能，最後Export IP。
2. 透過design1.tcl檔案自動化操作Vivado設計流程。引入Core IP以及剛剛完成的乘法器IP並指定線路，以產生Block Design。
![image](https://hackmd.io/_uploads/rJUE6KZ0A.png)

3. 最後透過Multip2Num.ipynb操作PS端，使用python調用乘法器ip模組，使用了 PYNQ 平台來與 FPGA 硬體進行互動並顯示乘法運算結果。

### Running Results on PYNQ
[Github link](https://github.com/kabazoka/Special-Project-on-AAHLS/blob/main/lab_1/Multip2Num.ipynb)

![image](https://hackmd.io/_uploads/HyCgsYZR0.png)
