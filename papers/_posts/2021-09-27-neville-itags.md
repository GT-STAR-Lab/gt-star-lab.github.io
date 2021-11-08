---
layout: paper
title: An Interleaved Approach to Trait-Based Task Allocation and Scheduling
image: /images/papers/neville-itags.png
authors: Glen Neville, Andrew Messing, Harish Ravichandar, Seth Hutchinson Sonia Chernova.
year: 2021
ref: Neville et al. IROS 2021.
journal: "International Conference on Intelligent Robots and Systems (IROS)"
pdf: https://arxiv.org/pdf/2108.02773.pdf
arxiv: 2108.02773
---

## Abstract

To realize effective heterogeneous multi-robot teams, researchers must leverage individual robots' relative strengths and coordinate their individual behaviors. Specifically, heterogeneous multi-robot systems must answer three important questions: *who* (task allocation), *when* (scheduling), and *how* (motion planning). While specific variants of each of these problems are known to be NP-Hard, their interdependence only exacerbates the challenges involved in solving them together. In this paper, we present a novel framework that interleaves task allocation, scheduling, and motion planning. We introduce a search-based approach for trait-based time-extended task allocation named Incremental Task Allocation Graph Search (ITAGS). In contrast to approaches that solve the three problems in sequence, ITAGS's interleaved approach enables efficient search for allocations while simultaneously satisfying scheduling constraints and accounting for the time taken to execute motion plans. To enable effective interleaving, we develop a convex combination of two search heuristics that optimizes the satisfaction of task requirements as well as the makespan of the associated schedule. We demonstrate the efficacy of ITAGS using detailed ablation studies and comparisons against two state-of-the-art algorithms in a simulated emergency response domain.

