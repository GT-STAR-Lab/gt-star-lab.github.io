---
layout: paper
title: Skill Acquisition via Automated Multi-Coordinate Cost Balancing
image: /images/papers/ravichandar-mccb.png
authors: Harish Ravichandar, S. Reza Ahmadzadeh, M. Asif Rana, Sonia Chernova
year: 2019
ref: Ravichandar et al. ICRA 2019.
journal: "International Conference on Robotics and Automation (ICRA)"
pdf: https://ieeexplore.ieee.org/abstract/document/8793762
arxiv: 1903.11725
github: harishravichandar/MCCB
---

## Abstract

We propose a learning framework, named Multi-Coordinate Cost Balancing (MCCB), to address the problem of acquiring point-to-point movement skills from demonstrations. MCCB encodes demonstrations *simultaneously* in multiple differential coordinates that specify local geometric properties. MCCB generates reproductions by solving a convex optimization problem with a multi-coordinate cost function and linear constraints on the reproductions, such as initial, target, and via points. Further, since the relative importance of each coordinate system in the cost function might be unknown for a given skill, MCCB learns optimal weighting factors that balance the cost function. We demonstrate the effectiveness of MCCB via detailed experiments conducted on one handwriting dataset and three complex skill datasets.