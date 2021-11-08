---
layout: paper
title: Learning Hierarchical Task Networks with Preferences from Unannotated Demonstrations
image: /images/papers/chen-circuit-htn.png
authors: Kevin Chen, Nithin Shrivatsav Srikanth, David Kent, Harish Ravichandar, Sonia Chernova
year: 2020
ref: Chen et al. CoRL 2020.
journal: "Conference on Robot Learning (CoRL)"
pdf: https://drive.google.com/file/d/18MBP2D4BgOAsKjEW9DEqRb8v2ugx1nwQ/view
supplement: https://corlconf.github.io/corl2020/paper_351/
github: GT-RAIL/circuit_htn
---

## Abstract

We address the problem of learning Hierarchical Task Networks (HTNs) from unannotated task demonstrations, while retaining action execution preferences present in the demonstration data. We show that the problem of learning a complex HTN structure can be made analogous to the problem of series/parallel reduction of resistor networks, a foundational concept in Electrical Engineering. Based on this finding, we present the CircuitHTN algorithm, which constructs an action graph representing the demonstrations, and then reduces the graph following rules for reducing combination electrical circuits. Evaluation on real-world household kitchen tasks shows that CircuitHTN outperforms prior work in task structure and preference learning, successfully handling large data sets and exhibiting similar action selection preferences as the demonstrations.