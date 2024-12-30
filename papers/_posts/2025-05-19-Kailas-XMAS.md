---
layout: paper
title: Evaluating and Improving Graph-based Explanation Methods for Multi-Agent Coordination
image: /papers/images/2025-kailas-XMAS.png
authors: Siva Kailas, Shalin Jain, Harish Ravichandar
year: 2025
ref: Kailas et al., AAMAS 2025.
journal: Autonomous Agents and Multi-Agent Systems (AAMAS) - Extended Abstract
pdf: https://openreview.net/pdf?id=GFVsOgttec
github: GT-STAR-Lab/XMAS

---

## TL;DR

We empirically characterize existing GNN-based post-hoc explainers for multi-agent coordination and propose a simple attention-entropy-based regularization that improves explanation quality.


## Abstract

Graph Neural Networks (GNNs), developed by the graph learning community, have been adopted and shown to be highly effective in multi-robot and multi-agent learning. In particular, GNNs have enabled complex multi-agent coordination via communication even under partially observable environments. Inspired by this successful cross-pollination, we explore whether one could adopt GNN explanation methods to explain multi-agent coordination. Specifically, we investigate and characterize the suitability of existing GNN explanation methods for graph attention network (GAT) based policies in multi-agent coordination. We find that these methods have the potential to identify the most-influential communication channels that impact the team’s current decision. Informed by our initial analyses, we propose an attention entropy regularization term that renders GAT-based policies more amenable to existing graph-based explanation methods. Intuitively, minimizing attention entropy will incentivize agents to limit their attention to the most influential or impactful agents, thereby easing the challenge faced the explainer in identifying the most-influential interactions. Our theoretical analysis supports this intuition by showing that that minimizing attention entropy increases the disparity between the explainer-generated subgraph and its complement. Empirical evaluation across three tasks and three team sizes i) provides insights into the effectiveness of existing explainers, and ii) demonstrates that our proposed regularization consistently improves explanation quality without sacrificing task performance. 
