---
layout: paper
title: Inferring Implicit Trait Preferences from Demonstrations of Task Allocation in Heterogenous Teams
image: /papers/images/mallampati_trait-preference-2.png
authors: Vivek Mallampati, Harish Ravichandar
year: 2023
ref: Mallampati and Ravichandar, AAMAS 2023.
journal: "Autonomous Agents and Multi-Agent Systems (AAMAS) - Extended Abstract"
---

## Abstract

Task allocation in heterogeneous multi-agent teams often requires reasoning about multi-dimensional agent traits (i.e., capabilities) and the demands placed on them by tasks. However, existing methods tend to ignore the fact that not all traits equally contribute to a given task. Ignoring such inherent preferences or relative importance can lead to unintended sub-optimal allocations of limited agent resources that do not necessarily contribute to task success. Further, reasoning over a large number of traits can incur a hefty computational burden. To alleviate these concerns, we propose an algorithm to infer task-specific trait preferences implicit in expert demonstrations. We leverage the insight that the consistency with which an expert allocates a trait to a task across demonstrations reflects the trait's importance to that task. Further, inspired by findings in psychology, we account for the fact that the inherent diversity of a trait in the dataset influences the dataset's informativeness and, thereby, the extent of the inferred preference, or the lack thereof. Through detailed numerical simulations and evaluations of a publicly-available soccer dataset (FIFA 20), we demonstrate that we can successfully infer implicit trait preferences and that accounting for the inferred preferences leads to more computationally efficient and effective task allocation, compared to a baseline approach that treats all traits equally.