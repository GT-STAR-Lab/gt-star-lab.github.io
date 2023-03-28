---
layout: paper
title: D-ITAGS &#58; A Dynamic Interleaved Approach to Resilient Task Allocation, Scheduling, and Motion Planning
image: /papers/images/neville-ditags.png
authors: Glen Neville, Sonia Chernova, Harish Ravichandar
year: 2023
ref: Neville et al. RA-L 2023.
journal: "IEEE Robotics and Automation Letters (RA-L)"
pdf: https://arxiv.org/ftp/arxiv/papers/2209/2209.13092.pdf
arxiv: 2209.13092
github: GT-STAR-Lab/D-ITAGS
---

## Abstract

Complex, multi-task missions require the coordination of heterogeneous robots at multiple inter-connected levels, such as coalition formation, scheduling, and motion planning. This challenge is exacerbated by dynamic changes, such as sensor and actuator failures, communication loss, and unexpected delays. We introduce Dynamic Iterative Task Allocation Graph Search (D-ITAGS) to _simultaneously_ address coalition formation, scheduling, and motion planning in _dynamic_ settings involving heterogeneous teams. D-ITAGS achieves resilience via two key characteristics: i) interleaved execution, and ii) targeted repair. _Interleaved execution_ enables an effective search for solutions at each layer while avoiding incompatibility with other layers. _Targeted repair_ identi?es and repairs parts of the existing solution impacted by a given disruption, while conserving the rest. In addition to algorithmic contributions, we derive accurate bounds on schedule suboptimality and provide insights into the inherent trade-off between time and resource optimality in these settings. Our experiments reveal that i) D-ITAGS is significantly faster than recomputation from scratch in dynamic settings, with little to no loss in solution quality, and ii) the theoretical bounds on optimality gap consistently hold in practice.
