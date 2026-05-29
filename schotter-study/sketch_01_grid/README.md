# 01 Grid

This sketch establishes the starting point for the Schotter study.

At this stage the system is completely ordered. No randomness, rotation, or displacement is applied. Every execution produces exactly the same result.

The image is not created by manually placing individual squares. Instead, a simple set of rules generates the entire structure. This principle will remain unchanged throughout the study, while the rules themselves gradually evolve.

## Technical Notes

### Nested Loops

The grid is generated using nested `for` loops.

The outer loop iterates over the rows, while the inner loop iterates over the columns.

This was a deliberate choice. Since the original artwork develops row by row, this structure makes it easy to introduce increasing disorder in later studies.

### Center-Based Coordinates

The sketch uses:

```java
rectMode(CENTER);
```

Squares are therefore positioned by their center point rather than their upper-left corner.

This simplifies later transformations, especially rotation, because a square can rotate around its own center without requiring additional position calculations.

### Adjustable Parameters

Several aspects of the grid are defined as constants:

- number of rows

- number of columns

- square size

- outer margin

This keeps the structure flexible and makes future experiments easier.

### Automatic Image Export

The sketch automatically saves an image of the generated result.

This allows every stage of the study to be documented and compared as the system evolves.

## Why This Step Matters

The goal of this sketch is not to reproduce *Schotter* itself.

Instead, it establishes a stable and predictable system from which controlled disorder can emerge in later stages.

Before a structure can be disturbed, it must first exist.