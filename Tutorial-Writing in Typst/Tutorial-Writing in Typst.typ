Writing in Typst  

用Typst写作

Let's get started! Suppose you got assigned to write a technical report for university. It will contain prose, maths, headings, and figures. To get started, you create a new project on the Typst app. You'll be taken to the editor where you see two panels: A source panel where you compose your document and a preview panel where you see the rendered document.

我们开始吧!假设你被分配为大学写一份技术报告。它将包含散文、数学、标题和数字。要开始,您可以在Typst应用程序上创建一个新项目。您将被带到编辑器,在那里您会看到两个面板:一个是编写文档的源面板,一个是您可以看到渲染文档的预览面板。


You already have a good angle for your report in mind. So let's start by writing the introduction. Enter some text in the editor panel. You'll notice that the text immediately appears on the previewed page

你已经为你的报告想好了。因此，让我们从写导言开始。在编辑器面板中输入一些文本。您会注意到文本立即出现在预览页面上。

Throughout this tutorial, we'll show code examples like this one. Just like in the app, the first panel contains markup and the second panel shows a preview. We shrunk the page to fit the examples so you can see what's going on.

在本教程中，我们将展示像这样的代码示例。就像在应用程序中一样，第一个面板包含标记，第二个面板显示预览。我们缩小了页面以适应示例，以便您可以看到发生了什么。

The next step is to add a heading and emphasize some text. Typst uses simple markup for the most common formatting tasks. To add a heading, enter the = character and to emphasize some text with italics, enclose it in _underscores_.

下一步是添加一个标题并强调一些文本。Typst使用简单的标记来执行最常见的格式化任务。要添加标题,请输入=字符,并用斜体强调一些文本,请将其括在_underscores_。

That was easy! To add a new paragraph, just add a blank line in between two lines of text. If that paragraph needs a subheading, produce it by typing == instead of =. The number of = characters determines the nesting level of the heading.

Now we want to list a few of the circumstances that influence glacier dynamics. To do that, we use a numbered list. For each item of the list, we type a + character at the beginning of the line. Typst will automatically number the items.

那很容易！要添加新段落，只需在两行文本之间添加一行空白。如果该段落需要子标题，请键入==而不是=来生成。=字符的数量决定了标题的嵌套级别。
现在，我们想列出一些影响冰川动态的情况。要做到这一点，我们使用一个编号列表。对于列表的每个项目，我们在行的开头键入一个+字符。Typst将自动对项目进行编号。

If we wanted to add a bulleted list, we would use the - character instead of the + character. We can also nest lists: For example, we can add a sub-list to the first item of the list above by indenting it.

如果我们想添加一个项目符号列表，我们将使用-字符而不是+字符。我们也可以嵌套列表：例如，我们可以通过缩进将子列表添加到上述列表的第一个项目中。

Adding a figure  

添加一个数字

ou think that your report would benefit from a figure. Let's add one. Typst supports images in the formats PNG, JPEG, GIF, and SVG. To add an image file to your project, first open the file panel by clicking the box icon in the left sidebar. Here, you can see a list of all files in your project. Currently, there is only one: The main Typst file you are writing in. To upload another file, click the button with the arrow in the top-right corner. This opens the upload dialog, in which you can pick files to upload from your computer. Select an image file for your report.

你认为你的报告会从一个数字中受益。让我们添加一个。Typst支持PNG、JPEG、GIF和SVG格式的图像。要将图像文件添加到项目中,请先单击左侧边栏中的框图标打开文件面板。在这里,您可以看到项目中所有文件的列表。目前,只有一个:您正在编写的主要Typst文件。要上传另一个文件,请单击右上角带有箭头的按钮。这将打开上传对话框，您可以在其中选择要从计算机上传的文件。为您的报告选择一个图像文件。

We have seen before that specific symbols (called markup) have specific meaning in Typst. We can use =, -, +, and  to create headings, lists and emphasized text, respectively. However, having a special symbol for everything we want to insert into our document would soon become cryptic and unwieldy. For this reason, Typst reserves markup symbols only for the most common things. Everything else is inserted with functions. For our image to show up on the page, we use Typst's image function.

我们以前见过,特定符号(称为标记)在Typst中具有特定含义。我们可以分别使用=、-、+和来创建标题、列表和重点文本。然而，对于我们想插入到文档中的所有内容都有一个特殊的符号,很快就会变得神秘和笨笨脚。出于这个原因,Typst只为最常见的东西保留标记符号。其他一切都插入了功能。为了将我们的图像显示在页面上,我们使用Typst的image功能。

