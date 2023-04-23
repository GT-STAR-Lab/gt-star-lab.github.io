---
layout: paper
title: A Sampling-Based Approach for Heterogeneous Coalition Scheduling with Temporal Uncertainty
image: /papers/images/messing-hcstu.png
authors: Andrew Messing, Jacopo Banfi, Martina Stadler, Ethan Stump, Harish Ravichandar, Nicholas Roy, Seth Hutchinson
year: 2023
ref: Messing et al., RSS 2023.
journal: "Robotics: Science and Systems (RSS)"
github: comming soon
pdf: coming soon
---

## Abstract

Scheduling algorithms for real-world heterogeneous multi-robot teams must be able to reason about temporal uncertainty in the world model in order to create plans that are tolerant to the risk of unexpected delays. To this end, we present a novel sampling-based risk-aware approach for solving Heterogeneous Coalition Scheduling with Temporal Uncertainty (HCSTU) problems, which does not require any assumptions regarding the specific underlying cause of the temporal uncertainty or the specific duration distributions. Our approach computes a schedule which obeys the temporal constraints of a small number of heuristically-selected sample scenarios by solving a Mixed-Integer Linear Program. Then, it uses a hypothesis testing method, the Sequential Probability Ratio Test, to provide a probabilistic guarantee that the schedule obeys the temporal constraints of the underlying HCSTU problem for a user-specified risk tolerance. In extensive experiments, we demonstrate that our approach empirically respects the risk tolerance, and generates solutions of comparable or better quality than state-of-the- art approaches while being an order of magnitude faster to compute on average. Finally, we demonstrate how schedules that are robust to uncertainty can be incorporated as solutions to subproblems within the full Simultaneous Task Allocation and Planning with Spatiotemporal Constraints problem, guiding it towards higher quality solutions that on average are faster to execute on realizations of the uncertain problem.