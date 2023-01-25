---
layout: paper
title: Constrained Reinforcement Learning for Dexterous Manipulation
image: /papers/images/jain-constrained-rl-dexterous-manip.png
authors: Abhineet Jain, Jack Kolb, Harish Ravichandar
year: 2022
ref: Jain et al., Safe RL WS, IJCAI 2022.
journal: "International Workshop on Safe Reinforcement Learning, International Joint Conference on Artificial Intelligence (IJCAI)"
arxiv: 2301.09766
github: GT-STAR-Lab/constrained-rl-dexterous-manipulation
---

## Abstract

Existing learning approaches to dexterous manipulation use demonstrations or interactions with the environment to train black-box neural networks that provide little control over how the robot learns the skills or how it would perform post training. These approaches pose significant challenges when implemented on physical platforms given that, during initial stages of training, the robot's behavior could be erratic and potentially harmful to its own hardware, the environment, or any humans in the vicinity. A potential way to address these limitations is to add constraints during learning that restrict and guide the robot's behavior during training as well as roll outs. Inspired by the success of constrained approaches in other domains, we investigate the effects of adding position-based constraints to a 24-DOF robot hand learning to perform object relocation using Constrained Policy Optimization. We find that a simple geometric constraint can ensure the robot learns to move towards the object sooner than without constraints. Further, training with this constraint requires a similar number of samples as its unconstrained counterpart to master the skill. These findings shed light on how simple constraints can help robots achieve sensible and safe behavior quickly and ease concerns surrounding hardware deployment. We also investigate the effects of the strictness of these constraints and report findings that provide insights into how different degrees of strictness affect learning outcomes. Our code is available [here](https://github.com/GT-STAR-Lab/constrained-rl-dexterous-manipulation).
