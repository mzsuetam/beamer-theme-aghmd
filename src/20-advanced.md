
# Collumns


:::: {.columns}
::: {.column width="47%"}

Slides can be split into columns.

:::
::: {.column width="47%"}

Images are then scaled relative to the column width.

![Alt Text](https://picsum.photos/400/200){#fig:sample-fig-1 width=100%}

:::
::: {.column width="6%"}
<!-- this column acts as a margin for the table -->
:::
::::


# Figures, tables, references

## Figures

Note that image size can be adjusted using the `height` and `width` parameters.

![Alt Text](img/image.png){#fig:sample-fig height=70%}

## Tables

:::{#tbl:sample-tbl}

| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Row 1A   | Row 1B   | Row 1C   |
| Row 2A   | Row 2B   | Row 2C   |

: Description of the table
:::

---

:::{#tbl:sample-tbl-2}

-------------------------------------
  Animal                     Liking
--------------------------- ---------
Cat                         A lot 

Dog                         Much  

Rabbit                      Very  

Hamster                     Big    
-------------------------------------

: Other type of table
:::

# References

Figures (like [@fig:sample-fig]) and tables [@tbl:sample-tbl], 
<!-- listings [@lst:sample-lst] and equations [@eq:sample-eq]  -->
can be referenced using the `@` symbol. Bibliography entries can be referenced using the `@` symbol followed by the citation key, like this: [@Python3ReferenceManual], [@mckinney2010pandas], [@jordahl2014geopandas], [@2020NumPy], [@opencv_library], [@hunter2007matplotlib], [@sqlalchemy].

Note that one can omit the prefix using `-` before the `@` symbol, e.g.: Figure [-@fig:sample-fig] shows a sample image.
