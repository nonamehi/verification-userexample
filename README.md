# verification-userexample
## example bitstream
现有一个模块，具体要求如下
* 输入端口为三组并行命令、数据、响应，信号为clk、reset_n、full（o），cvld、cdata[31:0]、dvld、ddata[31:0]、rvld、rdata[31:0]，如果同时为命令、数据、响应的顺序依次轮询输入
* 输出端口一组vld、data[39:0]、enable（i）
* 命令2'b11、数据2'b10、响应2'b01标志位用2bit数据表示，与32位数据拼接为34位数据，在输出端组合形式为{data0[33:0],data1[33:28]},{data1[27:0],data2{33:22}}
* 输入端口所有数据均为有效数据
* 输出端口在无有效数据输出时需要插入{2'b11,{4{8'h5a}}}以表示idle状态
* 在开始的时候一直发送idle信号进行输出的配对，如果配对成功则enable为1，表明module可以正常进行数据发送
* valid在reset且使能为一直为高
需要设计vip实现上述功能单元的验证
使用不可综合语法进行模块功能实现

### 计划
