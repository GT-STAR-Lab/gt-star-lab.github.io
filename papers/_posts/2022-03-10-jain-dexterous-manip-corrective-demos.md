---
layout: paper
title: Evaluating the Effectiveness of Corrective Demonstrations and a Low-Cost Sensor for Dexterous Manipulation
image: /images/papers/jain-dexterous-manip-corrective-demos.jpg
authors: Abhineet Jain*, Jack Kolb*, J.M. Abbess IV, Harish Ravichandar<br />(* equal contribution)
year: 2022
ref: Jain et al., MLHRC WS, HRI 2022.
journal: "Machine Learning in Human-Robot Collaboration (MLHRC) Workshop, ACM/IEEE International Conference on Human-Robot Interaction (HRI)"
arxiv: 2204.07631
github: GT-STAR-Lab/corrective-demos-dexterous-manipulation
---

## Abstract

Imitation learning is a promising approach to help robots acquire dexterous manipulation capabilities without the need for a carefully-designed reward or a significant computational effort. However, existing imitation learning approaches require sophisticated data collection infrastructure and struggle to generalize beyond the training distribution. One way to address this limitation is to gather additional data that better represents the full operating conditions. In this work, we investigate characteristics of such additional demonstrations and their impact on performance. Specifically, we study the effects of *corrective* and *randomly-sampled* additional demonstrations on learning a policy that guides a five-fingered robot hand through a pick-and-place task. Our results suggest that corrective demonstrations considerably outperform randomly-sampled demonstrations, when the proportion of additional demonstrations sampled from the full task distribution is larger than the number of original demonstrations sampled from a restrictive training distribution. Conversely, when the number of original demonstrations are higher than that of additional demonstrations, we find no significant differences between corrective and randomly-sampled additional demonstrations. These results provide insights into the inherent trade-off between the effort required to collect corrective demonstrations and their relative benefits over randomly-sampled demonstrations. Additionally, we show that inexpensive vision-based sensors, such as LeapMotion, can be used to dramatically reduce the cost of providing demonstrations for dexterous manipulation tasks. Our code is available [here](https://github.com/GT-STAR-Lab/corrective-demos-dexterous-manipulation).

