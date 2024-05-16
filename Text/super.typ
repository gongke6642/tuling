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
= 上标
以上标形式呈现文本。

文本将会呈现为较小的形式，基准线也会上升。
= 例
#image("22.png")
= 参数
#image("23.png")
= 排版
是否优先选择字体的专用上标字符。

如果启用，Typst 首先尝试将文本转换为上标代码点。如果失败，它将尝试渲染升高和缩小的普通字母。

默认：true
= 基线
合成上标基准线的偏移量。 如果 typographic 为 true 并且字体对给定的 body 有上标代码点，则不适用。

默认：0.2em
= 大小
合成上标的字体大小。 如果 typographic 为 true 并且字体对给定的 body 有上标代码点，则不适用。

默认：0.6em
= 内容
要显示为上标的内容。