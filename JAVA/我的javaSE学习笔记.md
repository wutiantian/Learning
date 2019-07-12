我的JAVASE自学笔记

作者：吴甜甜

个人博客网站： wutiantian.github.io

---



#  基础知识

学习书籍：《疯狂JAVA讲义》李刚

## 搭建命令行编译环境

- 下载软件jdk  

>jdk是开发java要用到的工具，里面包括 ①jre (java runtime environment)  ②一些基础类文件   

对于①：里面有```java虚拟机```(最终编写的java代码```真正被执行的地方```)即可。  
对于②：做个比喻，如果你想```盖房子```，那这些基础类文件就是```砖块```。我们的程序基本上要```全部依靠```这些基础类文件去实现。


- 环境变量的系统变量配置

 a、 ”```Path```” 环境变量，点击编辑，新增一个值，值为```jdk的bin目录路径```。

 告诉计算机去哪找javac.exe 或者java.exe这个程序。计算机会遍历path环境变量的所有值.

 
 b、 新建一个名为 ”```classpath```” 的环境变量，并把值 设为”.”  

注意: 一定要是英文输入法，半角下的 ”.”  在windows系统下是```当前目录``` 的意思 , 告诉javac.exe 或者java.exe 怎么理解后面的参数.  


举个例子 : javac HelloWorld.java 这段命令。  

①Path告诉计算机去jdk的bin目录下寻找”javac.exe”这个程序.  

②classpath就告诉计算在当前文件夹寻找 Hello.java 这个文件。”.”  意味表示当前目录。所以我们需要使用cd命令进入到你创建文件的目录下。




## 编译运行第一个java程序

目标：第一个java程序是```输出一行英文: ” Hello World!”```.  

①在合适的位置建立一个txt文本文件.并```将后缀改为.java```. 并将这个文件改名为HelloWorld.java并且记住这个文件所在的路径.

②编写一段HelloWorld的代码，注意课上所说的```缩进，括号成对，输入法保持在英文  等习惯```，这个时候不用知道这段代码为什么长这样.  

```
class HelloWorld{  
	public static void main(String[] args){  
		System.out.println("Hello World!");	  
	}  
	
}
```

③按ctrl+s键保存一下写的代码.
④开始按钮搜索框，输入 ”```cmd```” 右击管理员权限，打开命令行，然后利用 cd 命令进入第一步创建的文件的目录下:  

a. ```javac```命令 ``` 编译```源文件成```class文件```.  

javac命令格式:    javac+空格+文件名+”.java”
注意：与“文件名”要一致。

b. ```java```命令```执行```class文件.  
 
java 命令格式:     java + 空格+文件名

注意：与文件的class名要一致。

**一个文件java程序里可以写多个class类**，但编译后的文件有对应class类的多个执行文件，需要执行其中哪个编译后文件由类名决定。

多个class名可以与文件名不一致。注意运行时的名字不要弄错。


```
例如：
文件名Entrance.java

class Entrance1{
	public static void main(String[] args){
		System.out.println("HelloWorld!");
	}
}
class A{}
class B{}
执行:javac Entrance.java//编译一个文件
生成3个文件：Entrance1.class、A.class、B.class
```


## 变量

- 申请变量的完整格式

对于计算机来说，申请一个变量会发生三件事：  
①计算机会申请多少空间去存储这个变量的值   
②计算机需要知道这块空间的一个凭证  
③计算机要知道这个变量的值是什么。  

int age=18;

对于上面这句完整的申请变量的语句,一定会告诉计算机①②③。
那对于①来说，变量类型 int就告诉计算机会分配```32 位(4个字节)空间```来存储申请的变量的值
那对于②来说，变量名字 age 就是可以访问那块内存的```起始地址```。
那对于③来说，变量的值 18 就告诉计算机那块内存``存储的值是``18.


- 命名规定

1.应该以```字母、下划线或者美元符号开头```  
2.变量名没有长度限制  
3.变量名对```大小写敏感```  
4.变量名不能是java的关键字(e.g: class public void等等)  

- 驼峰命名(规范)  

1.变量名应该用```有意义```的英文单词   
2.变量名字若只有一个英文单词，则所有的字母需要小写  
3.变量名字若由多个英文单词组成，则从```第二个单词开始首字母大写``` 

## 类名

- 写法：首字母大写

- 一个类只能有一个public类class名，并且需要与文件名相同。（可以有其他非public的class类名）

- 类与类之间的交流，多态性找到其他不同的类是核心。


## 进制转换

计算机的存储单位关系如下:  
1 MB=1024KB=1024*1000 Byte(字节)=1024*1000*8 Bit  
1 Byte(字节)=8 Bit(位)  
Bit（位）就是计算机最小的存储单位，叫做位。  
对于计算机来说，所有数据都是通过二进制存储的。计算机的每一个位只能表示 0或者1  


- 由大进制转小进制

```配凑法```

将十进制数字100 转换成 8bit二进制数字  
步骤：  
a.  log2100=6.64 从而选取结果6，得到第一个数字 01000000=64  【拆取最大】

b.  100-64=36 log236=5.17 从而选取结果5，得到第二个数字 00100000=32  【拼凑】

c.  100-64-32=4    log24=2 从而选取结果2得到第三个数字00000100=4 并且余数为0  

d.  将这几个数字相加便得到01100100  
 
将下列十进制数字转换成4位7进制数字
402
步骤：
a.402拆取,402=343+59, 最大值为7^3为1000
b.59=49=10,49=7^2为 0100，10为 0013
c.将3个二进制数相加，1000、0100、0013即为1113



- 由小进制转大进制

```进制为底数的指数和```

将二进制数字01100100转换成十进制数  
结果：0*2^7+1*2^6+1*2^5+0*2^4+0*2^3+1*2^2+0*2^1+0*2^0=100


## 原码和补码

>三者关系：十进制<->原码<->补码

>原码：是一种二进制表示法，分为符号位 和 数值域。

符号位为0表示正数，符号位为1表示负数。数值域表示该数的大小（绝对值）。 

注意：符号位总是位于最左边，即最高位，除了符号位，剩下的所有位都被称为数值域。

注意：用```原码表示数字0的时候，有两种方法```: 例如在用8bit（位），即8位二进制数存储数字时：0000 0000 和 1000 0000 都代表十进制数字0。

所以原码和十进制不是一一对应。

8bit转换：  

- ```原码```转换成```十进制数```： 

①00000101转换为十进制数的过程：1*20+0*21+1*22+0*23=+5  
②10000101转换为十进制数的过程：1*20+0*21+1*22+0*23=5 但是最高位是1，所以这个原码10000101代表的十进制就是-5.

- ```十进制数```转换成```原码```：

①98用我们之前的方法写成二进制是1100010
所以三个二进制数相加得到:1000 000+0100000+0000010=1100010
所以这个时候我们补上```符号位```在```最左边```，因为98是正数所以我们补上一个0在最左边得到0110 0010

>补码： 另外一种二进制表示法。范围：-128~+127=256 个

- 补码和原码符号位一样，当一个原码为正整数时，补码和原码的数值域一样。  

原码转换为补码：
0000 1110（原码）：因为符号位上是0，所以是正整数，从而补码等于原码，所以补码也为 0000 1110.



- 当原码为负整数时，将原码的```数值域取反并且加1```就是补码的数值域。  
（计算机存储数字时都是以补码的形式存储的！！！！）


1000 1110（原码）：符号位是1，所以是```负整数```，从而补码的数值域和原码不同,```符号位依然为1,数值位取反，并且加1```.最终10001110(原码)转换为补码为 1111 0010

补码和十进制是一一对应。

- 补码转换成原码：

将补码看成原码，再次求补码即可。

注意：在用补码表示十进制数字时，0只有一种表示方法：例如在8bit（位），即8位二进制数存储数字时：只有0000 0000 代表十进制数字0。

## Java基本数据类型


- 数值类型根据表示范围大小排序
1.整型排序： byte<short<int<long
2.浮点排序： float<double
3.所有排序： byte<short<int<long<float<double

- 有什么用？
数值型变量赋值：  

1 . ```超过```数的表示范围会报错！ 

2 . 对于```整数```，java默认是```int```，对于```小数```java默认是```double```(例子：3是int，0.3是double)  

3 . 当我们在变量赋值的时候，```大范围```赋给```小范围```会报错，```小范围``` 赋给```大范围```没有问题！  
(```小范围```转```大范围```，实际上小的会被```转成大的```)
举例:  double a=1; ```等价于``` double a=1.0d;  

4 . 当对数字进行```四则运算```时，会选取```最大范围```的作为结果(例子:(3L+3)是long；0.3f+3是float)

5 . ```byte```和```short```比较特殊，当用```int```赋值给```byte```和```short```时，只要整数的值位于```byte```或者```short```本身的```***范围内***```，就```不会报错```(例子: byte=127正确; byte=128报错)  

6 . 如果你希望```忽略精度丢失```这种错误(一般都是```大转小```)，可以采取强转的策略.但是注意精度丢失后的问题:  
举例: int a= (int)3.5;System.out.println(a);--->打印的结果是3



- 编码集
```ascii标准编码集```介绍：  
对每一个```字符``，给定一个```8位```二进制数字与之对应，并且这个二进制数字(```最高位固定位0，使用后面7位```)，然后这些二级制数字与字符的```对应表```就叫做ascii标准编码集。  

注意：```Java```在存储```char类型字符```的时候并没有采用ascii标准编码集，而是采用```unicode编码集```。unicode编码集是一种```十六位的二进制编码集```。  
例子: char c=```97```;``` 等价于``` char  c=’```a```’；  

##  运算符

- 算数运算符  

1 .	常规运算符(+ - * / %)  
加减乘除求余四则运算,注意```参考 java基本数据类型```。

2 .自增运算符 (i++ ; ++i) 和 自减运算符( --i ; i--)  
我们采用 i++ 和 ++i 给大家讲解，自减运算符遵从同等的原理。

例子：  
int i=1;  
i++; 整个式子的返回值为```i的原值```，即为1.  
++i; 整个式子的返回值为```i增加后的值```，即为2.  
那对于i本身的值来说，无论是i++或是++i，只要经过自增运算符后，i的值都会增加1。

>```所以当我们讨论i本身的值的时候 i++ 和++i 没有区别(都为一个值)```。

但是讨论整个式子的返回值时，区别如上！


``` 
/**1.无论是a或者b,如果讨论```i本身的值```，那a和b都会让i本身的值增加1.  
 *2.如果讨论的是自增运算符作为一个``整体的``返回值，那就有区别了  
 *i++,作为一个整体的返回值是i的原值。  
 *++i,作为一个整体的返回值是i增加1后的值  
 *分析四块b=(a++)+(++a)+(a++)+(++a);    
 *0,2,2,4,则b为8  
 */  
