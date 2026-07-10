---
layout: paper
title: OmniTacTune&#58; Policy-Agnostic Real-World RL for Tactile Residual Adaptation of Visual Policies
image: /papers/images/2026-yu-omnitactune.png
authors: Kelin Yu*, Haode Zhang*, Harish Ravichandar, Yunhai Han, Ruohan Gao<br />(* equal contribution)
year: 2026
ref: Yu, Zhang et al., RSS Workshop 2026 (Oral Spotlight).
journal: "Workshop on Tactile Sensing for Robotic Foundation Models, Robotics: Science and Systems (RSS) - Oral Spotlight"
arxiv: "2607.03723"
supplement: https://colinyu1.github.io/omnitactune-site/
---

## Abstract

Visual policies learned from human videos, teleoperation, and robot demonstrations offer scalable motion priors, but often fail in contact-rich manipulation, where success significantly depends on local force and contact geometry. Tactile sensing provides these complementary signals, yet tactile data remain costly to collect and hard to generalize across sensors, robots, and tasks.

We introduce OmniTacTune, a policy-agnostic real-world RL pipeline that adapts tactile feedback to pretrained visual policies through residual correction. OmniTacTune uses a two-stage design: it first bootstraps tactile-aware learning from autonomous base-policy rollouts, then learns a lightweight tactile residual policy through online interaction. Extensive experiments show that OmniTacTune generalizes across diverse contact-rich tasks, visual base policies, and tactile representations.

Across four real-world contact-rich tasks, it improves visual base policies from 5-40% success to 85-100% within 40-80 minutes, demonstrating an efficient path for adapting tactile feedback to scalable visual robot policies.
