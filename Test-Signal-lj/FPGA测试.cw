#每个通道最大可编写256M个采样点，单通道ch和marker长度一致
#ch可输出±500mV，电压垂直精度16bits
#marker固定输出1V，只可编写0/1
#AWG4100采样率1GSa/s，1ns/Sa

w1_wave = WAVE([0] * 100 + [500] * 5 + [0] * 1895);
W1 = w1_wave;

w2_wave = WAVE([0] * 200 + [500] * 5 + [0] * 1795);
W2 = w2_wave;

w3_wave = WAVE([0] * 150 + [500] * 5 + [0] * 1845);
W3 = w3_wave;

w4_wave = WAVE([0] * 50 + [500] * 5 + [0] * 1945);
W4 = w4_wave;

OUT1 = SQN([W1(1)]);
OUT2 = SQN([W2(1)]);
OUT3 = SQN([W3(1)]);
OUT4 = SQN([W4(1)]);