sxtwl 寿星天文历 python扩展
====
原作者:许建伟先生(福建莆田第十中学),<天文算法>译者.
许建伟先生根据天文算法推算农历,提供了精准的农历年历表,将古代真实日历推算到公元前104年（与实历相符），公元前104年以前及1960年以后的农历使用现代算法,由于原程序使用js编码,lifulinghan[github](https://github.com/yuangu/sxtwl_cpp)实现了c++版本.
为了使用方便,我就将c++版本封装为python版.
使用方法:
运行命令:
swig -python -c++ sxtwl.i
python setup.py install
