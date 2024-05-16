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

= 高亮

用背景色突出显示文本。

= 例
#image("1.png")
= 参数
#image("2.png")
= 填充

用于突出显示文本的颜色。

默认：rgb（“fffdllal”）
= 笔画

高亮显示的边框颜色。有关详细信息，请参阅矩形的文档。

默认：(:)
= 顶部边缘
背景矩形的顶端。

变体 详

"ascender"
上行线高度，通常超过所有字形的高度。

"cap-height"
大写字母的近似高度。

"x-height"
非上行线小写字母的近似高度。

"baseline"
字母所依托的基线高度。

"bounds"
字形边界框的顶部边缘高度。

默认："ascender"
= 底部边缘
背景矩形的底端。

变体	详

"baseline"	
字母所在的基线。

"descender"	
字体的下行线高度，通常超过所有字形的深度。

"bounds"	
字形边界框的下边缘。

默认："descender"
= 延伸
将背景扩展到内容之外（负数则在内容之内）的数量。

默认：0pt
= 半径
高光的四周圆的半径是多少。有关详细信息，请参阅矩形的文档。
= 内容
应突出显示的内容