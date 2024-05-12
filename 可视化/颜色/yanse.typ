= 颜色
特定颜色空间中的颜色。

Typst 支持：

sRGB通过rgb函数

通过 cmyk 函数实现设备 CMYK

D65 Gray 通过亮度功能

Oklab 通过 oklab 函数

通过 oklch 函数的 Oklch

通过 color.linear-rgb 函数实现线性 RGB

HSL 通过 color.hsl 函数

HSV 通过 color.hsv 函数
= 例
#image("1.png")
= 预定义颜色
Typst 定义了以下内置颜色：
#image("2.png")
预定义的颜色和最重要的颜色构造函数在全局可用，也可以在颜色类型的范围内使用，因此您可以编写 或只编写 .color.redred
#image("3.png")
= 预定义的色彩映射表
Typst 还包括许多可用于渐变的预设颜色图。这些只是在模块中定义的颜色数组。color.map
#image("4.png")

地图	详
turbo	感知上均匀的彩虹状彩色图。有关详细信息，请阅读这篇博文。

cividis	蓝色到灰色到黄色的颜色图。有关详细信息，请参阅此博客文章。

rainbow	在整个色谱中循环。通过将插值颜色空间设置为 HSL 来最好使用此颜色映射表。彩虹渐变不适合数据可视化，因为它在感知上并不均匀，因此读者不清楚值之间的差异。它只能用于装饰目的。

spectral	红色到黄色到蓝色的颜色图。

viridis	紫色到蓝绿色到黄色的颜色图。

inferno	从黑色到红色到黄色的颜色图。

magma	黑色到紫色到黄色的颜色图。

plasma	紫色到粉红色到黄色的颜色图。

rocket	从黑到红到白的彩色地图。

mako	黑色到蓝绿色到黄色的颜色图。

vlag	浅蓝色到白色到红色的颜色图。

icefire	浅蓝绿色到黑色到黄色的颜色图。

flare	感知上一致的橙色到紫色的颜色图。

crest	蓝色到白色到红色的颜色映射。

一些流行的预设不包括在内，因为它们在免费许可下不可用。其他的，如 Jet，不包括在内，因为它们对色盲不友好。随意使用或创建包含其他对您有用的预设的包！
#image("5.png")
= 定义
= luma
创建灰度颜色。

灰度颜色在内部由单个组件表示。lightness

这些组件也可以使用 components 方法获得。
#image("6.png")
= oklab
创建 Oklab 颜色。

此色彩空间非常适合以下用例：

色彩处理，例如饱和度，同时保持感知色调

创建具有均匀感知亮度的灰度图像

创建平滑均匀的颜色过渡和渐变

线性 Oklab 颜色在内部由四个分量组成的数组表示：

亮度（比率)

a（浮点数或比率。比率相对于 ;意义等于0.450%0.2)

b（浮点数或比率。比率相对于 ;意义等于0.450%0.2)
alpha（比率)

这些组件也可以使用 components 方法获得。
#image("7.png")
= oklch
创建 Oklch 颜色。

此色彩空间非常适合以下用例：

涉及亮度、色度和色调的色彩处理

创建具有均匀感知亮度的灰度图像

创建平滑均匀的颜色过渡和渐变

线性 Oklch 颜色在内部由四个分量组成的数组表示：

亮度（比率)

色度（浮点数或比率。比率相对于 ;意义等于0.450%0.2)

色调（角度)

alpha（比率)

这些组件也可以使用 components 方法获得。
#image("8.png")
= linear-rgb
创建具有线性亮度的 RGB（A） 颜色。

此颜色空间类似于 sRGB，但区别在于颜色分量没有经过伽玛校正。这样可以更轻松地执行颜色操作，例如混合和插值。虽然，您应该更愿意使用oklab函数来执行这些操作。

线性 RGB（A） 颜色在内部由四个分量组成的数组表示：

红色（比率)

绿色（比率)

蓝色（比率)

alpha（比率)

这些组件也可以使用 components 方法获得。
#image("9.png")
= rgb
创建 RGB（A） 颜色。

颜色在 sRGB 色彩空间中指定。

RGB（A） 颜色在内部由四个分量组成的数组表示：

红色（比率)

绿色（比率)

蓝色（比率)

alpha（比率)

这些组件也可以使用 components 方法获得。
#image("10.png")
#image("11.png")
= cmyk
创建 CMYK 颜色。

如果要面向特定打印机，这将非常有用。转换为 RGB 进行显示预览可能与打印机再现颜色的方式不同。

CMYK 颜色在内部由四个组件组成的数组表示：

青色（比率)

洋红色（比率)

黄色（比率)

键（比率)

这些组件也可以使用 components 方法获得。
#image("12.png")
= hsl
创建 HSL 颜色。

此色彩空间可用于按色调、饱和度和亮度指定颜色。它对于色彩处理也很有用，例如在保持感知色调的同时保持饱和度。

HSL 颜色在内部由四个分量组成的数组表示：

色调（角度)

饱和度（比率)

亮度（比率)

alpha（比率)

这些组件也可以使用 components 方法获得。
#image("13.png")
= hsv
创建 HSV 颜色。

此颜色空间可用于按色调、饱和度和值指定颜色。它对于色彩处理也很有用，例如在保持感知色调的同时保持饱和度。

HSV 颜色在内部由四个分量组成的数组表示：

色调（角度)

饱和度（比率)

值（比率)

alpha（比率)

这些组件也可以使用 components 方法获得。
#image("14.png")

= components
提取此颜色的成分。

此数组的大小和值取决于颜色空间。您可以使用空间来获取色彩空间。下面是色彩空间及其组件的表格：
#image("15.png")
= space
返回此颜色空间的构造函数：

luma

oklab

oklch

linear-rgb

rgb

cmyk

hsl

hsv
#image("16.png")
#image("17.png")
#image("18.png")
#image("19.png")
#image("20.png")
#image("21.png")
#image("22.png")

