---
layout: paper
title: Q-ITAGS&#58; Quality-Optimized Spatio-Temporal Heterogeneous Task Allocation with a Time Budget
image: /papers/images/liu-qitags.png
authors: Glen Neville, Jiazhen Liu, Sonia Chernova, and Harish Ravichandar
year: 2024
ref: Neville et al., ISRR 2024.
journal: "International Symposium of Robotics Research (ISRR)"
arxiv: 2404.07902

---

## Abstract

Complex multi-objective missions require the coordination of heterogeneous robots at multiple inter-connected levels, such as coalition formation, scheduling, and motion planning. The associated challenges are exacerbated when solutions to these interconnected problems need to simultaneously maximize task performance and respect practical constraints on time and resources. In this work, we formulate a new class of spatio-temporal heterogeneous task allocation problems that formalize these complexities. We then contribute a novel framework, named Quality-Optimized Incremental Task Allocation Graph Search (Q-ITAGS), to solve such problems. Q-ITAGS offers a flexible interleaved framework that (i) explicitly models and optimizes the effect of collective capabilities on task performance via learnable trait-quality maps, and (ii) respects both resource and spatio-temporal constraints, including a user-specified time budget (i.e., maximum makespan). In addition to algorithmic contributions, we derive theoretical suboptimality bounds in terms of task performance that varies as a function of a single hyperparameter. Detailed experiments involving a simulated emergency response task and a real-world video game dataset reveal that (i) Q-ITAGS results in superior team performance compared to a state-of-the-art method, while also respecting complex spatio-temporal and resource constraints, (ii) Q-ITAGS efficiently learns trait-quality maps to enable effective trade-off between task performance and resource constraints, and (iii) Q-ITAGS’ suboptimality bounds consistently hold in practice. 