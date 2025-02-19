---
layout: paper
title: Learning Flexible Heterogeneous Coordination With Capability-Aware Shared Hypernetworks
image: /papers/images/2025-fu-CASH.png
authors: Kevin Fu, Pierce Howell*, Shalin Jain*, Harish Ravichandar<br />(* equal contribution)
year: 2025
ref: Fu et al., AAMAS 2025.
journal: Autonomous Agents and Multi-Agent Systems (AAMAS) - Extended Abstract
arxiv: 2501.06058
github: GT-STAR-Lab/CASH

---

## TL;DR

CASH is a parsimonious hypernetwork-based policy architecture for coordinating heterogeneous teams. CASH can both encode shared decision making strategies and also flexibly adapt to individual and collective capabilities and context.


## Abstract

Cooperative heterogeneous multi-agent tasks require agents to behave in a flexible and complementary manner that best leverages their diverse capabilities.
Existing policy architectures for coordination fall into one of two categories: i) shared-parameter designs, which assign an ID to each agent to encode diverse behaviors within a single architecture for sample-efficiency, but are limited in their ability to learn diverse behaviors; ii) heterogeneous designs, which learn a separate policy for each agent or agent class, enabling greater diversity at the cost of sample- and parameter-efficiency. In addition to forcing a trade-off, neither design choice allows the agents to learn how individual and collective capabilities must impact behaviors, and thus hinder generalization to unseen agents or team compositions. In this work, we aim to enable flexible and heterogeneous coordination without sacrificing sample efficiency or generalization. Inspired by recent work in transfer learning and meta RL, we propose _Capability-Aware Shared Hypernetworks (CASH)}_, a new _soft weight sharing_ architecture for heterogeneous coordination that use hypernetworks to explicitly reason about continuous agent capabilities in addition to local observations. Intuitively, CASH allows the team to learn _shared_ decision making strategies (captured by a shared encoder) that are readily _adapted_ according to the team's individual and collective capabilities (by a shared hypernetwork). Our design is agnostic to the underlying learning paradigm. We conducted detailed experiments across two heterogeneous coordination tasks and three standard learning paradigms (imitation learning, value-based and policy-gradient reinforcement learning). Results reveal that CASH generates appropriately diverse behaviors that consistently outperform baseline architectures in terms of task performance and sample efficiency during both training and zero-shot generalization. Notably, CASH provides these improvements with only 20% to 40% of the learnable parameters used by baselines. 