public class Entrance {  
public static void main(String[] args) {  
	int a=0;  
	int b=(a++)+(++a)+(a++)+(++a);  
	System.out.println(b);  
}  
}  
```

- 关系运算符 ( >  <   >=  <=  ==)

一般使用关系运算符```返回一个布尔类型的值```。
例子: boolean a=3>1;  



- 逻辑运算符 (!  &   |   ^   &&   ||)

1 .```！```：加在一个布尔类型表达式前，表示取反。  

2 .``` &```: 加在两个布尔类型表达式中间(返回值是布尔型)表示”```与```”的含义：只有两个布尔值```都为true```的情况下才为```true```. 若```第一个```布尔表达式为```错误```，```依然会执行```第二个布尔表达式。也可以加在```整型中间```(返回值是整型)，表示位与运算。

```
/**b=(a++>0)&(a++>0)
 * 第一块为0，第二块为2,左右两边都会运算，比较笨
 * 所以a为2，b为false
 * 加在两个布尔类型表达式中间(返回值是布尔型)表示”与”的含义：
 * 只有两个布尔值都为true的情况下才为true. 若第一个布尔表达式为错误，
 * 依然会执行第二个布尔表达式。也可以加在整型中间(返回值是整型)，表示位与运算。
 */
package firstDay;

