---
layout: paper
title: Resource-Aware Adaptation of Heterogeneous Strategies for Coalition Formation
image: /images/papers/srikanthan-multi-strategy.png
authors: Anusha Srikanthan, Harish Ravichandar
year: 2020
ref: Ravichandar et al. JAAMAS 2020.
journal: "Autonomous Agents and Multi-Agent Systems (AAMAS) - Extended Abstract"
arxiv: 2108.02733
github: GT-STAR-Lab/Resource-Aware-Generalization
---

## Abstract

Large teams of heterogeneous agents have the potential to solve complex multi-task problems that are intractable for a single agent working independently. However, solving complex multi-task problems requires leveraging the relative strengths of the different kinds of agents in the team. We present *Stochastic TRAit-based Task Assignment (STRATA)*, a unified framework that models large teams of heterogeneous agents and performs effective task assignments. Specifically, given information on which *traits* (capabilities) are required for various tasks, STRATA computes the assignments of agents to tasks such that the trait requirements are achieved. Inspired by prior work in robot swarms and biodiversity, we categorize agents into different *species* (groups) based on their traits. We model each trait as a *continuous* variable and differentiate between traits that can and cannot be aggregated from different agents. STRATA is capable of reasoning about both species-level and agent-level variability in traits. We illustrate the necessity and effectiveness of STRATA using detailed numerical simulations and in a capture-the-flag game environment.