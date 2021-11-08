---
layout: paper
title: Learning Hierarchical Task Networks with Preferences from Unannotated Demonstrations
image: /images/papers/rana-learning-rmp-trees.png
authors: M. Asif Rana, Anqi Li, Harish Ravichandar, Mustafa Mukadam, Sonia Chernova, Dieter Fox, Byron Boots, Nathan Ratliff
year: 2019
ref: Rana et al. CoRL 2019.
journal: "Conference on Robot Learning (CoRL)"
pdf: http://proceedings.mlr.press/v100/rana20a/rana20a.pdf
supplement: http://proceedings.mlr.press/v100/rana20a.html
---

## Abstract

Complex manipulation tasks often require non-trivial and coordinated movements of different parts of a robot. In this work, we address the challenges associated with learning and reproducing the skills required to execute such complex tasks. Specifically, we decompose a task into multiple subtasks and learn to reproduce the subtasks by learning stable policies from demonstrations. By leveraging the RMPflow framework for motion generation, our approach finds a stable global policy in the configuration space that enables simultaneous execution of various learned subtasks. The resulting global policy is a weighted combination of the learned policies such that the motions are coordinated and feasible under the robot’s kinematic and environmental constraints. We demonstrate the necessity and efficacy of the proposed approach in the context of multiple constrained manipulation tasks performed by a Franka Emika robot.