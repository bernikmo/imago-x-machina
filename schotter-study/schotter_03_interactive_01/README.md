# 03 Interactive

This study transforms the previous static sketch into an interactive system.

The visual result is still based on the same principle introduced in the previous stage: a regular grid receives row-dependent disturbances in position and rotation. However, the focus of this sketch is no longer the image itself, but the structure of the program behind it.

A mouse click generates a new variation of the composition, while the original grid remains unchanged.

Press **`s`** to save the current image.

## Motivation

The previous studies generated a single image and then terminated.

For future experiments, I wanted to explore the generated states interactively and eventually control the amount of disorder in real time.

This required a larger restructuring of the code.

Instead of calculating and drawing everything in a single step, the system now separates different states and stores them explicitly.

## Three States

The sketch introduces three independent collections of data:

### Origins

The original ordered grid.

Every square has a fixed position and orientation.

### Disturbances

The randomly generated offsets and rotations.

These values represent the disturbance itself.

### Disturbed

The result of applying the disturbances to the original grid.

These are the values currently used for drawing.

This separation may appear more complex than the previous implementation, but it makes the underlying process easier to understand and prepares the code for future interactive experiments.

## Interactivity

Clicking the mouse generates a new set of disturbances.

The original grid remains unchanged, while new disturbed states are calculated and displayed.

This allows rapid exploration of different variations without modifying the underlying structure.

## Deliberate Code Duplication

Some code duplication is already visible in this sketch.

For example, the generation of random disturbances appears in more than one place.

Normally this could be extracted into helper functions.

In this study, however, the duplication remains intentionally.

At this stage clarity is considered more important than abstraction. Keeping the logic visible makes it easier to understand how the system evolves and simplifies experimentation while the design is still changing.

## Observation

A new idea emerges in this version:

The disturbance itself becomes a first-class element of the system.

Rather than immediately applying randomness to the grid, the sketch stores and manages disturbances as their own state.

This distinction may seem subtle, but it becomes important when exploring how much disorder should be applied and how it can be controlled interactively.

## Looking Ahead

The next study will use this structure to investigate a different question:

What happens when disturbances are generated once, but only partially applied?

Instead of creating new randomness, the amount of existing disorder will become controllable in real time.