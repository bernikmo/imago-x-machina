# 01 Grid

This sketch establishes the geometric foundation for the Schotter study.

At this stage the system is completely ordered. No randomness, rotation, or displacement is applied. Every execution produces exactly the same result.

Rather than manually placing individual squares, the image is generated from a simple set of rules. This approach forms the basis of the entire study. Future stages will introduce variations and disturbances, while the underlying system remains largely unchanged.

## Technical Notes

### Nested Loops

The grid is generated using nested `for` loops.

The outer loop iterates over the rows, while the inner loop iterates over the columns.

This is a deliberate design choice. Since disorder in *Schotter* increases row by row, the structure makes it easy to apply changes to complete rows in later studies.

### Center-Based Coordinates

The sketch uses:

```java
rectMode(CENTER);
```

Each square is positioned by its center point rather than by its upper-left corner.

This simplifies future transformations, especially rotation, because every square can rotate around its own center without requiring additional position calculations.

### Visualizing the Center

A point is drawn at the center of every square.

These markers are not intended as part of the final artwork. Instead, they make the underlying structure visible and help illustrate how the system is built.

The center points will become increasingly important in later stages when squares begin to rotate, shift, and break away from the original grid.

### Adjustable Parameters

The main properties of the grid are defined as constants:

- number of rows

- number of columns

- square size

- outer margin

This makes the system easy to modify and encourages experimentation.

### Automatic Image Export

The generated image is automatically saved to disk.

Documenting every stage of the study makes it easier to compare results and follow the gradual evolution of the system.

## Why This Step Matters

The purpose of this sketch is not to recreate *Schotter* itself.

Instead, it establishes a stable geometric structure from which controlled disorder can emerge.

Before a structure can be disturbed, it must first exist.