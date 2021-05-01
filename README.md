# verification-userexample
## example bitstream
现有一个模块，具体要求如下
1、输入端口为三组命令、数据、响应，信号为clk、cvld、cdata[31:0]、dvld、ddata[31:0]、rvld、rdata[31:0]
2、输出端口一组vld、data[39:0]、enab
3、命令2'b11、数据2'b10、响应2'b01标志位用2bit数据表示，与32位数据拼接位34位数据，在输出端组合形式为{data0[33:0],data1[33:28]},{data1[27:0],data2{33:22}}
4、输入端口所有数据均为有效数据
5、输出端口在无有效数据输出时需要插入{2'b11,{4{8'h5a}}}以表示idle状态

需要设计vip实现上述功能单元的验证
