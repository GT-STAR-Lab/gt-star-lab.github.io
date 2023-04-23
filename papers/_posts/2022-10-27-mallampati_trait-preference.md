---
layout: paper
title: Learning Trait Preferences for Task allocation in Heterogeneous Multi-Agent Teams
image: /papers/images/mallampati_trait-preference.png
authors: Vivek Mallampati, Harish Ravichandar
year: 2022
ref: Mallampati and Ravichandar, H-MRS WS, IROS 2022
journal: "Workshop on Human-Multi-Robot Systems, International Conference on Intelligent Robots and Systems (IROS)"
arxiv: 2302.10817
---

## Abstract

Task allocation approaches for heterogeneous multi-agent teams often need to reason about multi-dimensional agent traits (i.e., capabilities) and the demands placed on them by complex tasks. However, existing methods tend to ignore the fact that not all traits equally contribute to a given task. Ignoring such inherent preferences can lead to unintended sub-optimal allocations of limited agent resources that attempt to satisfy irrelevant requirements. Further, reasoning over a large number of traits can incur a hefty computational burden. To alleviate these concerns, we propose an algorithm to infer task-specific trait preferences directly from expert demonstrations. We leverage the insight that the consistency with which a trait is allocated to a task across demonstrations reflects its importance to that task. Further, inspired by findings in child psychology, we account for the fact that the abundance (or diversity) of a trait in the dataset increases the dataset's informativeness and, thereby, our confidence in the inference. Through detailed numerical simulations and evaluations of a publicly-available soccer dataset, we demonstrate that we can successfully infer implicit trait preferences and that our approach leads to more computationally efficient and effective task allocation compared to a baseline approach that treats all traits equally.