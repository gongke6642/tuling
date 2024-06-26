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
= 附加
下标、上标和限制。

附件可以显示为下标/上标或限制。Typst 会根据基数自动决定哪个更合适，但您也可以使用 scripts 和 limits 函数手动控制它。
= 例
#image("10.png")
= 语法 
此函数还具有用于基数后附件的专用语法：使用下划线表示下标，即底部附件，使用帽子 （^） 表示上标，即顶部附件。
= 功能
= 附加
带有可选附件的底座。
#image("11.png")
= 基座
事物所附着的底座。
= t 
顶部附件，巧妙地放置在底座的右上方或上方。

您可以用limits()或者scripts()将底座包裹起来以此覆盖智能定位。

默认：none
= b 
底部附件，巧妙地放置在底座的右下角或下方。

您可以用limits()或者scripts()将底座包裹起来以此覆盖智能定位。

默认：none
= tl
左上角的附件（在底座之前）。

默认：none
= bl
左下角的附件（在底座之前）。

默认：none
= tr
右上角的附件（在底座之后）。

默认：none
= br
右下角的附件（在底座之后）。

默认：none
= 脚本
强制底座将附件显示为脚本。
#image("12.png")
= 内容
要将脚本附加到底座。
= 限制
强制底座将附件显示为限制。
#image("13.png")
= 内容
要将脚本附加到底座。
= 内联
是否也要在内联方程中强制限制。

全局应用限制时（例如，通过显示规则），通常最好禁用此限制。

默认：true