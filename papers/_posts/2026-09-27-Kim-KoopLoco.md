---
layout: paper
title: Safe Navigation of Bipedal Robots via Koopman Operator-Based Model Predictive Control
image: /papers/images/2026-kim-KoopLoco.png
authors: Jeonghwan Kim, Yunhai Han, Harish Ravichandar, Sehoon Ha
year: 2026
ref: Kim et al., IROS 2026.
journal: International Conference on Intelligent Robots and Systems (IROS)
arxiv: "2409.14736"
supplement: https://kooploco.github.io/

---

## TL;DR

Our approach (1) trains a robust locomotion controller for the humanoid robot, (2) approximates the high-level dynamics via a learned Koopman-inspired linear model, and (3) integrates the learned model into an MPC-based controller for safe navigation.


## Abstract

Nonlinearity in dynamics has long been a major challenge in robotics, often causing significant performance degradation in existing control algorithms. For example, the navigation of bipedal robots can exhibit nonlinear behaviors even under simple velocity commands, as their actual dynamics are governed by complex whole-body movements and discrete contacts. In this work, we propose a safe navigation framework inspired by Koopman operator theory. We first train a low level locomotion policy using deep reinforcement learning, and then capture its low-frequency, base-level dynamics by learning linearized dynamics in a high-dimensional lifted space. Then, our model-predictive controller (MPC) efficiently optimizes control signals via a standard quadratic objective and the linear dynamics constraint in the lifted space. We demonstrate that the Koopman model more accurately predicts bipedal robot trajectories than baseline approaches. We also show that the proposed navigation framework achieves improved safety with better success rates in dense environments with narrow passages.
