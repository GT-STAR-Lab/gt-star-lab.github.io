---
layout: paper
title: Concurrent Constrained Optimization of Unknown Rewards for Multi-Robot Task Allocation
image: /papers/images/singh-cmtab.png
authors: Sukriti Singh, Anusha Srikanthan, Vivek Mallampati, Harish Ravichandar
year: 2023
ref: Singh et al., ARMS WS, AAMAS 2023.
journal: "Workshop on Autonomous Robots and Multirobot Systems (ARMS), Autonomous Agents and Multi-Agent Systems (AAMAS)"
---

## Abstract

Task allocation can enable effective coordination of multi-robot teams to accomplish tasks that are intractable for individual robots. However, existing approaches to task allocation often assume that task requirements or reward functions are known and explicitly specified by the user. In this work, we consider the challenge of forming effective coalitions for a given heterogeneous multi-robot team when task reward functions are _unknown_. To this end, we first formulate a new class of problems, dubbed _COncurrent Constrained Online optimization of Allocation (COCOA)_. The COCOA problem requires online optimization of coalitions such that the unknown rewards of all the tasks are _simultaneously_ maximized using a given multi-robot team with _constrained_ resources. To address the COCOA problem, we introduce an online optimization algorithm, named _Concurrent Multi-Task Adaptive Bandits (CMTAB)_, that leverages and builds upon continuum-armed bandit algorithms. Experiments involving detailed numerical simulations and a simulated emergency response task reveal that CMTAB can effectively trade-off exploration and exploitation to simultaneously and efficiently optimize the unknown task rewards while respecting the team’s resource constraints.
