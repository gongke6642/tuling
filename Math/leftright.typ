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
= 左/右
分隔符匹配。

lr函数允许您匹配两个分隔符，并使用它们包含的内容进行缩放。虽然对于语法匹配的分隔符也会自动发生这种情况，但lr允许您匹配两个任意分隔符并精确控制它们的大小。除了lr函数之外，Typst 还提供了更多函数，用于为绝对值、水解值和下限值以及范数创建分隔符配对。
= 例
#image("26.png")
= 功能
= lr
缩放分隔符。

虽然默认情况下匹配的分隔符缩放，但这可用于缩放不匹配的分隔符，并更精确地控制分隔符缩放。
#image("27.png")
= 大小
括号的大小，相对于包装内容的高度。

默认：auto
= 内容
分隔的内容，包括分隔符。
= 中
将分隔符垂直缩放到最近周围的 lr() 组。
#image("28.png")
= 内容
要缩放的内容。
= 绝对值
采用表达式的绝对值。
#image("29.png")
= 大小
括号的大小，相对于包装内容的高度。
= 内容
取绝对值的表达式。
= 模方
采用表达式的模方。
#image("30.png")
= 大小
括号的大小，相对于包装内容的高度。
= 内容
采取模方的表达式。
= 向下取整
向下取整表达式
#image("31.png")
= 大小
括号的大小，相对于包装内容的高度。
= 内容
采取向下取整的表达式。
= 向上取整
向上取整表达式
#image("32.png")
= 大小
括号的大小，相对于包装内容的高度。
= 内容
采取向上取整的表达式。
= 四舍五入
对表达式进行四舍五入。
#image("33.png")
= 大小
括号的大小，相对于包装内容的高度。
= 内容
采取四舍五入的表达式。