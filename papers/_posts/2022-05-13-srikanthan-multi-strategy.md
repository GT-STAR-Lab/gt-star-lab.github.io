---
layout: paper
title: Resource-Aware Adaptation of Heterogeneous Strategies for Coalition Formation
image: /images/papers/srikanthan-multi-strategy.png
authors: Anusha Srikanthan, Harish Ravichandar
year: 2022
ref: Srikanthan and Ravichandar, AAMAS 2022.
journal: "Autonomous Agents and Multi-Agent Systems (AAMAS) - Extended Abstract"
arxiv: 2108.02733
github: GT-STAR-Lab/Resource-Aware-Generalization
---

## Abstract

Existing approaches to coalition formation often assume that requirements associated with tasks are precisely specified by the human operator. However, prior work has demonstrated that humans, while extremely adept at solving complex problems, struggle to explicitly state their solution strategy. In this work, we propose a framework to learn implicit task requirements directly from expert demonstrations of coalition formation. We also account for the fact that demonstrators may utilize different, equally-valid solutions to the same task. Essentially, we contribute a framework to model and infer such heterogeneous strategies to coalition formation. Next, we develop a resource-aware approach to generalize the inferred strategies to new teams without requiring additional training. To this end, we formulate and solve a constrained optimization problem that simultaneously selects the most appropriate strategy for a given target team, and optimizes the constituents of its coalitions accordingly. We evaluate our approach against several baselines, including some that resemble existing approaches, using detailed numerical simulations, StarCraft II battles, and a multi-robot emergency-response scenario. Our results indicate that our framework consistently outperforms all baselines in terms of requirement satisfaction, resource utilization, and task success rates.