# Simple features of Pandoc Markdown for Beamer

## Auto and manual slide splitting  {.allowframebreaks} 

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce a gravida felis. Maecenas viverra, libero nec tempor tristique, ante odio eleifend tellus, at finibus augue tellus varius lectus. Integer non quam tincidunt quam auctor elementum. In viverra pellentesque arcu, eget tincidunt ipsum dapibus a. Morbi placerat dapibus ipsum id iaculis. 

Nunc vestibulum dapibus quam sed ultricies. Donec viverra ultricies dolor at pretium. Vivamus nec sodales orci, quis condimentum eros. Etiam at fermentum lectus, ac tincidunt erat. Maecenas diam arcu, fermentum id hendrerit nec, tempor quis ipsum. Pellentesque posuere neque cursus felis gravida sodales vitae ac leo. Aliquam porta mi est.

Vivamus aliquam dui non metus rhoncus lobortis. Pellentesque ut dui consequat, pretium purus ornare, sodales nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin vitae malesuada velit. Nulla eget leo ante. Ut a augue vitae sapien sagittis ultricies. 

Nullam dignissim eu enim eu egestas. Nulla sit amet mattis ligula. Nam sagittis, elit eu lacinia ornare, nisi elit euismod est, id venenatis justo lacus a purus. Duis et velit quis ante dignissim rutrum. Donec et lobortis tellus.

Phasellus auctor mattis mi a tempor. Ut felis augue, mollis tincidunt condimentum eget, fermentum quis mauris. Etiam bibendum varius tempor. Mauris nec suscipit nulla. Donec porta iaculis egestas. Duis vulputate justo dapibus neque vestibulum suscipit. Mauris eleifend dui in luctus imperdiet. Integer imperdiet cursus sapien in suscipit. Cras luctus diam turpis, et iaculis nisi pretium sit amet. Vivamus vel nibh id nulla lacinia egestas non a ante. Integer congue hendrerit ultricies. Maecenas nisi nibh, pharetra sed gravida eu, ultrices eu ipsum. Sed ultricies sapien neque, sit amet varius mauris rutrum eu. Proin eleifend odio tempus, faucibus ante et, rhoncus tortor. Vivamus sollicitudin ex a pharetra fermentum.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse scelerisque tortor at mauris lacinia laoreet. Pellentesque quam sem, convallis a congue sed, suscipit a elit. Nullam convallis, risus sit amet convallis porttitor, libero elit vestibulum velit, at condimentum lacus purus ac ex. Praesent pretium, tortor eu consequat congue, nunc elit dignissim erat, non tincidunt metus lorem vitae massa. 

Phasellus faucibus tortor cursus convallis vehicula. Fusce consectetur suscipit libero, ac finibus justo ultrices sed. Integer facilisis neque et magna aliquet gravida a nec erat. Suspendisse a neque quis mauris ultrices egestas at id erat. Donec lacus enim, posuere eget dui nec, interdum laoreet dolor. Nulla non purus purus. Proin ac viverra felis. In imperdiet, nisi id gravida pharetra, dui lectus tempus libero, non viverra leo lectus non odio. Phasellus ut rhoncus lectus.

--- 

Nunc quis mi vel libero sollicitudin pulvinar vitae eget urna. Sed mi dui, ornare ac luctus et, tempus et turpis. Vestibulum quis ligula turpis. Nam sit amet condimentum neque. In dapibus ligula et enim iaculis, a volutpat magna varius. Cras fringilla nunc sit amet nisl vulputate ultrices. Phasellus rhoncus quam sed libero facilisis auctor. Vivamus aliquam egestas neque, non commodo arcu vestibulum eget. 

## Basic Formatting

### Bold text

This is **bold** text.

### Italic text

This is *italic* text.

### Blockquote

> "This is a blockquote. \
> It can span multiple lines."

### Links and footnotes

Pandoc documentation^[[pandoc.org](https://pandoc.org), accessed 15-01-2025] is availible here: 
[Link to Pandoc Documentation](https://pandoc.org).

## Lists

### Unordered List

- Item 1
- Item 2
  - Sub-item 2.1
  - Sub-item 2.2

### Ordered List

1. Step 1
2. Step 2
   1. Sub-step 2.1
   2. Sub-step 2.2

## Math and Equations

### Inline Math

This is an example of inline math: $E = mc^2$.

### Block Math

This is an example of block math:

<!-- {#eq:sample-equation} -->
$$
\int_a^b f(x) \,dx = F(b) - F(a)
$$

## Code

### Inline Example:

Inline code example: `print("Hello, Pandoc!")`.

### Block Example:

<!-- {#lst:sample-listing .python caption="Sample Python code listing"} -->
```python
import numpy as np

def f(x):
    return np.sin(x)

x = np.linspace(0, 2*np.pi, 100)
```
