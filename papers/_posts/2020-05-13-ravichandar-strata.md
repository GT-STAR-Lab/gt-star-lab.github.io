---
layout: paper
title: STRATA &#58; Unified Framework for Task Assignments in Large Teams of Heterogeneous Agents
image: /papers/images/ravichandar-strata.png
authors: Harish Ravichandar, K. Shaw, Sonia Chernova
year: 2020
ref: Ravichandar et al. JAAMAS 2020.
journal: "Autonomous Agents and Multi-Agent Systems (JAAMAS)"
pdf: https://link.springer.com/article/10.1007/s10458-020-09461-y
arxiv: 1903.05149
github: harishravichandar/STRATA
---

## Abstract

Large teams of heterogeneous agents have the potential to solve complex multi-task problems that are intractable for a single agent working independently. However, solving complex multi-task problems requires leveraging the relative strengths of the different kinds of agents in the team. We present *Stochastic TRAit-based Task Assignment (STRATA)*, a unified framework that models large teams of heterogeneous agents and performs effective task assignments. Specifically, given information on which *traits* (capabilities) are required for various tasks, STRATA computes the assignments of agents to tasks such that the trait requirements are achieved. Inspired by prior work in robot swarms and biodiversity, we categorize agents into different *species* (groups) based on their traits. We model each trait as a *continuous* variable and differentiate between traits that can and cannot be aggregated from different agents. STRATA is capable of reasoning about both species-level and agent-level variability in traits. We illustrate the necessity and effectiveness of STRATA using detailed numerical simulations and in a capture-the-flag game environment.
