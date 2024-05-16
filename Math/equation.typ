#set text(
  size:10pt,
  
)
#set page(
  paper:"a5",
  margin:(x:1.8cm,y:1.5cm),
)
#set par(
  justify: true,
  leading: 0.52em,
)
= 方程式
一个数学方程式。

可以与文本内嵌显示，也可以作为单独的块显示。
= 例
#image("22.png")
= 语法
此函数还具有专用语法：在美元符号内编写数学标记以创建方程式。以至少一个空格开始和结束方程会将其提升到水平居中的单独块中。有关数学语法的更多详细信息，请参阅 math 主页。
= 参数
#image("23.png")
= 块
方程式是否显示为单独的块。

默认：false
= 编号
如何对表达式进行编号。

默认：none
= 编号对齐
等式编号的对齐方式。

默认情况下，对齐方式为 end + horizon 。对于水平分量，可以使用文本方向的 right 、left 或 start 和 end ;对于垂直分量，可以使用 top 、horizon 或 bottom 。

违约：end + horizon
= 补充
数学表达式的补充内容。

添加在被引用的公式编号的前面。

如果指定了一个函数，将会传入引用的表达式，并返回其内容。

默认：auto
= 内容
等式的内容。