In general, a function produces some output for a set of arguments. When you call a function within markup, you provide the arguments and Typst inserts the result (the function's return value) into the document. In our case, the image function takes one argument: The path to the image file. To call a function in markup, we first need to type the 3 character, immediately followed by the name of the function. Then, we enclose the arguments in parentheses. Typst recognizes many different data types within argument lists. Our file path is a short string of text, so we need to enclose it in double quotes.

一般来说,函数为一组参数产生一些输出。当您在标记中调用函数时，您提供参数,Typst将结果(函数的返回值)插入文档中。在我们的案例中,image函数需要一个参数:图像文件的路径。要在标记中调用函数,我们首先需要键入3 字符，紧跟函数的名称。然后,我们将参数括在括号中。Typst识别参数列表中的许多不同数据类型。我们的文件路径是一个简短的文本字符串,因此我们需要将其括在双引号中。

The inserted image uses the whole width of the page. To change that, pass the width argument to the image function. This is a named argument and therefore specified as a name: value pair. If there are multiple arguments, they are separated by commas, so we first need to put a comma behind the path

插入的图像使用页面的整个宽度。要更改这一点,请将width参数传递给image函数。这是一个命名参数,因此指定为名name: value对。如果有多个参数,它们用逗号分隔,所以我们首先需要在路径后面放一个逗号。

The width argument is a relative length. In our case, we specified a percentage, determining that the image shall take up 70% of the page's width. We also could have specified an absolute value like 1cm or 0.7in.

width参数是相对长度。在我们的案例中,我们指定了一个百分比,确定图像应占页面宽度的70%。我们还可以指定一个绝对值,比如1cm或0.7in。

Just like text, the image is now aligned at the left side of the page by default. It's also lacking a caption. Let's fix that by using the figure function. This function takes the figure's contents as a positional argument and an optional caption as a named argument.

就像文本一样，默认情况下，图像现在在页面左侧对齐。它也缺乏标题。让我们通过使用图形函数来解决这个问题。此函数将图形的内容作为位置参数，将可选标题作为命名参数。

Within the argument list of the figure function, Typst is already in code mode. This means, you now have to remove the hash before the image function call. The hash is only needed directly in markup (to disambiguate text from function calls).

在figure函数的参数列表中,Typst已经处于代码模式。这意味着,您现在必须在图像函数调用之前删除散列。散列仅在标记中直接需要(以消除函数调用文本的歧义).

The caption consists of arbitrary markup. To give markup to a function, we enclose it in square brackets. This construct is called a content block.

标题由任意标记组成。为了给函数加价，我们把它括在方括号里。这种构造被称为内容块


You continue to write your report and now want to reference the figure. To do that, first attach a label to figure. A label uniquely identifies an element in your document. Add one after the figure by enclosing some name in angle brackets. You can then reference the figure in your text by writing an@ symbol followed by that name. Headings and equations can also be labelled to make them referenceable.

你继续写报告，现在想参考这个数字。要做到这一点，首先在图上贴上标签。标签唯一标识文档中的元素。在图后添加一个，在角括号中附上一些名称。然后，您可以通过写一个@ 符号后跟该名称来引用文本中的图形。标题和方程也可以贴上标签，使其可参考。


So far, we've passed content blocks (markup in square brackets) and strings (text in double quotes) to our functions. Both seem to contain text. What's the difference?


到目前为止，我们已经将内容块（方括号中的标记）和字符串（双引号中的文本）传递给我们的函数。两者似乎都包含文本。有什么区别？

A content block can contain text, but also any other kind of markup, function calls, and more, whereas a string is really just a sequence of characters and nothing else.

内容块可以包含文本，也可以包含任何其他类型的标记、函数调用等，而字符串实际上只是一个字符序列，仅此而已。

For example, the image function expects a path to an image file. It would not make sense to pass, e.g., a paragraph of text or another image as the image's path parameter. That's why only strings are allowed here. On the contrary, strings work wherever content is expected because text is a valid kind of content.

例如，图像函数期望图像文件的路径。传递，例如，一段文本或另一张图像作为图像的路径参数是没有意义的。这就是为什么这里只允许使用字符串。相反，字符串在预期内容的地方工作，因为文本是一种有效的内容。

Adding a bibliography 

添加参考书目

As you write up your report, you need to back up some of your claims. You can add a bibliography to your document with the bibliography function. This function expects a path to a bibliography file.

当你写报告时,你需要支持你的一些索赔。您可以使用bibliography功能将参考书目添加到文档中。此函数需要参考书目文件的路径。

Typst's native bibliography format is Hayagriva, but for compatibility you can also use BibLaTeX files. As your classmate has already done a literature survey and sent you a .bib file, you'll use that one. Upload the file through the file panel to access it in Typst.

Typst的原生参考书目格式是Hayagriva,但为了兼容性,您也可以使用BibLaTeX文件。由于你的同学已经做了文献调查,并给你发了一个.bib文件,你将使用那个。通过文件面板上传文件,以在Typst中访问它。

Once the document contains a bibliography, you can start citing from it. Citations use the same syntax as references to a label. As soon as you cite a source for the first time, it will appear in the bibliography section of your document. Typst supports different citation and bibliography styles. Consult the reference for more details.

一旦文档包含参考书目,您就可以开始引用它。引文使用与引用标签相同的语法。一旦您首次引用来源,它就会出现在文档的参考书目部分。Typst支持不同的引用和参考书目风格。有关更多详细信息,请参阅参考资料。

Maths

数学

After fleshing out the methods section, you move on to the meat of the document: Your equations. Typst has built-in mathematical typesetting and uses its own math notation. Let's start with a simple equation. We wrap it in 4 signs to let Typst know it should expect a mathematical expression:

充实方法部分后,您将转到文档的实质内容:您的方程。Typst内置了数学排版,并使用自己的数学符号。让我们从一个简单的等式开始。我们用4符号包装它,让Typst知道它应该期待一个数学表达式:

The equation is typeset inline, on the same line as the surrounding text. If you want to have it on its own line instead, you should insert a single space at its start and end:

方程是内联排版的，与周围文本在同一行上。如果您想把它放在自己的行上，您应该在其开头和结尾插入一个空格：

We can see that Typst displayed the single letters Q, A, v, and C as-is, while it translated rho into a Greek letter. Math mode will always show single letters verbatim. Multiple letters, however, are interpreted as symbols, variables, or function names. To imply a multiplication between single letters, put spaces between them.

我们可以看到,Typst按原封不变地显示单个字母Q、A、v和C,而它将rho翻译成希腊字母。数学模式将始终逐字显示单个字母。然而,多个字母被解释为符号、变量或函数名。要暗示单个字母之间的乘法，请在它们之间加空格。

If you want to have a variable that consists of multiple letters, you can enclose it in quotes:

如果您想有一个由多个字母组成的变量，您可以将其括在引号中：

You'll also need a sum formula in your paper. We can use the sum symbol and then specify the range of the summation in sub- and superscripts:

你还需要在论文中写一个总和公式。我们可以使用总和符号，然后在子和上标中指定总和的范围：

To add a subscript to a symbol or variable, type a - character and then the subscript. Similarly, use the ^ character for a superscript. If your sub- or superscript consists of multiple things, you must enclose them in round parentheses.

要向符号或变量添加下标,请键入-字符,然后键入下标。同样，使用^字符作为上标。如果您的子标或上标由多个东西组成，您必须将它们括在圆括号中。


The above example also showed us how to insert fractions: Simply put a / character between the numerator and the denominator and Typst will automatically turn it into a fraction. Parentheses are smartly resolved, so you can enter your expression as you would into a calculator and Typst will replace parenthesized sub-expressions with the appropriate notation.

上面的示例还向我们展示了如何插入分数：只需在分子和分母之间放置一个/字符,Typst将自动将其转换为分数。括号被巧妙地解决;因此您可以像在计算器中一样输入表达式,Typst会用适当的符号替换括号中的子表达式。


Not all math constructs have special syntax. Instead, we use functions, just like the image function we have seen before. For example, to insert a column vector, we can use the vec function. Within math mode, function calls don't need to start with the 3character.

并非所有的数学结构都有特殊的语法。相反，我们使用函数，就像我们之前看到的图像函数一样。例如，要插入一个列向量，我们可以使用 vec 函数。在数学模式下,函数调用不需要以3字符开始。

Some functions are only available within math mode. For example, the cal function is used to typeset calligraphic letters commonly used for sets. The math section of the reference provides a complete list of all functions that math mode makes available.

有些函数只能在数学模式下使用。例入,cal 函数用于对通常用于集合的书法字母进行排版。引用的数学部分提供了数学模式提供的所有函数的完整列表。

One more thing: Many symbols, such as the arrow, have a lot of variants. You can select among these variants by appending a dot and a modifier name to a symbol's name:

还有一件事: 许多符号，比如箭头，有许多变体。您可以通过在符号名称后面附加一个点和一个修饰符名称来在这些变体中进行选择:

This notation is also available in markup mode, but the symbol name must be preceded with #sym. there. See the symbols section for a list of all available symbols.

此表示法在标记模式下也可用，但符号名称前必须加上  3sym。那里。有关所有可用符号的列表,请参见符号部分。

Review 
评论

You have now seen how to write a basic document in Typst. You learned how to emphasize text, write lists, insert images, align content, and typeset mathematical expressions. You also learned about Typst's functions. There are many more kinds of content that Typst lets you insert into your document, such as tables, shapes, and code blocks. You can peruse the reference to learn more about these and other features.


您现在已经看到了如何在Typst中编写基本文档。您学会了如何强调文本、编写列表、插入图像、对齐内容和排版数学表达式。您还了解了Typst的功能。Typst允许您将更多类型的内容插入到文档中,例如表格、形状和代码块。您可以阅读参考资料,以了解有关这些和其他功能的更多信息。


For the moment, you have completed writing your report. You have already saved a PDF by clicking on the download button in the top right corner. However, you think the report could look a bit less plain. In the next section, we'll learn how to customize the look of our document.

目前,您已经完成了报告的撰写。您已经通过单击右上角的下载按钮保存了PDF。然而,你认为这份报告可能看起来不那么简单。在下一节中，我们将学习如何自定义文档的外观。


