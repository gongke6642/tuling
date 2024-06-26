= block
块级容器。

这样的容器可用于分隔内容、调整其大小并为其提供背景或边框。

== 例子
使用块，您可以为内容提供背景，同时仍允许其跨多个页面。

#image("屏幕截图 2024-04-14 164259.png")

#image("屏幕截图 2024-04-14 163924.png")

width

块的宽度。

默认：auto

#image("屏幕截图 2024-04-14 164427.png")

height

块的高度。当高度大于页面上的剩余空间并且breakable为 时true，该块将以剩余高度继续在下一页上。

默认：auto
#image("屏幕截图 2024-04-14 164534.png")

breakable

是否可以打破该块并继续下一页。

默认：true

#image("屏幕截图 2024-04-14 164617.png")

fill

块的背景颜色。有关更多详细信息，请参阅 矩形的文档。

默认：none

stroke

块的边框颜色。有关更多详细信息，请参阅 矩形的文档。

默认：none

radius

街区的角落需要多少圆角。有关更多详细信息，请参阅 矩形的文档。

默认：0pt

inset

填充块内容的量。有关更多详细信息，请参阅包装 盒的文档。

默认：0pt

outset

在不影响布局的情况下将块的大小扩大多少。有关更多详细信息，请参阅包装盒的文档。

默认：0pt

spacing

该块周围的间距。这是设置above和 below为相同值的简写。

默认：1.2em

#image("屏幕截图 2024-04-14 164840.png")

above

该块与其前一个块之间的间距。优先于spacing.可以与显示规则结合使用来调整任意块级元素周围的间距。

默认：1.2em

below

该块与其后继块之间的间距。优先于spacing.

默认：1.2em

clip

是否剪切块内的内容。

默认：false

body

块的内容。

默认：none