public abstract class ZiZeng {
public static void main(String[] args) {
	int a=0;
	boolean b=(a++>0)&(a++>0);
			System.out.println(a);
			System.out.println(b);
}
}
```

3 . ```|```: 加在两个布尔类型表达式中间表示”```或```”的含义：```只要```两个布尔值有```一个为true```那么整个式子就是```true```. 若```第一个```布尔表达式为```正确```，```依然会执行```第二个布尔表达式。也可以加在```整型中间```(返回值是整型)，表示位或运算。


4 .```^```: 加在两个布尔类型表达式中间，表示”异或”的含义：```只要```两个布尔值不同，那么整个式子就是```true```.

1. ```&&```: 加在两个布尔类型表达式中间，表示”```短路与```”的含义：只有两个布尔值```都为true```的情况下才为```true```. 若```第一个```布尔表达式为```错误```，```不会执行```第二个布尔表达式。

 * b=(a++>0)&&(a++>0);
 * 短路与，聪明！只计算左边一个自加
 * 所以a为1，b为false





6 . ||: 加在两个布尔类型表达式中间，表示”```短路或```”的含义：只要两个布尔值有一个为true那么整个式子就是true. 但是若第一个布尔表达式为正确，不会执行第二个布尔表达式。


- 赋值运算符  =

从右向左

- 扩展赋值运算符 (+=   -=   *=   /=)  
先赋值原值，再进行计算。不可直接：a+=5;  
例子:  int a=5;  a+=3; 等价于 a=a+3;   


## 控制语句

- if else 结构

```嵌套结构，有有重合区间范围```

>①第一种结构(最完整结构)如下：  

```
if(布尔型表达式){  
}  
else if(布尔型表达式){  
}  
else if(布尔型表达式){  
}  
else{  
}  
注意: 其中的else if 的数量没有限制!!
```

例如： 
```
	int grade=95;  
		if (grade>90 ) {               //有重合区间范围  
			System.out.println("优秀");//>90  
		}else if(grade>80){  
			System.out.println("良好");//<=90  >80，注意情况划分与排斥  
		}else if(grade>70){  
			System.out.println("合格");//<=80  >70  
		}else{  
			System.out.println("不合格");//<=70  
```


如果不是最完整结构，可以逐渐去除，从而得到以下结构：  

>②第二种结构


```
if(布尔型表达式){
}
else if(布尔型表达式){
}
else if(布尔型表达式){
}
```

相比较最完整的结构，很明显少了else的处理。

>③第三种结构

```
if(布尔型表达式){
}
else{

}
```

相比较最完整的结构，很明显少了else if的处理。只要不符合if情况就进else，并没有情况比较划分。

>④第四种结构

```
if(布尔型表达式){
}
```

相比较最完整的结构，很明显少了else if和 else的处理。不满足if条件就不进行操作。


- switch结构

申请变量语句;  

```
switch(变量名){  
case xx:  
break;  

case xx:  
break;  

case xx:  
break;  

case xx:  
break;  

default:  
break;  
}  
```

>1 .对于基本数据类型来说,switch后面的变量类型都是范围小于等于int的.  
可以：byte,short,char,int.  (因为char 是采用unicode字符集存储字符的，所以是16位的，小于int的范围).  
不可以:long,float,double,boolean.    
2 .	case 相当于```入口```，一旦其中一个case匹配进入，那么后面的case就不起作用, 直到遇到break退出  
3 .	当没有case匹配时，会进入default。  


```
public static void main(String[] args) {
	char grade='a';
	switch(grade) {              //switch后面的变量类型都是范围小于等于int
		case 'a':
			System.out.println("优秀 ");
			break;
		case 'b':
			System.out.println("良好");
			break;
		case 'c':
			System.out.println("及格");
			break;
		default:
			System.out.println("不及格");
			break;//加不加都可以，已经到程序末尾。为了美观，可以加上
```

## 循环结构

```注意细节的先后```
			
			
- for循环  

```		
for (int i = 0; i < 10; i++) {
	System.out.println(i);
	System.out.println("循环结束");
```

结果：9		循环结束  
执行顺序i = 0; i < 10;println(i);i++  
注意:for循环第一次是```先进入循环体打印，再执行自增```运算	 

- while循环


      int i=0;
	  while(i<10) {
		i++;
		System.out.println(i);
		System.out.println("循环结束");
		//结果：10	循环结束
		//执行顺序i = 0; i < 10;i++;println(i);```先自增，再打印```
(这部分代码和上面的for循环一模一样，但如果将i++移到循环体的第一行，则就不和上面的for循环一样了)




- break关键字
定义：break关键字通常用来表示跳出当前循环.


- 嵌套循环

第一段代码:  
```
int i=0;  
while(i<5){  
System.out.println(“-”+i);  
i++;  
int j=0;  
while(j<5){  
  System.out.println(j);  
  j++:  
}  
```
上面代码的输出结果为: -001234-101234-201234-301234-401234


 
第二段代码:  
```
int i=0;  
while(i<5){  
System.out.println(“-”+i);  
i++;  
int j=0;  
while(j<5){  
  System.out.println(j);  
  j++:  
  if(j==3){  
   break;  
}  
}  
}  
```
上面代码的输出结果为: -0012-1012-2012-3012-4012  
分析: break关键字只是每次跳出了第二层循环，使得j的3和4的值每次都没法输出。  


- 写出嵌套执行顺序

```
3	int i=0;
4   while(i<2){     
5		System.out.println("1");
6		int j=0;
7		while(j<3){
8			System.out.println("1");
9			j++;
10		}
11		i++;
12	}
13	System.out.println("end");
```

嵌套执行行号顺序：3456789  789  789    7 11   456  789 789  789  7 11 4 13


- 带break的嵌套循环

```
3	int i=0;
4   while(i<2){     
5		System.out.println("1");
6		int j=0;
7		while(j<5){
8			System.out.println("1");
9			j++;
10			if(j==3){
11				break;
12			}
13		}
14		i++;
15	}
16	System.out.println("end");

```

嵌套执行行号顺序：345678910  78910  78910    11  14  4  5678910  78910  78910 11 14 4



- 复杂嵌套

 利用三层嵌套循环+控制语句(i,j,k)，打印出  
00011012013  
1001101201301  
2001101201301  
3001101201301  
40011012013  
（注意:这些数字没有规律，只要你能用三层嵌套循环+控制语句输出这些数字即可。这些数字是连在一起的，你们使用System.out.print()这个方法就好，我回车是为了大家看起来方便）
/*分析：从第一列知i<5,从第一行知在01重复，所以k<2。所以i<5,j<4,k<2,刨去j=3时的2个空值*/

```
public static void main(String [] args){
	for(int i=0;i<5;i++){
		System.out.print(i);
		for(int j=0;j<4;j++){
			System.out.print(j);
			if( (i==0&&j==3)||(i==4&&j==3) ){
		    	break;
			 }
			 for(int k=0;k<2;k++){
			 	System.out.print(k);
			 }
		 } 
	 }
}
```



#  面向对象

## 方法


- 方法的调用

对于java来说，只要满足下列条件之一就叫做不同的方法：  
1.名字不同  
2.参数列表不同  
(注：在这又没有和返回值没有任何关系！！！！java要求同一个类中不能定义相同方法！！)  


>方法调用的四类总结：  
1.左边是引用，右边是对象。Person p1=new Person;  
2.左边是引用，右边是引用。Person p2=p1;//```把符号右边引用所指向的对象赋给等号左边的引用。```    
3.参数列表是引用，传进来是对象。test(new Person());  
4.参数列表是引用，传进来是引用。test(p1)  


- 方法参数中类型的转换

基本数据类型中的小范围转大范围。

1模板中参数列表中的大范围参数，在调用的时候可以使用小范围参数且小范围参数会被转换
2.反之则不成立！



- this关键字真正的用法

```this指向调用它的对象```

①当前对象的凭证   
格式
a.  this.xx   (xx代表成员变量)
b.  this.xx()  (xx代表成员方法)
注意:  a中的xx为成员变量，  b中的xx为成员方法

②调用其他的构造方法(只能在构造方法的第一行出现)
格式:   this+()
注意：()里面为参数传递！





## 数组

- 一维数组的申请方式

数组的长度是```固定的```，如果```越界```则会有异常产生。并且数组所开辟的```内存是连续的```，访问```速度特别快```。  

>①先申明，再赋值(最麻烦)  

a.基本数据类型：  
```
int[] intArray=new int[3];  
intArray[0]=0；  
intArray[1]=1;   
intArray[2]=2;  
```
b.引用数据类型：  
```
Person[] personArray=new Person[3];  
personArray[0]=new Person();  
personArray[1]=new Person();  
personArray[2]=new Person();  
```

区别:如果是一个基本类型的数组,int[] intArray=new int[3],那么intArray[0]=intArray[1]=intArray[2]=0,那如果是Person[] personArray=new Person[3],则personArray[0]=personArray[1]=personArray[2]=null).  

关于默认赋值和null的讨论  
1.默认值的不同境遇  
①int a;  
②Student student;  
对于①首先大家可以看到的是int是一个基本数据类型，但没有初始化，但因为是基本数据类型， java会给a一个默认的0。  
对于②来说，student这个凭证没有任何权限，并且Student 并不是基本数据类型，没有默认赋值，所以student就等于null。  
2.null造成的结果  
假设Student 有一个成员变量，grade。则正确的访问是 Student student=new Student();  
student.grade去访问，因为这个时候student已经有了一块内存的凭证。但是如果仅仅是Student student; student并没有被赋予任何内存的凭证。所以这个时候如果调用student.grade就一定会报错。具体就是空指针的错误，会造成程序崩溃。  



>②申明和赋值一起进行(较麻烦)

int[] intArray=new int[]{0,1,2};  
Person[] personArray=new Person[]{new Person(),new Person(),new Person()};  

>③申明和赋值一起进行(最简单)

int[] intArray={0,1,2};  
Person[] personArray={new Person(),new Person(),new Person()};  


- 一维数组的遍历方式

1.普通的循环结构进行循环
①for循环

```
for(int i=0;i<intArray.length;i++){  
	System.out.println(intArray[i]);  
}  
```

②while循环

```
int i=0;
while(i<intArray.length){  
System.out.println(intArray[i]);  
i++;  
}  
```

2.for each循环

```
int[] intArray=new int[3]; intArray[0]=0, intArray[1]=1; intArray[2]=2;  
for(int unit:intArray){  
System.out.println(**unit**);  
}  
```

(这个过程中```不能```对数组进行```赋值```！！能进行的```仅仅是访问```！！)

- 二维数组的定义

>①先申明，再赋值(最麻烦版本)

```

int[][] intArray=new int[2][3];  
intArray[0][0]=0; intArray[0][1]=1; intArray[0][2]=2;  
intArray[1][0]=1; intArray[1][1]=1; intArray[1][2]=2;  

Person[][] personArray=new Person[2][3];…  
``` 
注意，这并不要求每个子数组的大小是一样的：  

```
int[][] intArray=new int[2][];  //创建两行数组
intArray[0]=new int[2];  //第一行数组元素有2个
intArray[1]=new int[3];  //第二行数组元素有3个
intArray[0][0]=0;intArray[0][1]=1;  
intArray[1][0]=0;intArray[1][1]=1; intArray[1][2]=2;  
```



>②申明和赋值一起(较麻烦版本)

int[][] intArray=new int[][]{ {0,1},{0,1,2} };  
Person[][] …

>③申明和赋值一起(最简单版本)

int[] intArray= {{0,1},{0,1,2}};  
Person[][]…

- 二维数组的遍历

1.普通的循环结构进行循环

```数组按行，从左向右执行输出```

①for循环  
```
for(int i=0;i<intArray.length;i++){   
	for(int j=0;j<intArray[i].length,j++){  
		System.out.println(intArray[i][j]);  
}  
}  
``` 
②while循环  
```
int i=0;  
while(i<intArray.length){  
	int j=0;  
	while(j<intArray[i].length){  
System.out.println(intArray[i][j]);  
j++;  
}  
i++;  

}
```

2.for each循环  

```
for(int[] item:intArray){  
for(int unit:item){  
System.out.println(unit);  
}  
}  
(这个过程中不能对数组进行赋值！！能进行的仅仅是访问！！)  
```

-  二位数组还能怎么赋值？

1.把二维数组的每一行再看成一个一维数组:

```
int[][] a=new int[2][];
a[0]=new int[]{0,1};
a[1]=new int[]{1,2,3};
```



2.数组内存示意图  
注意课上的示意图演示.  
代码举例子：  

```
int[] a=new int[3];  
a[0]=0;  
a[1]=1;  
a[2]=3;  
int[] b=a;  
a[0]=4;   
```

问b[0]是多少?  
是4.把b=a是```共享内存```的。  

```
Person[] a=new Person[3];
Person[] b=a;
a[0]=new Person();
b[0]=new Person(19);
System.out.println(a[0].age);//19。自从b=a```共享内存```后，不管a又new新对象，b都能一行代码改变掉！
System.out.println(b[0].age);//19
```


```
int[] a=new int[3];    
int[] b=new int[3];  
a[0]=0;  
a[1]=1;  
a[2]=3;  
b[0]=a[0];    
a[0]=4;  
```

问b[0]是多少?  
是0。把```索引值```赋给b[0]，只和当前状况有关。  




## 继承

- 继承的特点

一个```直接父类```

首先，在现实世界中，一个父亲可以有多个孩子。但是每个孩子只能有一个父亲。所以在java中，也遵循同样的关系。就是一个类可以有很多子类，但是```只能有一个直接父类```。继承通过java的```关键字 extends``` 实现。


举例:  
①class Son extends Father{  
}  
②class Daughter extends Father{  
}  
通过①，我们可以说Son成为了Father的子类，Father成为了Son的父类.  
通过②，我们可以说Daughter成为了Father的子类，Father成为了Daughter的父类.  
(总结: 这时候Father有两个子类，而对于Son或者Daugher来说，它们各自只有一个直接父类)  


- 继承的作用

一个java类的基本结构，主要包括三个方面：①成员变量 ②成员方法 ③构造方法  
①成员变量的继承：```抛开权限```这个话题来说，一个子类会继承父类```所有的成员变量```  
②成员方法的继承：```抛开权限```这个话题来说，一个子类会继承父类```所有的成员方法```。  
③构造方法：  
需要满足条件:子类构造方法必须```调用父类的构造方法```。并且要在子类构造方法的```第一行调用```。  
格式为super(参数列表).    

a.自己在每个子类的构造方法中```老老实实地显式调用父类构造方法```  

例如：

```

class Father{
	Father(){

	}
}

class Son extends{
	son(){
		super();
	}
}

```

b. ```没有显式调用父类构造方法```，则编译器会在```每个```子类的构造函数```第一行为我们添加super()```,即替我们添加了调用父类的```无参构造方法```。如果自己调用的话则不会为我们做任何事情。 
但如果有参则自动添加会有问题。例如：

```

class Father{
	Father(int a){

	}
}

class Son extends{
	son(){
		super(a);
	}
}

```


c. 使用```this关键字```在某个```构造方法的第一行```调用了其他构造方法，而```其他构造方法```调用了```父类```的```构造方法```，那也是可以的。

```

class Father{
	Father(int a){

	}
}

class Son extends{
	son(){
	this(3);//此第一行调用另一个super方法,替调用父类，所以两个方法都满足了。
}
	son(){
		super();
	}
}

```


- 继承的代码实质内容

继承的代码实质内容是super

例如：

```
class A{
	int age=20;

	void test(){
		System.out.println(age);
	}

}

class B extend A{
	int age=22;
}

那么实质B类中的语句是

class B extend A{
	int age=22;
	void test(){
		super.test();
	}
}

```



- 子类可以在继承的基础上继续添加成员变量和成员方法




- 重写

缘由：继承的内容不好，需要更改成员变量与方法。

①重写的作用:重写完以后，子类就不会访问到父类的成员方法或者成员变量

②方法的重写:如果子类中所写的方法，```方法的名字，方法的参数列表，方法的返回值类型```都相同，则叫做对父类的方法进行重写。

如果方法的名字或者，方法的参数列表有一个不一样，则我们所做的实际上是继续添加成员方法。

③成员变量的重写:只要```子类```中```成员变量的与父类成员变量的名字相同```，则就叫做重写了父类的成员变量。  
复写父类的成员变量的时候可以替换父类中成员变量的类型。

- super关键字总结

①用在子类构造方法中，表示对父类```构造方法```的调用，格式:
```super+(参数列表);```

②用在子类的成员方法中，表示对父类```成员方法```的调用，格式:
```super.方法名字(参数列表);```


## 向上转型、向下转型（多态）

一个类只有一个直接父类，但是会有很多间接的父类！


- 向上转型的定义

用父类的(包括直接父类和间接父类)凭证去指向子类的对象实例时，就叫做向上转型.

例子:
```
class A{}			

class B extends A{}
```

那B类是子类，A类是父类.

对于B类,如果我们想使用B类. 则正常的实例化过程如下:
B b=new B();
那向上转型表示如下:
B b=new B();
A a=b;
也可以一步到位:
A a=new B();



- 向上转型的特点

>①对于成员方法  
去父类寻找这个方法(再次强调是通过方法名称和参数列表)  
a.若这个方法父类不存在，则不能通过编译。  
b.若这个```方法父类存在，则访问的是子类的方法```。

>②对于成员变量  
a. 父类不存在这个成员变量,则不能通过编译.    
b. 父类存在这个成员变量,```仅仅能访问到父类的成员变量！```  

```
例如：仅仅能访问到父类的成员变量

class A{
	int age=20;//父类不存在这个成员变量,则不能通过编译
	void test(){  
		System.out.println(age);
	}
}



class B extends A{
	int age1=100;//向上转型访问不了子类变量
	
}

class Entrance{
	public static void main(String[] args){
		A a=new B();
		a.age1=101;//提示报错：找不到变量agel
	}
}

```

>③方法参数列表中的向上转型

父类不存在这个成员变量,则不能通过编译,```仅仅能访问到父类的成员变量！```
(若存在方法的重载，并且重载后的方法参数列表都是父类，则选取结构图中```最近的方法调用```)

例如：列表中参数是父类，但使用哪个方法取决于传入对象


```
class A{
	int age=20;//父类不存在这个成员变量,则不能通过编译
	void test(){  
		System.out.println("test---A");
	}
}

class B extends A{
	int age1=100;//向上转型访问不了子类变量
	void test(){  
	System.out.println("test---B");
	}
}

class Entrance{
	public static void main(String[] args){
		B b=new B();//调用时，可以是```B类型参数对象，向上转型A会调用B方法```
		test(b);
	}
	
	static void test(A a){	//模板的参数列表可以是父类型
	a.test();//编译器自动做向上转型A a=b;
	a.age;
	}
}
```

例如：A-->B-->C

```

class Entrance{  
	public static void main(String[] args){  
		B b=new C();  
		test(b);//分步转，C转B再转A

		C c=new C();
		test(c);//一步C转A
	}
	static void test(A a){
		a.test();
	}
}

```


写代码测试向上转型的特点：包括成员**方法的二个特点和成员变量的二个特点**

A是B的子类。注意这些特点有些需要子类复写父类的成员变量

```
class B{
int age=1;
void test1(){
System.out.println(age);
}

void test2(){
System.out.println(“test2---B”);

}


}


class A extends B{
int age=2;
int height=180;
void test2(){
System.out.println(“test2---A”);
}

void test3(){
System.out.println(“specialA”);

}
}
```


主方法中:
B b=new A();//向上转型  
1 . b.test3();///编译不通过，因为B类中没有test3方法  
2 . b.test1();//打印的结果是1.因为子类会通过super.test1()将代码传递给B类大环境执行  
3 . b.test2();//打印的结果是”test2---A”  
4 .System.out.println(b.height);//编译不通过，因为B类不存在height这个成员变量  
5 .System.out.println(b.age); //打印结果是1.访问到的是B类的成员变量  

(成员方法的两条实际上展开是三条，成员变量是两条，所以加起来我写了5行代码)




- 向下转型定义

用```子类的凭证```去指向```父类的对象```时，就叫做向下转型.
class A{}			class B extends A{}                 class C extends A{}

那B类是子类，A类是父类.
对于B类,如果我们想使用B类. 则正常的实例化过程如下:  
B b=new B();  
那向下转型表示如下:  
B b=new B();    
A a=b;  	//子类B向上转型成A类
B b=(B)a;  //把父类A再向下转型成子B类


- 为什么有些时候要使用向下转型

1.为了找到```子类特有的成员变量或成员方法```

2.为了```使用子类的成员变量的值```




注意:向下转型可能会产生```运行时的错误```:

```
C c=new C();
A a=c;		//A类指向C
B b=(B)a;
```

一般向下转型```正确的话```:  
①一定```经历了向上转型```    
②转型到的可以是对象的```真实类型或者对象的父类```(一个对象真正的类型是它自己本身的类)  


- 向下转型的特点

①可能会产生```运行时的错误```(编译不会报错)

②如果没有报错,对于转型后的访问和正常申明后(可能也涉及到向上转型)的访问```没有区别```

例如：

```
A a=new C();
B b=(B)a;//a强转（B）是不能省略的，否则编译器报错
```

和一步向上转B b=new C();没有区别。

③向下转型并不一定会转到```真正的类型上```，如果仍然转到的是一个```父类```。则遵从我们上面所说的```向上转型的特点```. 

例如：



- 避免向下转型报错的办法



编译的“两个”角度

```1.如果没有强转的小括号，左边的类型要是右边类型的本身或者父类```

例如：Person p=new Student();//完全OK  
例如：A a1=b;//要求左边的类型是右边类型的父类或者本身的类。    

```如果有强转的小括号，左边的类型要是右边类型的子类```

```
例如：  
Student st=new Student;    
Person p=st;   

例如：

A a2=(A)b;//左边的类型和右边票的类型具有继承关系或者本身的类。
```


```下游不能指向上游```，所以b前要强制转换（A） 。不强制的话，编译会错。

是否通过编译，只看类型，不看对象的指向问题。  
强制转换的括号内容，为编译而生，看代码时不用理解它的作用。  



使用```instanceof ```关键字

>①关键字介绍:判断 对象 是不是 该类的子类或者本身。

举例: a instance of A 即a是否是A类本身或者是A类的子类. 

>②具体使用:利用instanceof 判断后，进行向下转型从而使用子类特有的方法.

例如：

```
static void test(A a){
	if(a instance of B){
		B b=(B)a;
	}
}

```

- 多态性

>①多态就是指程序中定义的引用变量所指向的具体类型和通过该引用变量发出的方法调用在```编译时并不确定```，而是在```程序运行期间```才确定,这就是多态性

>②多态的存在有```三个前提```:  
1.要有```继承```关系  
2.子类要```重写```父类的方法  
3.父类引用指向```子类对象```  


>“两点”本质与核心：  
1.找到```执行哪些方法```，由```引用类型决定```。  
引用可能指向很多类型对象。但引用是Person类型，它就一定只能调用Person类方法。  
2.具体```执行什么```，要看```指向对象类型```。  
调用Person类方法，具体会执行什么,要看指向对象类型。  



## static关键字


- 静态成员变量和成员方法

①定义: 被static关键字修饰了成员变量或成员方法

②作用

a.第一步是调用构造函数```实例化生成对象```,类中调用```普通成员变量```或者成员方法。

b.如果有```静态成员变量```或者成员方法，则可以 ```直接用:  类名+”.” ``` )的方式直接调用.



③注意事项

a.静态成员方法中```不能直接使用 普通成员变量 和 普通成员方法```，因为普通成员变量和普通成员方法的访问需要实例化

```
例如：

class A{
	int age=10;		//普通变量
	static void test(){
		A a=new A();	//调用普通变量需要实例化
		System.out.println(a.age);
	}
}
```
```
class Person{
	int age-10;
	static void test(){
		//System.out.println(age);//不能直接使用 普通成员变量
		System.out.println(new Person().age);//只要告诉哪个对象的，就可以直接访问
}
```

b.实例化后，通过 ```凭证+”.”``` 的方式也可以访问到静态成员变量和静态成员方法。

```
通过“类名+.”的方法，不可以 间接访问普通成员方法。
例如：
class A{
	int age=10;		
	static void test(){

		A a=new A();//间接访问实例化的普通成员方法
		a.test1();//普通变量

		//test1();//编译不通过，间接访问未实例化的普通成员方法

	}
	void test1(){

	}
}
```
```
“类名+.”与`凭证+”.”的方法访问都可以
Person.test();//“类名+.”的方法
new Person().test();//`凭证+”.”的方法
Person p=new Person();
p.test();//`凭证+”.”的方法
```


c.但请注意静态成员变量```一旦改变```，则所有方式访问到的值都会```全部改变```  

```
例如：

class A{
	static int age=10;	
}

主函数
A a1=new A();
A a2=new A();
A age=11;//这里，不管是A、a1、a2赋值都会指向这个数
System.out.println(a1.age);
System.out.println(a2.age);
System.out.println(A.age);
```


## 静态代码块和普通代码块

①定义

a为静态代码块, b为普通代码块

```
a: static{                                         
		System.out.println(“我是静态代码块”);
}

b: {
		System.out.println(“我是普通代码代码块”);
}
```



②实例化过程:执行顺序:

>父类静态代码块->子类静态代码块->父类普通代码块->父类构造方法->子类普通代码块->子类构造方法


```
代码
class Person{
	static{
		System.out.println("我是Person的静态代码块")；
	}
	{
		System.out.println("我是Person的普通代码块")；
	}
	static int ageStatic=11;
	A a=new A();//若写在普通代码块后面，插入时也应该在普通代码块后面
	Person(){
		System.out.println("我是Person的构造函数");
	}
	void test(){}
	static void testStatic(){}
	public static void main(String[] args){
		Person p=new Person();
	}
}
class A{
	A(){
		System.out.println("我是A的构造函数");
	}
}

实际运行代码顺序
class Person{
	static{
		System.out.println("我是Person的静态代码块")；//第一步
	}
	{
		System.out.println("我是Person的普通代码块")；
	}
	static int ageStatic=11;

	Person(){
		System.out.println("我是Person的普通代码块")；//第三步，插入
		A a=new A();//第四步，插入
		System.out.println("我是A的构造函数");//第四步，插入
		System.out.println("我是Person的构造函数");//第五步
	}
	void test(){}
	static void testStatic(){}
	public static void main(String[] args){
		Person p=new Person();//第二步
	}
}

```

```
例如，继承的顺序
class Person extend A{
	static{
		System.out.println("我是Person的静态代码块")；
	}
	B b=new B();
	{
		System.out.println("我是Person的普通代码块")；
	}
		static int ageStatic=11;//自动执行
		Person(){
			//系统自动添加super();
			//插入B b=new B();
			//插入System.out.println("我是Person的普通代码块")；
		System.out.println("我是Person的构造函数");
	}



	void test(){}
	static void testStatic(){}
	public static void main(String[] args){
		Person p=new Person();
	}
}
class A{
	A(){System.out.println("我是A的构造函数");}
}

class B{
	B(){System.out.println("我是B的构造函数");}
}

顺序为

class Person extend A{
	static{			 //第一步
		System.out.println("我是Person的静态代码块")；
	}

		static int ageStatic=11;//自动执行
		Person(){         //第二步
		super();//系统自动添加
		System.out.println("我是A的构造函数");//执行class A
		B b=new B();//插入
		System.out.println("我是B的构造函数");//执行class B
		System.out.println("我是Person的普通代码块")；
		System.out.println("我是Person的普通代码块")；
		System.out.println("我是Person的构造函数");
```

```
例如，继承的顺序
class Person extend A{
	static{
		System.out.println("我是Person的静态代码块")；
	}
	A a=new A();
	{
		System.out.println("我是Person的普通代码块")；
	}
		static int ageStatic=11;//自动执行
		Person(){
			//系统自动添加super();
		A a=new A();
		System.out.println("我是Person的普通代码块")；
		System.out.println("我是Person的构造函数");
	}



	void test(){}
	static void testStatic(){}
	public static void main(String[] args){
		Person p=new Person();
	}
}
class A extend B{
	A(){System.out.println("我是A的构造函数");}
}

class B{
	B(){System.out.println("我是B的构造函数");}
}

执行顺序


	static{
		System.out.println("我是Person的静态代码块")；
	}

		static int ageStatic=11;//自动执行
		Person(){
		super();
		A a=new A();
		System.out.println("我是B的构造函数");
		System.out.println("我是A的构造函数");

		A a=new A();
		System.out.println("我是B的构造函数");
		System.out.println("我是A的构造函数");
		
		System.out.println("我是Person的普通代码块")；
		System.out.println("我是Person的构造函数");


```

## final关键字

①申明一个```常量```:

e.g: final int a=3;

②申明一个```不可以被继承的类```:

final class……

③申明一个```不可以被重写的方法```

final void eat(){}



## 抽象类

①定义:```拥有抽象方法的类```就是抽象类，```并不是```说```只有```抽象方法，抽象类必须使用```abstract关键字```声明。(有其他方法也行，并不是只有抽象方法。)

**没有方法体的方法就是抽象方法**，必须要使用abstract关键字修饰,否则会报错。


②与普通类的比较:普通类是一个完善的功能类，可以直接产生实例化对象，而抽象类是指想因为拥有方法体为空的抽象方法,并不能直接产生实例化对象



③使用:

a. 定义一个子类继承抽象类, ```重写```抽象类之中的全部抽象方法

```
abstract Printer{
	abstract void print();

}

class HuipuPrinter extends Printer{		//子类与父类
	void print(){
		System.out.println("惠普式打印")；
	}
}
```

b.如果子类```没有全部重写```父类的抽象方法，则必须将子类也必须定义为为```abstract类```

```
abstract Printer{
	abstract void print();
	abstract void color();//未重写该方法
}

abstract class HuipuPrinter extends Printer{	//有未重写方法仍需定义为abstract类
	void print(){
		System.out.println("惠普式打印")；
	}
}
```
 


c. 可以直接访问```静态变量和静态方法```

```
abstract class Printer{
	static int age=1; 
	static void test(){
		System.out.println("1")；
	}
	abstract void print();
	abstract void color();//未重写该方法
}

class Entrance{
	public static void main(String[] args){
		Printer.test();
	}


```

d. 可以添加```普通成员变量和普通成员方法```，但是不可以直接访问，因为要求实例化

```
abstract class Printer{
	int age=10;//不妨碍定义普通成员变量
	abstract void print();
	abstract void color();//未重写该方法

	void test(){

	}
}

abstract class HuipuPrinter extends Printer{	//有未重写方法仍需定义为abstract类
	void print(){
		System.out.println("惠普式打印")；
	}
}

	void color(){}

class Entrance{
	public static void main(String[] args){
		HuipuPrinter a=new HuipuPrinter();//不可以直接访问，要求实例化
		a.print();
		a.age=100;
	}

```

e.不能用final修饰抽象类或者抽象方法

因为final修饰会导致无法复写抽象类或者抽象方法


- 抽象类中的向上转型

当子类继承抽象类的时候，则```抽象类```成为```父类```，这个时候利用```向上转型```可以产生```多态```。


## 接口

①全局常量

举例:

```static final``` int age=18;

特点:

a. 访问方式可以是```类名+”.”```或者是```凭证+”.”```(static特点)

b.  a中所有方式访问到的值都```相等```(static特点)

c. 这个值```不会改变```(final特点)

②定义: 只由抽象方法，全局常量或者完整静态方法组成的特殊类。

```
定义任何一个变量，编译器自动加上public static final修饰成份
定义任何一个方法，编译器自动加上public abstract修饰成份

interface Person{
	static final int age=20;	//编译器也会帮加上成public static final int age=20;
	int height=100;	//若定义普通成员变量，编译器也会帮加上成public static final int height=100;
	void test();	//编译器也会帮加上成public abstract void test();
	static void test1(){

	}
}
```


③与普通类的比较:普通类是一个完善的功能类，可以直接产生实例化对象，而接口只拥有抽象方法和全局变量或者完整静态方法，```不可以直接```产生```实例化对象```。

④使用:

a. 定义一个```子类实现接口```, 覆写接口中的```所有抽象方法```


```
class Entrance{
	public static void main(String[] args){
		Student st=new Student();
	}
}


	class Student implements Person{		//implements对应interface使用
	public void test(){	//默认权限是小于public的，所以必须让权限大于public
											//子类在复写时不能低于父类权限
	}


interface Person{	//父类Person
	public static final int age=20;//接口中定义变量和方法时，默认修饰符为public static final 和public abstract

	public abstract void test();//父类
}
```
b.如果子类没有覆写接口中的所有抽象方法，则必须将子类定义为abstract类

例如： abstract class Student implements Person


c.不能用final修饰

final修饰会导致子类无法使用它

d.在```接口中定义```变量和方法时，默认修饰符为```public static final``` 和```public abstract```

e. 可以直接访问```全局常量和静态方法```


⑤接口和抽象类的比较

不同点:
a.抽象类```可以```编写```普通成员变量```和```普通成员方法```，接口则```不可以```，接口只能有抽象方法和全局常量和完整静态方法

b.抽象类需要```继承```，而继承需要遵守```单继承```的特点，而接口需要实现，实现没有这个规定。所以一个类只可以继承```一个抽象类```，却可以实现```很多接口```。用逗号分隔。

例如：abstract class Student implements Person,A//复写Person与A方法可以实例化东西了

c.对于不同的设计模式，需要在接口和抽象类中作出选择。



相同点:
a.若想实例化抽象类或是接口，则需要子类去```继承```或者```实现```，然后重写其中```所有的抽象方法```

b. 无论是继承还是实现，抽象类或是接口都会成为```父类```

c. 因为```抽象类```或是```接口```都可以成为```父类```，一定记住```向上转型```对抽象类或是接口也适用！！！

```
抽象类：写都有的功能
接口：写不是每个都有的功能，可供复写


interface Alarm{			//不是每个门都有的功能则定义成接口
	abstract void alarm();
}
abstract class Door{	//每个门都有的功能
	void open(){}		//每个门都一样的功能写成成员方法
	void close(){}
}

abstract void voice();//每个门都一样的功能但实现起来不一样，就定义成抽象方法

class MuDoor extends Door{

}
class TieDoor extends Door{

}

class TongDoor extends Door implements Alarm{}

```



##  回调

①定义:当```一个类的一个对象完成某件事```以后，这个```对象```通知```另外类的一个对象```开始执行另一件事.

②代码举例:

```
class HairTeacher{

void makeHandsome(){

}

}

class HairWasher{
HairTeacher hairTeacher ;

void setHairTeacher(HairTeacher hairTeacher){	
this. hairTeacher = hairTeacher;
}

	void washHair(){
		洗完了;
		hairTeacher.makeHandsome ();
	}
}


class Entrance{
	public static void main(String [] args){
		HairTeacher hairTeacher =new HairTeacher ();//开辟内存
		HairWasher hairWasher=new HairWasher();
		hairWasher. setHairTeacher(hairTeacher);//洗发妹妹心里装着理发师
		hairWasher.washHair();//洗发妹妹通知理发师工作
	}
}
```

- 回调真正写法

考虑下面这个问题:
如果洗发小妹妹不仅仅要通知理发师，还可能要通知化妆师或服装师，应该怎么办？
可以让洗发小妹妹的心里装着理发师，化妆师，服装师的父类。比如就是美学师,那然后让理发师，化妆师，服装师继承美学师.

```
class BeautyTeacher{	//父类美学

	void makeHandsome(){
		美学法变帅;
	}

}

class HairTeacher extends BeautyTeacher{
	void makeHandsome(){
		头发法变帅;
	}

}

class DressTeacher extends BeautyTeacher{
void makeHandsome(){
		衣服法变帅;
	}

}

class FaceTeacher extends BeautyTeacher{	

void makeHandsome(){
		粉底法变帅;
	}

}




class HairWasher{
BeautyTeacher beautyTeacher;//洗发师心中装着父类美学师

void setBeautyTeacher (BeautyTeacher beautyTeacher){
this. beautyTeacher = beautyTeacher;
}


	void washHair(){
		洗完了;
		beautyTeacher.makeHandsome();
	}
}





class Entrance{
	public static void main(String[] args){
	① HairTeacher hairTeacher=new HairTeacher();
	 	HairWasher hairWasher=new HairWasher();
hairWasher. setBeautyTeacher(hairTeacher);
		hairWasher.washHair();

	② DressTeacher dressTeacher=new DressTeacher();
	 	HairWasher hairWasher=new HairWasher();
hairWasher. setBeautyTeacher(dressTeacher);
		hairWasher.washHair();

③ FaceTeacher faceTeacher=new FaceTeacher ();
	 	HairWasher hairWasher=new HairWasher();
hairWasher. setBeautyTeacher(faceTeacher);
hairWasher.washHair();
	}

}
```

注意:实际上并不需要美学师里面的变帅方法，因为每个具体的类(例如发型师，服装师，造型师)会复写这个方法，所以如果我们把美学师变成一个抽象类，变帅方法变成抽象方法，如下:

```
abstract class BeautyTeacher{
	abstract void makeHandsome();


}
```

那这样做还```不是完美的```,因为如果用抽象类，那每个具体的类(例如发型师，服装师，造型师)必须```继承```美学师,为了一个洗头小妹的```通知作用```，浪费了```宝贵的继承机会```，所以```最好的写法```是将```美学师```变成一个```接口```，让每个具体的类(例如发型师，服装师，造型师)去```实现```美学师，如下:

```
interface BeautyTeacher{
	abstract void makeHandsome();
}

class HairTeacher implements BeautyTeacher{
	void makeHandsome(){
		头发法变帅;
	}



}

class DressTeacher implements BeautyTeacher{
void makeHandsome(){
		衣服法变帅;
	}

}

class FaceTeacher implements BeautyTeacher{	

void makeHandsome(){
		粉底法变帅;
	}

}

```

## package关键字

- **作用：package关键字用来定向输出编译后的class文件**

①对于每个```源文件(.java结尾)```来说，你可以编写```任意数目```的类。所以一个.```java文件```可以产生很多.class文件。

(注意:每个```源文件```只能有一个```public的类```,并且```public类名```要和```文件名```保持一致。)


②当我们想要让一个源文件产生的.```class文件```位于一个目标文件夹时，需要使用```package```关键字

③这时候为了使```package关键字生效```,我们需要使用javac+空格+ -d+.+空格+文件名字+.java的方式编译(多了-d . 新建文件夹名，所有编译后的文件都放到新建文件夹里才行)

④为了```访问一个类```(例如拿到```一个凭证```或者```调用构造方法实例化```),若两个class文件不位于同一个包中，需要使用```包名+类名```的方式访问(所有的访问都是基于类名的，源文件名称并不重要)




## import关键字

- **import关键字导入类，用来简化全路径访问**

由于package关键字的存在导致很多class文件```位于不同的包中```，若访问不同包的类时，我们需要使用```完整的访问方式```，即```包名+类名```的方式访问，那import关键字可以让我们的写法更简单. (注意课上举的例子，使用完```import```关键字后，就可以```省略前面的包名```，```直接以类名方式```去访问)

- 意义
为了省略包名

```
Entrance.java

package b;
import a.b.Person;	//导入a文件夹下的b文件夹下的Person类
class Entrance{
	public static void main(String[] args){
		Person1 p=new Person1();
	}
}

Person.java

package a.b;		//a文件夹下的b文件夹
public class Person{}

```

## 访问修饰符

四种权限

|修饰词|本类|同一个包的类|继承类|其他类|
|---|---|---|---|---|
|private|J|X|X|X|
|无（默认）|J|J|X|X|
|protected|J|J|J|X|
|public|J|J|J|J|


## 内部类

内部类主要可以分为四种:成员内部类，静态内部类，匿名内部类，局部内部类。

- 成员内部类

①定义: 把一个类```当做普通成员变量```那样定义。

```
class OuterClass{
	int a=0;
	class InnerClass{
	int b=1;

	void test(){			//成员内部类
	System.out.println(a);	//内部类的内部可以直接访问外部成员变量
//访问外部成员变量一定是内部类中有张票赋予外部类权限
//(OuterClass.this.a)中系统自动加的OuterClass.this指向外部类的调起内部类void test()的对象所依靠的OuterClass对象
}
}
}
//主方法中:
	OuterClass out=new OuterClass();//依赖外部类的对象访问内部类
	OuterClass.InnerClass inner=out.new InnerClass();//见使用第a、b条
```

②成员内部类的使用:

a. 内部类的票的类型有固定格式为 ```外部类名称+”.”+内部类名称,构造方法```为```new +内部类类名+”()”```;

b. 如果要生成```内部类的实例```，需要依靠```外部类的实例```.

c. 内部类会持有```外部类类型的一张票``` ( 注意内存示意图 ) ,可以利用所持有的这张外部类类型的票```直接访问外部类```的```成员变量```和```成员方法```(包括静态成员变量和成员方法)

d. 外部类```不可以直接访问```到内部类的任何成员变量和成员方法

```
class OuterClass{
	int ageOuter=1;

	void testOuter(){
		OuterClass.Inner asd=this.new.InnerClass();//asd访问ageInner
		System.out.println(ageInner);
	}
	class InnerClass{
		int ageInner=2;

		void testInner(){		
	System.out.println(ageOuter);

```

e. 注意内部类中```两种不同的this```所指向的内存区别

f. 实际的编译会生成两个class文件,分别为OuterClass.class和OuterrClass$InnerClass.class

g. 内部类里面不能定义```静态的```成员变量或者成员方法
(完全掌握的标准 是你可以将内部类提出来写 并且达到内部类的效果，这里需要的基础是对this关键字作为凭证的用法完全掌握)



- 静态内部类

①定义: 把一个类当做静态成员变量那样定义。

```
class OuterClass{
	static int a=0;
void test(){
	System.out.println(OutClass.InnerClass.b);
}
static class InnerClass{
		static int b=1;
void test(){
System.out.println(a);
}
}
}
```



②静态内部类的使用:

a.内部类的票的类型有固定格式为``` 外部类名称+”.”+内部类名称```

b.如果要生成内部类的实例，```不需要```依靠外部类的实例

c. 内部类```只可以直接```访问到外部类的```静态成员变量```和```静态成员方法```

d. 外部类```不可以直接访问到```内部类的任何成员变量和成员方法(包括静态)

d. 实际的编译会生成两个class文件,分别为OuterClass.class和OuterrClass$InnerClass.class



- 匿名内部类

①出现了一个实例，这个实例并```不属于```所编写的任何模板,并且都伴随着```向上转型```的过程

②代码举例:

③在①中出现的实例若出现在```成员方法```中或是```成员变量```中，则这个```实例```实际上可以转换成```成员内部类的一个实例```，则这个实例拥有一个外部类实例的权限，具有```成员内部类```的```所有特点```。如果出现在```静态方法中```或```静态成员变量```中，则这个实例实际上可以转换成```静态内部类的一个实例```，则具有静态内部类的所有特点。

- 局部类




# 异常

运行时的异常特点：若程序不幸在运行时抛出了异常，则```后面的代码都不会得到执行```。

|异常层次结构|二级|三级|四级|
|---|---|---|---|
|---|Error|VirtualMachineError|---|
|Throwable|---|AWTError|---|---|
|---|Exception|RuntimeException|ArithmeticException|
|---|---|---|NullPointerException|---|
|---|---|---|lndexOutOfBoundException|---|
|---|---|IOException|EOFException|---|
|---|---||FileNotFoundException|---|


- 抛出Exception

无论是哪种exception，我们都可以在方法体```使用代码```抛出，使用```throw关键字```.

例如:     throw new IOException();    throw new RuntimeException();

>①对于```IOException``` 我们抛出后，**编译前必须处理**.

a.处理方法1: **甩锅**，使用```throws```关键字跟在```方法的后面表示对异常向上抛出```:

```
void setAge(int age) throws IOException{	//甩锅
If(age<0){
  throw new IOException();//甩锅
}
}
```

b.处理方法2: 使用```try catch```结构处理。 **真正处理**:

```
void setAge(int age){
If(age<0){
  try{
throw new IOException();
}catch(Exception e){

}finally{
}
}
}
```



>②对于``` RuntimeException``` 抛出后，**不需要在编译前处理**，**默认做“甩锅”处理**。

```
void setAge(int age) {
If(age<0){
  throw new RuntimeException();//RuntimeException抛出后，不需要在编译前处理
}}
```

- 方法调用的**层级关系**

首先，方法调用的层级顺序。

如果①调用了②，②调用了③，③调用了④。。。

依次类推，则这些方法会存在上下级关系。


- 对于异常的处理

①throws关键字```向上级抛出```（**注意上下级关系**）,如果抛到主线程程序就会崩溃.

②使用**try catch finally** 结构捕获异常

a.标准结构:
```
try{

}catch(Exception e){
}finallly{
}
```
采用标准结构，将可能发生异常的代码放在try内部，若**有exception抛出，则进入catch代码，finally内部的代码无论如何都会被执行**。


b.非标准结构:
```
try{

}catch(EOFException e){

}catch(FileNotFoundException e){

}catch(Exception e){

}finally{
}
注意：catch的参数范围要是从小到大的。
```

```
try{

}finally{

}

```
注意: 利用finally代码块的代码**无论如何都会运行**的特点。 通常用在关闭IO流，**防止代码发生异常**后,代码停止运行然后导致的IO流关不掉

c.执行顺序

注意try catch finally 的执行顺序，主要是finally内部的代码一定会被执行。

- 运行阶段异常的特点

①如果是运行阶段，对于两种异常，都需要在某个方法的调用使用try catch finally结构处理，否则一直往上级抛出，抛到主线程程序就会出问题。(在未学习多线程的情况下，默认只有主线程)

②对于IOException因为编译要求我们处理异常，如果不使用try catch finally处理，则一定会显式得使用throws甩锅从而通过编译。

③**RuntimeException编译前不需要写额外代码处理异常，但是实际上运行的时候如果一直没有try catch finally结构去处理，最终会一层层抛出直到主线程，然后程序就会崩溃**。(在未学习多线程的情况下，默认只有主线程)



## 字节流

- 概念

1.Java对数据的操作是```通过流```的方式

2.Java用于操作流的类都在```IO包```中

3.流按流向分为两种：```输入流，输出流```

4.流按操作类型分为两种：

a.```字节流```: 可以```操作任何数据```,因为在计算机中任何数据都是以字节的形式存储的

b.```字符流```: ```只能操作纯字符```数据，比较方便。





- IO流常用父类

1.字节流的抽象父类: InputStream和OutputStream

2.字符流的抽象父类：Reader 和 Writer		

(注意:使用前，导入IO包中的类,使用时，进行IO异常处理,使用后，释放资源)


|类型|字节流|字符流|
|---|:---:|:---:|  
|操作|纯文本，网络数据，图片|纯文本| 
|输入流|lnputStream|Reader|
|输出流|OutputStream|Writer|

字符流处理的单元为2个字节的Unicode字符，分别操作字符、字符数组或字符串，而字节流处理单元为1个字节，操作字节和字节数组。所以字符流是由Java虚拟机将字节转化为2个字节的Unicode字符为单位的字符而成的，所以它对多国语言支持性比较好！如果是音频文件、图片、歌曲，就用字节流好点，如果是关系到中文（文本）的，用字符流好点

所有文件的储存是都是字节（byte）的储存，在磁盘上保留的并不是文件的字符而是先把字符编码成字节，再储存这些字节到磁盘。在读取文件（特别是文本文件）时，也是一个字节一个字节地读取以形成字节序列

字节流可用于任何类型的对象，包括二进制对象，而字符流只能处理字符或者字符串； 字节流提供了处理任何类型的IO操作的功能，但```它不能直接处理Unicode字符```，而字符流就可以。

字节流是最基本的，所有的InputStrem和OutputStream的子类都是,主要用在处理二进制数据，它是按字节来处理的 但实际中很多的数据是文本，又提出了字符流的概念，它是按虚拟机的encode来处理，也就是要进行字符集的转化 这两个之间通过 InputStreamReader,OutputStreamWriter来关联，实际上是通过byte[]和String来关联 在实际开发中出现的汉字问题实际上都是在字符流和字节流之间转化不统一而造成的 。

>字节流和字符流的操作过程：   

     以文件操作为例，主要的操作流程如下：

    1 使用File类打开一个文件

    2 通过字节流或字符流的子类，指定输出的位置

    3 进行读/写操作

    4 关闭输入/输出

     IO操作属于资源操作，一定要记得关闭 

- 子类FileInputStream的使用

read() 方法```一次```读取```一个字节```并且返回值是```一个int```

```
FileInputStream fis = new FileInputStream("aaa.txt");	
int b;										
while((b = fis.read()) != -1) {						
System.out.println((char)b);	//32位强转为8位，然后去字符集里找对应符号打印				
}
fis.close();		
```

为什么返回一个int:  
因为字节输入流可以操作任意类型的文件,比如图片音频等,这些文件底层都是以二进制形式的存储的,如果每次读取都返回byte,有可能在读到中间的时候遇到111111111,那么这11111111是byte类型的-1,我们的程序是遇到-1就会停止不读了,后面的数据就读不到了,所以在读取的时候用int类型接收,如果11111111会在其前面补上24个0凑足4个字节,那么byte类型的-1就变成int类型的255了这样可以```保证整个数据读完```.

-  FileOutputStream的使用

```
FileOutputStream fos = new FileOutputStream("bbb.txt");	
fos.write(97);								
fos.write(98); 
fos.write(99);
fos.close();
(write方法参数列表是一个int，但是会将前面的24位去掉,所以结果是写出一个byte)
```
								


- 拷贝一个文件

1.效率最低的方法:

```
FileInputStream fis = new FileInputStream("computer.jpg");	
FileOutputStream fos = new FileOutputStream("copy.jpg");
int b;
while((b = fis.read()) != -1) {
fos.write(b);
}
fis.close();
fos.close();
```

2.改进:
思路:```一次读取```一个文件的```所有字节```，然后```一次写出```，代码如下:

```
FileInputStream fis = new FileInputStream("致青春.mp3");
FileOutputStream fos = new FileOutputStream("copy.mp3");
byte[] arr = new byte[fis.available()];			//	
fis.read(arr);											
fos.write(arr);											
fis.close();
fos.close();
(由于java虚拟机分配内存的问题，这种方法不推荐)
```
3.再改进(小数组方法)

思路:一次读取**一定长度**的数组.

```
FileInputStream fis = new FileInputStream("致青春.mp3");
FileOutputStream fos = new FileOutputStream("copy.mp3");
int len;
byte[] arr = new byte[1024 * 8];	//读1024 * 8长度				
while((len = fis.read(arr)) != -1) {
fos.write(arr, 0, len);							
}
		
fis.close();
fos.close();
```

4.用jdk给封装的类

a.BufferedInputStream:
* 内置了一个缓冲区(数组)
* 会一次性从文件中读取8192个, 存在缓冲区中
* 直到缓冲区中所有的都被使用过, 才重新从文件中读取8192个

b.BufferedOutputStream
* BufferedOutputStream也内置了一个缓冲区(数组)
* BufferedInputStream会一个字节一个字节将自己的数据赋给BufferedOutputStream的缓冲区(发生在内存中，速度很快)
* 直到缓冲区写满, BufferedOutputStream才会把缓冲区中的数据一次性写到文件里
```
FileInputStream fis = new FileInputStream("致青春.mp3");			
BufferedInputStream bis = new BufferedInputStream(fis);		
FileOutputStream fos = new FileOutputStream("copy.mp3");		
BufferedOutputStream bos = new BufferedOutputStream(fos);		
int b;
while((b = bis.read()) != -1) {		
bos.write(b);
}
bis.close();						
bos.close();
```
注意：小数组的读写和带Buffered的读取哪个更快?
a. 定义小数组如果是8192个字节大小和Buffered比较的话,定义小数组会略胜一筹,因为读和写操作的是同一个数组 
b.Buffered操作的是两个数组

- 利用try-finally结构处理IO流中可能产生的异常

```
FileInputStream fis = null;
FileOutputStream fos = null;
try {
	fis = new FileInputStream("aaa.txt");
	fos = new FileOutputStream("bbb.txt");
	int b;
	while((b = fis.read()) != -1) {
		fos.write(b);
}
} finally {
	try {
		if(fis != null)
			fis.close();
		}finally {
			if(fos != null)
				fos.close();
		}	
}
```

## 字符流

-  概念

a.字符流是可以直接读写字符的 IO 流

b.字符流读取字符, 就要```先读取到字节数据, 然后转为字符```. 如果要写出字符, 需要把字符转为字节再写出. 

-  顶层的抽象类为Reader和Writer. 

四个具体的子类:

①FileReader和 InputStreamReader

②FileWriter和  OutStreamWriter

- FileReader的使用

a. FileReader类的read()方法可以按照字符大小读取
```
代码如下:
FileReader fr = new FileReader("aaa.txt");				
int ch;	
while((ch = fr.read()) != -1) {			//读一个字节，在高位添24个0				
System.out.println((char)ch);//抛弃了16个0，变成char的16位二进制						
}
fr.close();											
```
- FileWriter的使用

FileWriter类的write()方法可以自动把字符转为字节写出.
```
代码如下:
FileWriter fw = new FileWriter("aaa.txt");
fw.write(‘我’);
fw.close();
```

- 利用输入字符流和输出字符流拷贝文本文件

①最低效
```
FileReader fr = new FileReader("a.txt");
FileWriter fw = new FileWriter("b.txt");
int ch;
while((ch = fr.read()) != -1) {
fw.write(ch);
}	
fr.close();
fw.close();
```
思考题:在拷贝文本文件的时候，用字节流还是字符流？
* 字符流也可以拷贝文本文件, 但不推荐使用. 因为读取时会把字节转为字符, 写出时还要把字符转回字节.
思考题:那什么时候使用字符流？
* 程序需要读取一段文本并展示
* 读取的时候是按照字符的大小读取的,不会出现半个中文
思考题: 字符流是否可以拷贝非纯文本的文件
不可以。因为在读的时候会将字节转换为字符,在转换过程中,可能找不到对应的字符。

②改进之----自定义字符数组的拷贝
```		
FileReader fr = new FileReader("aaa.txt");			
FileWriter fw = new FileWriter("bbb.txt");		
int len;
char[] arr = new char[1024*8];						
while((len = fr.read(arr)) != -1) {			
fw.write(arr, 0, len);				
}			
fr.close();										
fw.close();	

③改进之---使用jdk自带的
BufferedReader br = new BufferedReader(new FileReader("aaa.txt"));	
BufferedWriter bw = new BufferedWriter(new FileWriter("bbb.txt"));
int ch;				
while((ch = br.read()) != -1) {		
bw.write(ch);						
}
		
br.close();							
bw.close();  

五.利用InputStreamReader和OutputStreamWriter完成指定的码表读写字符) 
a.FileReader是使用默认码表(gbk)读取文件, 如果需要使用指定码表读取, 那么可以使用InputStreamReader.
b.FileWriter是使用默认码表(gbk)写出文件, 如果需要使用指定码表写出, 那么可以使用OutputStreamWriter.
BufferedReader  br = new BufferedReader(new InputStreamReader(new FileInputStream("UTF-8.txt"), "UTF-8"));
BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("GBK.txt"), "GBK"));
int ch;
while((ch = br.read()) != -1) {

	bw.write(ch);
}		
br.close();
bw.close();
```


## 泛型

目的：提高代码重用性，用通用的数据类型Object来实现。


- 泛型类

需求: 如果我们需要写一个类，这个类里面有一个成员方法:

1.这个方法在调用的时候可以传入```任何类型的对象```

2.这个成员方法的返回值是```它本身```

```
e.g:
class Person {
	public Object test(Object obj){		//传入任何类型的对象
return obj;		//返回值是它本身
	}


}
```

那在主方法里调用的时候:
```
Person p=new Person();
Object o1=p.test(“asdasdasd”);
String a1=(String)o1;	//必须进行"向下转型"
System.out.println(a1.charAt(2));	//才能使用"特殊的方法"
```

但是如果使用```泛型类```，可以这么写：
```
class Person<T>{		//泛型用一个通用数据类型T来代替Object
	public T test(T o){
	
}
}
```
那我们可以这么调用:
```
Person<String> p=new Person<String>();
String o1=p.test(“asdasdasd”);
System.out.println(o1.charAt(2));
```
特点:

1.在实例化的过程中```指定泛型参数```

2.指定完泛型参数后，如果传入```其他类型的参数```编译就会```报错```

3.方法在返回的时候```不需要```我们向下转型

4.如果实例化过程中```没有指定```泛型参数，则泛型参数相当于```Object```

注意: 泛型参数的范围只可以通过```extends``` 限定泛型参数的一个上界

```
例如:
class Person<T extends A>{
}

class A{


}
class B extends A{


}
```

- 泛型类的继承关系

泛型类并```不是协变的```。意思是说，泛型类的```参数```具有```继承关系```，但是```泛型类本身```并```没有```任何关系。

```
需求:
写一个方法   参数列表  可以接受的参数为ArrayList，并且对ArrayList中的泛型参数有一定要----例如是Person+Person的子类。(Student类是继承Person类的)

错误代码:
void test(ArrayList<Person> o){

}

错误, 因为ArrayList<Person>和ArrayList<Student>并没有任何关系。
```
所以如果要满足上述的需求则可以**使用通配符**，具体代码如下:

```
void test(ArrayList<? extends Person> o){
①


}
```
那如果是要求泛型参数是是某个类+某个类的父类呢?
```
void test(ArrayList<? super Person> o){
②


}
```


对于①来说，我们基本上什么--都不能add，只能add null。
对于②来说，我们可以add Person或者Person的子类。


注意: 我们也可以利用extends 和 super 来确定泛型参数的边界

- 泛型方法

如果希望并```不是实例化过程```告诉我们泛型参数，而是 ```方法调用过程 ```传的参数 告诉我们  返回值得具体类型，从而避免向下转型，则可以使用泛型方法:

原来使用泛型类的参数定义的代码如下:
```
T test(T t){		//定义泛型参数成员变量
	return t;		//返回值也可使用
}

<E> E test(E t)//参数列表中变量类型是E

}

```
泛型方法使用场景:

1.```静态方法```并```不能```使用类的泛型参数，因为```不需要```实例化过程

2.如果这个方法比较多变，则尽量使用泛型方法

- 泛型的类型擦除

由于数组是```协变的```，泛型的类型擦除的影响，导致禁止生成具有```泛型类类型```数组.

```
Pair<Double> cell=new Pair<>();
cell.setValue(4.5);
Pair<String>[] arr1=new Pairt<>[10];
Object[] arr2=arr1;
arr2[0]=cell;
String s=arr1[0].getValue();


class Pair<T> {  
    private T value;  
    public T getValue() {  
        return value;  
    }  
    public void setValue(T value) {  
        this.value = value;  
    }  
}  
```


# 集合

## List

-	集合由来

a.数组长度是```固定的```,当添加的元素超过了数组的长度时需要对数组```重新定义```,太麻烦,。

b.java内部给我们提供了```集合类```,能存储任意```对象```,长度是```可以改变的```,随着元素的增加而增加。

-	集合和数组的区别
区别1 : 
* 数组既可以存储```基本数据类型```,又可以存储```引用数据类型```
* 集合只能存储```引用数据类型```(对象)
* 集合中也可以存储基本数据类型,但是在存储的时候会```自动装箱变成对象```
区别2:
* 数组长度是```固定的```,不能自动增长
* 集合的长度的是```可变的```,可以根据元素的增加而增长

- 使用场景
* 如果元素个数是```固定的```推荐用数组
* 如果元素个数```不是固定的```推荐用集合

-	集合继承体系图
 


注意: 以ArrayList为例进行演示，LinkedList用法完全一致，只是使用场景不一样.
```
boolean add(E e)
		boolean remove(Object o)
		void clear()
E get(int index)
		boolean contains(Object o)
		boolean isEmpty()
		int size()	  
		
		boolean addAll(Collection c)
		boolean removeAll(Collection c)
		boolean containsAll(Collection c)
		boolean retainAll(Collection c)
```

- 集合的遍历
  
①转化为数组进行遍历

```
代码如下:
ArrayList coll = new ArrayList();
coll.add(new Student("张三",23));		//可无限添加
coll.add(new Student("李四",24));
coll.add(new Student("王五",25));
coll.add(new Student("赵六",26));
			
Object[] arr = coll.toArray();				
for (int i = 0; i < arr.length; i++) {
Student s = (Student)arr[i];			
System.out.println(s.getName() + "," + s.getAge());
}
```

②迭代器遍历

```
代码如下:
ArrayList c = new ArrayList();
c.add("a");
c.add("b");
c.add("c");
c.add("d");
Iterator it = c.iterator();				
while(it.hasNext()) {				
	System.out.println(it.next());
}
```

(注意如果需要更改list的结构，要```调用迭代器的方法```，否则会抛出```ConcurrentModificaitionException```)

③for-each遍历

内部的实现也是迭代器,所以也请注意```ConcurrentModificationException```

④利用索引和普通循环结构进行遍历

- ArrayList和LinkedList场景使用区别
  
LinkedList经常用在```增删操作较多```而查询操作很少的情况下;
ArrayList经常用在增删操作较少而```查询操作很多```的情况下。



## Set

-	HashSet的使用

1. HashSet存储字符串并遍历
```
	HashSet<String> hs = new HashSet<>();
	boolean b1 = hs.add("a");
	boolean b2 = hs.add("a");			//判断b1,b2两个字符串在字面上是否相等			
	System.out.println(b1);
	System.out.println(b2);
	for(String s : hs) {
		System.out.println(s);
	}
```
注意String的写法，如果是```new String(“a”)```,则结果依然是```都存进去了```

HashSet存储自定义对象保证元素```唯一性```

```
			HashSet<Person> hs = new HashSet<>();
			hs.add(new Person("张三", 23));
			hs.add(new Person("张三", 23));
			hs.add(new Person("李四", 23));
			hs.add(new Person("李四", 23));
			hs.add(new Person("王五", 23));
			hs.add(new Person("赵六", 23));
```

- HashSet原理

a.我们使用Set集合都是需要```去掉重复元素```的, 如果在存储的时候```逐个equals()比较```, 效率较低,哈希算法```提高了```去重复的效率, ```降低了```使用equals()方法的次数

b.当HashSet调用add()方法存储对象的时候, 先调用对象的```hashCode()```方法得到一个哈希值, 然后在集合中查找是否有```哈希值相同的```对象

(1)如果没有哈希值相同的对象就```直接存入```集合

(2))如果有```哈希值相同的```对象, 就和哈希值相同的对象```逐个进行equals()```比较,比较结果为false就存入, true则不存

推断:
1.	hashCode()方法返回的值不同,则一定不是同一个对象
2.	hashCode()方法返回的值相同，则不一定是同一个对象
3.	equals方法返回值不同，是不同对象，返回值相同是同一个对象。
(前提是这些方法都没有被复写继承的是Object的方法)

- Treeset的使用

存储Person对象,画图演示: TreeSet使用Comparable存储自定义对象并遍历(按照年龄大小)

```
代码如下:
public int compareTo(Object o) {
Person p=(Pesron)o;
        int length = this.name.length() - o.name.length();              
        return length== 0 ? this.age - o.age : length;                       
}

```
(上面的代码可以理解为```建树```的过程)

案例演示TreeSet使用Comparator 存储自定义对象并遍历(按照年龄大小)
```
代码如下:
class A implements Comparator{
public int compare(Object s1, Object s2) {    
	Person p1=(Person)s1;   
Person p2=(Person)s2;      
          return p1.age-p2.age;
    }
}
(上面的代码可以理解为建树的过程)

        TreeSet<String> ts = new TreeSet<>(new A());       
        ts.add("aaaaaaaa");
        ts.add("z");
        ts.add("wc");
        ts.add("nba");
        ts.add("cba");
      
        System.out.println(ts);
```
- 两种方式的区别
  
TreeSet构造函数什么都不传,但是Person类要实现Comparable接口

TreeSet构造函数需要传一个写有标准的类的对象,但是Person类不要实现		Comparable接口

TreeSet如果传入Comparator,Person类又实现了Comparable接口，就优先按照Comparator



## Map

-	HashMap的使用

a:添加功能
V put(K key,V value):添加元素。
如果键是第一次存储，就直接存储元素，返回null
如果键不是第一次存在，就用值把```以前的值替换掉```，返回以前的值

b:删除功能
void clear():移除所有的键值对元素
 V remove(Object key)：根据键删除键值对元素，并把值返回
c:判断功能
boolean containsKey(Object key)：判断集合是否包含指定的键
boolean containsValue(Object value):判断集合是否包含指定的值
boolean isEmpty()：判断集合是否为空

d:获取功能
Set<Map.Entry<K,V>> entrySet():
V get(Object key):根据键获取值
Set<K> keySet():获取集合中所有键的集合
Collection<V> values():获取集合中所有值的集合

e:长度功能
int size()：返回集合中的键值对的个数

- HashMap的遍历

第一种思路:获取所有键的集合，遍历键的集合，获取到每一个键, 根据键找值。
```
代码如下:
			HashMap<String, Integer> hm = new HashMap<>();
			hm.put("张三", 23);
			hm.put("李四", 24);
			hm.put("王五", 25);
			hm.put("赵六", 26);
			Set<String> keySet = hm.keySet();						
Iterator<String> it =keySet.iterator();	
			while(it.hasNext()) {						
				String key = it.next();					
				Integer value = hm.get(key);			
				System.out.println(key + "=" + value);	
			}
```

第二种思路:键值对对象找键和值思路,获取所有键值对对象的集合,遍历键值对对象的集合，获取到每一个键值对对象,根据键值对对象找键和值。

```
代码如下:	
HashMap<String, Integer> hm = new HashMap<>();
hm.put("张三", 23);
hm.put("李四", 24);
hm.put("王五", 25);
hm.put("赵六", 26);
Set<Map.Entry<String, Integer>> entrySet = hm.entrySet();	
Iterator<Entry<String, Integer>> it = entrySet.iterator();
while(it.hasNext()) {
Map.Entry<String, Integer> en = it.next();	
String key = en.getKey();								
	Integer value = en.getValue();							
	System.out.println(key + "=" + value);
}
```

# 线程

- 多线程和多进程的区别

多进程是指操作系统能同时运行多个任务（程序）。

多线程是指在同一程序中有多个顺序流在执行。	

 

-多线程的创建方式

1.继承的方式:通过```继承Thread```并且```重写```run方法.

```
代码如下:
class MyThread extends Thread{
	public void run(){
}
}
主方法中先生成对象然后启动线程:
MyThread myThread=new MyThread();
myThread.start();
```

2.通过```实现Runnable接口```: ```重写run方法```并将生成的对象通过Thread的构造方法传给相应的thread对象.

```
代码如下:
class MyRunnable implements Runnable{
	public void run(){
}
}

主方法中:
MyRunnable myRunnabble=new MyRunnable();
Thread a=new Thread(myRunnabble);
a.start();
```


- 直接调用线程的run()方法和调用start()方法的区别

1.如果直接调用 run 方法则相当于在主线程中调用一个普通对象的普通成员方法，```并不会开启线程```

2.调用 ```start 方法```则会让线程进入```就绪状态```

- synchronized关键字

同步。对象锁和类锁的使用，判断代码会不会**交错**，运行会不会发生一些情况。

1.对象锁

a.当使用对象锁的时候，注意要是```相同的对象```，并且当有线程正在访问对象锁内部的代码的时候，其他线程无法访问。(```注意无法访问的范围```)。

b.但是并不影响```没有使用对象锁```的部分的代码的运行。

对象锁分为两类一个叫做```synchronized代码块(圆括号内是普通类的对象)```，另外一个是```sybchronized修饰普通成员方法```。它们二者其实可以通过```this关键字```进项转化。


2.类锁

a. 当使用类锁的时候，```只要是同一个类的对象```.当有线程正在访问类锁内部的代码的时候，其他线程无法访问。(```注意无法访问的范围```)

b. 但是并不影响```没有使用类锁```的部分的代码的运

对象锁分为两类一个叫做```synchronized代码块(圆括号内是class对象)```，另外一个是```sybchronized修饰静态成员方法```。它们二者其实可以通过```class对象```进项转化。
 
注意:  **类锁和对象锁之间没有关系**。相比之下，对象锁要难一些，要判断是否是一个对象。

- sleep方法
会让当前线程进入阻塞状态，但是不会释放锁.

(**注意: 会丢弃当前剩余的时间片,立马进入阻塞状态**)


- yield方法
会让```当前线程暂停执行，进入就绪状态```

(**注意: 会丢弃当前剩余的时间片,立马回到调度中心**)





- join方法
会让```产生线程进入阻塞状态```，直到相应线程执行完毕。不是静态方法，需要用线程去调用。

(**注意: 会丢弃当前剩余的时间片,立马进入阻塞状态**)




- wait和notify/notifyAll方法

略

- 线程间的通讯。

一个线程必须在```拿到一个对象锁```的情况下调用```这个对象的wait()方法```进入```休眠```的状态并且```释放锁```，当另一个线程也拿到这个锁时可以调用这个对象的```notify/notifyAll```让一个或者```全部休眠线程```回到就绪状态(调度中心)，然后如果休眠的线程拿到```锁和时间片```将会从上次休眠的代码处```继续执行```。注意压缩包中的示例代码。





