# -*- coding:utf-8 -*-
from distutils.core import setup, Extension   

sxtwl_module = Extension('_sxtwl',#注意这里的名字和下划线，编译你自己的项目时只需要用你的模块名字替换hello就可以了
                         include_dirs=['/usr/include/python3.6m/'],#这一行是指定你的头文件的位置，可以指定多个，用逗号分隔
                         library_dirs=[''],#这一行定义你的库文件的位置
                         libraries=['python3.6m'],#这一行是重点。如果你的C++中使用了其他.a和.so库，就需要在这里指定，这些库文件必须在上一行中指定的目录中
                         
                         sources=['sxtwl_wrap.cxx', 'src/eph.cpp', 'src/JD.cpp', 'src/SSQ.cpp', 'src/lunar.cpp'], #这一行中指定要编译的.cpp文件，必须把第一步中生成的.cxx文件和项目中的所有.cpp文件都加进来
                           )
setup (name = 'sxtwl',         #这里定义一些模块的基本信息
       version = '0.1',
       author = "SWIG Docs",
       description = """Sxtwl""",
       ext_modules = [sxtwl_module],
       py_modules = ["sxtwl"],
)
