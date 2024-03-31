#set par(
  justify: true,
  leading: 0.52em,
)
= 制作模版

在本教程的前三章中，您已经学习了如何使用 Typst 编写文档、应用基本样式以及深入自定义其外观以符合发布者的样式指南。因为你在上一章写的论文取得了巨大的成功，你被要求为同一会议写一篇后续文章。这一次，您希望采用在上一章中创建的样式，并将其转换为可重用的模板。在本章中，您将学习如何创建一个模板，您和您的团队只需一个显示规则即可使用该模板。让我们开始吧！

== 玩具模版

在 Typst 中，模板是可以包装整个文档的函数。要了解如何做到这一点，让我们首先回顾一下如何编写自己的函数。他们可以做任何你想让他们做的事情，所以为什么不疯狂一点呢？

#image("1.png")

此函数采用单个参数 ，并返回一个被星星包围的内容块。我们还将整个东西放在一框里，这样令我们惊讶的术语就不会通过换行符与它的闪光点分开.*termterm*

Typst 附带的许多函数都具有可选的命名参数。我们的函数也可以拥有它们。让我们在函数中添加一个参数，选择文本的颜色。我们需要提供默认颜色，以防未给出参数。

#image("2.png")

模板现在通过使用“所有内容”显示规则来工作，该规则将自定义函数应用于整个文档。让我们用我们的函数来做到这一点.*amazed*

#image("3.png")

现在，我们的整个文档将传递给函数，就好像我们将其包裹在函数周围一样。这对于这个特定的函数不是特别有用，但是当与集合规则和命名参数结合使用时，它可能非常强大.*amazed*

== 嵌入设置和显示规则

为了将一些设置和显示规则应用于我们的模板，我们可以在函数中的内容块中使用然后将文档插入到该内容块中.*setshow*

#image("4.png")

就像我们在上一章中已经发现的那样，集合规则将适用于其内容块中的所有内容。由于“所有内容”显示规则将我们的整个文档传递给函数，因此模板中的文本集规则和字符串显示规则将应用于整个文档。让我们利用这些知识创建一个模板，再现我们在上一章中写的论文的正文风格.*template*

#image("5.png")

我们从上一章复制粘贴了大部分代码。唯一的两个区别是，我们将所有内容都包装在函数中，并直接在参数上调用列函数，因为它已经包含了文档的内容。此外，我们使用了大括号的代码块而不是内容块。这样，我们就不需要在所有设置的规则和函数调用前面加上。作为交换，我们不能再将标记直接写入其中.*confdoc*

还要注意标题的来源：我们以前把它放在一个变量中。现在，我们接收它作为模板函数的第一个参数。因此，我们必须在调用模板的 显示规则中指定它。

== 具有命名参数的模板

我们在上一章的论文有一个标题和一个作者名单。让我们将这些内容添加到我们的模板中。除了标题之外，我们还希望我们的模板能够接受作者列表及其隶属关系和论文摘要。为了保持可读性，我们将添加这些参数作为命名参数。最后，我们希望它像这样工作：

#image("6.png")

让我们构建这个新的模板函数。首先，我们向参数添加一个默认值。这样，我们可以在不指定标题的情况下调用模板。我们还添加了默认值为空的命名和参数。接下来，我们将上一章中生成标题、摘要和作者的代码复制到模板中，将固定的详细信息替换为参数.*titleauthorsabstract*

新参数需要一个包含关键字的字典数组。由于我们可以拥有任意数量的作者，因此我们会动态确定作者列表是否需要一列、两列或三列。首先，我们在数组上使用 .len（） 方法确定作者的数量。然后，我们将列数设置为此计数的三个最小值，这样我们创建的列数就不会超过三列。如果作者超过三位，则将插入新行。为此，我们还在函数中添加了一个参数。否则，行之间的距离会太近。为了从字典中提取有关作者的详细信息，我们使用字段访问语法。*authorsnameaffiliationemailauthorsrow-guttergrid*

我们仍然必须为每个作者提供一个网格参数：这是数组的*map*方法派上用场的地方。它采用一个函数作为参数，该参数与数组的每个项目一起调用。我们给它传递一个函数，该函数格式化每个作者的详细信息，并返回一个包含内容值的新数组。现在，我们有一个值数组，我们想将其用作网格的多个参数。我们可以通过使用点差运算符来做到这一点。它采用一个数组，并将其每个项作为单独的参数应用于函数。

生成的模板函数如下所示：

#image("7.png")

== 单独的文件

大多数情况下，模板是在不同的文件中指定的，然后导入到文档中。这样，您写入的主文件将保持整洁，并且您的模板可以轻松重复使用。通过单击加号按钮在文件面板中创建一个新的文本文件并将其命名为 。将函数定义移动到该新文件中。现在，您可以通过在显示规则之前添加导入来从主文件访问它。指定关键字和冒号之间的文件路径，然后命名要导入的函数.*conf.typconfimport*

#image("8.png")

现在，我们已将会议论文转换为该会议的可重复使用的模板！为什么不在 Typst 的 Discord 服务器上分享它，以便其他人也可以使用它呢？

== 回顾

恭喜，您已经完成了 Typst 的教程！在本节中，您学习了如何定义自己的函数，以及如何创建和应用定义可重用文档样式的模板。你已经走了很远，学到了很多东西。您现在可以使用 Typst 编写自己的文档并与他人共享。

我们仍然是一个超级年轻的项目，正在寻找反馈。如果您有任何问题、建议或发现错误，请在 Typst 的 Discord 服务器、我们的联系表格或社交媒体上告诉我们。

那你还在等什么？注册并写点东西！

#image("9.png")

