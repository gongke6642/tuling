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
= 原始文本
带有可选语法高亮的原始文本。

使用等宽字体逐字显示文本，通常用于将代码嵌入文档中。
= 例
#image("11.png")
= 语法
此函数还具有专用语法。您可以将文本括在 1 或 3+ 反引号 （） 中以使其原始。两个反引号将生成空的原始文本。当您使用三个或更多反引号时，还可以指定一个语言标记，以便在开始反引号之后直接突出显示语法。在原始块中，所有内容（语言标记除外，如果适用）都按原样呈现，特别是没有转义序列。

语言标记是一个标识符，仅当有三个或更多反引号时，它才直接跟随开始的反引号。如果文本以看起来像标识符的内容开头，但不需要突出显示语法，请以单个空格（将被修剪）开始文本或使用单个反引号语法。如果您的文本应该以反引号开头或结尾，请在其前面或后面放置一个空格（它将被修剪）。
= 参数
#image("12.png")
= 文本
原始文本块。

你还可以创造性地使用原始块为你的自动化创建自定义语法。
= 块
是否将原始文本显示在一个单独的块中。

在标记模式中，使用一个反引号会将此值设置为 false。 如果包含的内容至少包含一个换行符，则使用三个反引号会将其设置为 true。

默认：false
= 语言
要在其中突出显示语法的语言。

要在其中突出显示语法的语言，用法与 Markdown 代码块类似。 除了 Markdown 中也有的典型编程语言后缀外，它还分别支持 Typst 标记模式和 Typst 脚本模式分别对应的“typ”和“typc”后缀。

默认：none
= 对齐
原始块中每条线应具有的水平对齐方式。如果这不是原始块（如果指定，则在标记模式中使用block: false或单个反引号）

默认情况下，它被设置为start，这意味着默认情况下，无论当前上下文的对齐方式如何，原始文本都朝向块内文本方向的开头对齐（例如，允许您将原始块本身居中，而不将其内部的文本居中）。

默认：start
= 句法
要加载的一个或多个附加语法定义。语法定义应采用 sublime-syntax 文件格式。

默认：()
= 主题
用于语法高亮的主题。主题文件应该使用tmTheme文件格式。

应用主题仅影响特定突出显示文本的颜色。它不考虑主题的前景和背景属性，因此您可以保留对原始文本颜色的控制。您可以使用text函数自行应用前景颜色，使用填充块应用背景颜色。您还可以使用xml函数从主题中提取这些属性。

默认：none
= 制表符大小
制表位的大小（以空格为单位）。选项卡将替换为足够的空格，以便与大小的下一个倍数对齐。

默认：2
= 定义
= 行
突出显示的原始文本行。

这是一个由原始元素合成的辅助元素。

它允许您访问行的各种属性，例如行号、未突出显示的原始文本、突出显示的文本以及它是原始块的第一行还是最后一行。
#image("13.png")

= 数字
原始块内的原始行的行号从 1 开始。

= 计数
原始块中的总行数。

= 文本
原始文本的行。

= 正文
突出显示的原始文本。