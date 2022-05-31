---
layout: paper
title: Neural Geometric Fabrics&#58; Efficiently Learning High-Dimensional Policies from Demonstration
image: /images/papers/xie-nueral-geometric-fabrics.png
authors: Mandy Xie, Karl Van Wyk, Ankur Handa, Stephen Tyree, Dieter Fox, Harish Ravichandar, Nathan Ratliff
year: 2022
ref: Xie et al., OAIL WS, RSS 2022
journal: "Workshop on Overlooked Aspects of Imitation Learning, Robotics: Science and Systems (RSS)"
---

## Abstract

Learning dexterous manipulation policies for multi-fingered robots has been a long-standing challenge in robotics. Existing methods are often limited to simulation, or rely on extensive interactions with the environment and considerable computational costs. In this work, we develop a highly-structured and efficient approach to learning reliable dexterous manipulation polices from demonstrations by leveraging recent advances in robot motion generation and control. Specifically, we utilize Geometric Fabrics, a recent framework that generalizes classical mechanical systems to allow for flexible design of expressive robot motions. However, instead of manually designing such motion generators, we elect to learn a Geometric Fabric from data, creating a *Neural Geometric Fabric (NGF)*. The NGF is provably stable as it derives from the theory of Geometric Fabrics and is capable of encoding complex motions in high-dimensional spaces. We demonstrate that our approach is capable of learning reliable manipulation policies for a 23-DoF hand-arm physical robotic platform. We also investigate the role of policy structure and the choice of action space on task performance. Our experimental results suggest that NGF can learn acceleration-based policies that consistently outperform policies learned using a variety of state-of-the-art baselines, like Riemannian Motion Policies (RMPs), feed-forward neural networks, and Long Short Term Memory (LSTM) networks. More importantly, we demonstrate that NGF does *not* require the use of an expertly-designed operational-space controller, promoting an advancement towards efficiently learning complete, stable, high-dimensional controllers.
