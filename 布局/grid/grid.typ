= grid
在网格中排列内容。

网格元素允许您在网格中排列内容。您可以定义行数和列数，以及它们之间的装订线大小。列和行有多种大小调整模式，可用于创建复杂的布局。

虽然网格和表格元素的工作方式非常相似，但它们适用于不同的用例并具有不同的语义。grid 元素用于表示和布局目的，而 table 元素用于广义地呈现多个相关数据点。将来，Typst 将对其输出进行注释，以便屏幕阅读器将以表格形式宣布内容，而网格的内容将与文档流中的多个内容块没有什么不同。在其中一个元素上设置和显示规则不会影响另一个元素。table

网格的大小由参数中指定的轨道大小决定。由于每个大小调整参数都接受相同的值，因此我们在这里只解释一次。每个大小调整参数都接受单个轨道大小的数组。轨道大小为：

- auto：轨道的大小将适合其内容。它最多与剩余空间一样大。如果有多个轨道宽度，并且它们共同占用的空间超过可用空间，则轨道将在它们之间公平分配可用空间。autoauto

- 固定或相对长度（例如 或 ）： 轨道将完全是这个大小。10pt20% - 1cm

- 分数长度（例如）：一旦所有其他轨道都调整了大小，剩余空间将根据分数在分数轨道之间分配。例如，如果有两个小数轨道，每个轨道的分数为 ，它们将占用剩余空间的一半。1fr1fr

若要指定单个轨道，可以省略数组以支持单个值。要指定多个轨道，请输入轨道数而不是数组。例如，等效于 。autocolumns:3columns:(auto, auto, auto)

== 例子
下面的示例演示了不同的轨道大小调整选项。它还演示了如何使用 grid.cell 使单个单元格跨越两个网格轨道。

#image("屏幕截图 2024-04-16 152543.png")

您还可以将字符串或内容数组传播到网格中以填充其单元格。

#image("屏幕截图 2024-04-16 152640.png")

== 设置网格样式
网格的外观可以通过不同的参数进行自定义。这些是最重要的：

- 填充为所有单元格提供背景
- align 以更改单元格的对齐方式
- inset（可选）为每个单元格添加内部填充
- 描边（stroke）可选择启用具有特定描边的网格线
如果需要覆盖单个单元格的上述选项之一，则可以使用 grid.cell 元素。同样，您可以使用 grid.hline 和 grid.vline 元素覆盖单个网格线。

或者，如果需要外观选项依赖于单元格的位置（列和行），则可以指定 或 的函数。您也可以在 grid.cell 上使用 show 规则 - 有关详细信息，请参阅该元素的示例或下面的示例。fillalign(column, row) => value

建议将大部分样式放在设置和显示规则中，因为这样可以使网格或表格的实际用法保持干净且易于阅读。它还允许您在一个地方轻松更改网格的外观。

=== 描边样式优先级
有三种方法可以设置网格单元格的描边：通过网格。单元格的描边字段，通过使用网格。hline 和 grid。vline，或通过设置网格的描边字段。当存在多个设置且冲突时，和 设置的优先级最高，其次是设置，最后是设置。hlinevlinecellgrid

此外，重复网格页眉或页脚的笔画将优先于常规单元格笔画。

#image("屏幕截图 2024-04-16 153019.png")

#image("屏幕截图 2024-04-16 153301.png")

#image("屏幕截图 2024-04-16 153352.png")

#image("屏幕截图 2024-04-16 153442.png")
== 例如
`
#set page(height: 13em, width: 26em)

#let cv(..jobs) = grid(
    columns: 2,
    inset: 5pt,
    stroke: (x, y) => if x == 0 and y > 0 {
      (right: (
        paint: luma(180),
        thickness: 1.5pt,
        dash: "dotted"
      ))
    },
    grid.header(grid.cell(colspan: 2)[
      *Professional Experience*
      #box(width: 1fr, line(length: 100%, stroke: luma(180)))
    ]),
    ..{
      let last = none
      for job in jobs.pos() {
        (
          if job.year != last [*#job.year*],
          [
            *#job.company* - #job.role _(#job.timeframe)_ \
            #job.details
          ]
        )
        last = job.year
      }
    }
  )

  #cv(
    (
      year: 2012,
      company: [Pear Seed & Co.],
      role: [Lead Engineer],
      timeframe: [Jul - Dec],
      details: [
        - Raised engineers from 3x to 10x
        - Did a great job
      ],
    ),
    (
      year: 2012,
      company: [Mega Corp.],
      role: [VP of Sales],
      timeframe: [Mar - Jun],
      details: [- Closed tons of customers],
    ),
    (
      year: 2013,
      company: [Tiny Co.],
      role: [CEO],
      timeframe: [Jan - Dec],
      details: [- Delivered 4x more shareholder value],
    ),
    (
      year: 2014,
      company: [Glorbocorp Ltd],
      role: [CTO],
      timeframe: [Jan - Mar],
      details: [- Drove containerization forward],
    ),
  )
  `

#image("屏幕截图 2024-04-16 154053.png")

#image("屏幕截图 2024-04-16 154218.png")

== 定义

可以使用 和 规则自定义元素函数。setshow
网格中的单元格。您可以在网格的参数列表中使用此函数来覆盖单个单元格的网格样式属性，或手动将其定位在网格中。您还可以在显示规则中使用此函数一次将某些样式应用于多个单元格。

例如，您可以覆盖单个单元格的位置和描边：
#image("屏幕截图 2024-04-16 154306.png")

#image("屏幕截图 2024-04-16 154411.png")

#image("屏幕截图 2024-04-16 154503.png")

#image("屏幕截图 2024-04-16 154532.png")

#image("屏幕截图 2024-04-16 154606.png")

#image("屏幕截图 2024-04-16 154641.png")

#image("屏幕截图 2024-04-16 154711.png")

#image("屏幕截图 2024-04-16 154751.png")

#image("屏幕截图 2024-04-16 154823.png")

#image("屏幕截图 2024-04-16 154849.png")




