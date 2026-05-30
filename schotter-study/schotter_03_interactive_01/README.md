# 02 Scatter

This study introduces the first controlled disturbances into the grid.

The structure from the previous stage remains intact, but the squares are no longer perfectly aligned. Small positional shifts and rotations are applied, with the amount of variation increasing from row to row.

The result is a system that still appears ordered, yet already shows signs of instability.

## Design Decision

While implementing this stage, two possible approaches emerged:

### Option 1

Calculate individual positions and rotations for every square and draw each shape directly at its final location.

### Option 2

Draw every square at the origin and use transformations to position and rotate it.

This study follows the second approach.

A rectangle has a position, but no built-in rotation. Processing, however, provides transformations such as `translate()` and `rotate()`, making it natural to move and rotate the drawing space instead of manually calculating rotated geometry.

Following the KISS principle, this approach proved both simpler and easier to extend.

## Transformations

Each square is drawn at the local origin:

```java
rect(0, 0, SIZE, SIZE);
```

The drawing context is then transformed using:

```java
translate(...)
rotate(...)
```

The transformations are isolated using:

```java
pushMatrix();
...
popMatrix();
```

This ensures that every square receives its own independent transformation.

## Controlled Disorder

The amount of disorder depends on the current row.

Squares in the upper rows remain close to their original positions, while squares in lower rows receive increasingly larger shifts and rotations.

This creates a gradual transition from order to disorder rather than an abrupt change.

## Direction of Movement

The horizontal displacement is intentionally smaller than the vertical displacement.

In addition, vertical movement is restricted to positive values only.

As a result, the squares appear to settle downward, suggesting the behaviour of scattered or falling material rather than random motion in all directions.

## Changes Compared to 01 Grid

- introduced positional shifts

- introduced rotation

- implemented transformation-based drawing

- added `pushMatrix()` and `popMatrix()`

- renamed `centerX` and `centerY` to `shiftX` and `shiftY`

- moved drawing operations to the local origin `(0, 0)`

- removed `point()`

- added configurable limits for randomness

- adjusted canvas size and square size to accommodate the growing disorder

## Observation

The grid is still clearly recognizable.

However, the system no longer feels perfectly stable.

At this stage, the essential mechanism of Schotter is already present: order gradually dissolves into disorder.