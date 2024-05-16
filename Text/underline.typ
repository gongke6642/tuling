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
= 下标
为文本添加下划线。
= 例
#image("30.png")
= 参数
#image("31.png")
= 划线
如何绘制线条。

详细内容参见 line 的文档 如果设为 auto， 则采用文本颜色和当前字体定义的粗细。

默认：auto
= 偏离
相对于基准线的位置。如果设为 auto，则从字体表中读取。

默认：auto
= 长度
超出文本长度的量（如果设为负数则缩短）。

默认：0pt

= 规避
是否跳过与字形冲突的部分。

默认：true
= 背景
下划线是否应该放在内容后.

默认：false

= 内容
要添加下划线的内容。
