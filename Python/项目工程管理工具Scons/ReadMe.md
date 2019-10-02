# make

在Linux系统上做过c/c++开发的同学们都知道一个项目工程管理工具：make和Makefile。

make 这个工具自上个世纪 70 年代 Stuart Feldman 在贝尔实验室开发出以来，就一直是类 UNIX 程序员的最爱之一。

通过检查文件的修改时间，make 工具可以知道编译目标文件所要依赖的其他文件。在复杂的项目中，如果只有少数几个文件修改过，make 工具知道仅仅需要对哪些文件重新编译就可以确保目标程序被正确的编译链接。这样做的好处就是在编译中，不仅可以节省大量的重复输入，还可以确保程序可以被正确的链接，缩短编译的时间。

虽然如此，但是为 make 工具编写建造规则却不是一件容易的事。它复杂的配置规则，即使是有经验的开发者也望而生畏。

那么，今天介绍一个它的同类产品，也可以说是升级产品：Scons，它做的事情跟make一样，但更简单，更容易。


# Scons是什么

Scons是一个开放源码、以Python语言编码的自动化构建工具，可用来替代make编写复杂的makefile。并且scons是跨平台的，只要scons脚本写的好，可以在Linux和Windows下随意编译。

SCons 的设计目标就是让开发人员更容易、更可靠和更快速的建造软件。

与传统的 make 工具比较，SCons 具有以下优点：

>使用 Python 脚本做为配置文件  
对于 C,C++ 和 Fortran, 内建支持可靠自动依赖分析 . 不用像 make 工具那样需要 执行"make depends"和"make clean"就可以获得所有的依赖关系。  
内建支持 C, C++, D, Java, Fortran, Yacc, Lex, Qt，SWIG 以及 Tex/Latex。 用户还可以根据自己的需要进行扩展以获得对需要编程语言的支持。  
支持 make -j 风格的并行建造。相比 make -j, SCons 可以同时运行 N 个工作，而 不用担心代码的层次结构。
使用 Autoconf 风格查找头文件，函数库，函数和类型定义。  
良好的夸平台性。SCons 可以运行在 Linux, AIX, BSD, HP/UX, IRIX, Solaris, Windows, Mac OS X 和 OS/2 上。
