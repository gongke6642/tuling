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

= 换行
插入换行符

将段落前进到下一行。段落末尾的单个尾随换行符将被忽略，但多个尾随换行符会创建额外的空行。
= 例
#image("3.png")
= 语法
此函数还具有专用语法：要插入换行符，只需写一个反斜杠后跟空格即可。这总是会造成不合理的中断。
= 参数
#image("4.png")
= 正确
是否在断行前进行对齐。

如果在对齐文本时发现比 Typst 做的更好的换行机会，这会很有用。

默认：false