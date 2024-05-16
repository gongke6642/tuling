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
= 上划线
在文本上添加一行。
= 例
#image("9.png")
= 参数
#image("10.png")
= 划线
如何绘制线条。

如果设为 auto， 则采用文本颜色和当前字体定义的粗细。详细内容参见 line 的文档。

默认：auto
= 偏移
上划线相对于基准线的位置。如果设为 auto，则从字体表中读取。

默认：auto
= 长度
超出文本长度的量（如果设为负数则缩短）。

默认：0pt
= 回避
是否跳过与字形冲突的部分。

默认：true
= 背景
上划线是否位于内容后面。

默认：false
= 内容
要添加上划线的内容。