---
layout: paper
title: Approximated Dynamic Trait Models for Heterogeneous Multi-Robot Teams
image: /images/papers/neville-dynamic-traits.png
authors: Glen Neville, Harish Ravichandar, Kenneth Shaw, Sonia Chernova
year: 2020
ref: Neville et al. IROS 2020.
journal: "International Conference on Intelligent Robots and Systems (IROS)"
pdf: https://ieeexplore.ieee.org/abstract/document/9341107?casa_token=gFvpeKn4kqAAAAAA:Q-OSzP1Jgk0IOJ5uJA_MbxUzGYUbqYgyCK_wfcjj7RUhW0xTpoMPh0uLlXDtb73wzMRM-5mF_g
---

## Abstract

To realize effective heterogeneous multi-agent teams, we must be able to leverage individual agents' relative strengths. Recent work has addressed this challenge by introducing trait-based task assignment approaches that exploit the agents' relative advantages. These approaches, however, assume that the agents' traits remain static. Indeed, in real-world scenarios, traits are likely to vary as agents execute tasks. In this paper, we present a transformation-based modeling framework to bridge the gap between state-of-the-art task assignment algorithms and the reality of dynamic traits. We define a transformation as a function that approximates dynamic traits with static traits based on a specific statistical measure. We define different candidate transformations, investigate their effects on different dynamic trait models, and the resulting task performance. Further, we propose a variance-based transformation as a general solution that approximates a variety of dynamic models, eliminating the need for hand specification. Finally, we demonstrate the benefits of reasoning about dynamic traits both in simulation and in a physical experiment involving the game of capture-the-flag.