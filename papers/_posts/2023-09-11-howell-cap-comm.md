---
layout: paper
title: Generalization of Heterogeneous Multi-Robot Policies via Awareness and Communication of Capabilities
image: /papers/images/cap-comm-block-diagram.png
authors: Pierce Howell*, Max Rudolph*, Reza Torbati, Harish Ravichandar<br />(* equal contribution)
year: 2023
ref: Howell et al., CoRL 2023.
journal: "Conference on Robot Learning (CoRL)"
pdf: https://openreview.net/forum?id=N3VbFUpwaa

---

## Abstract

Recent advances in multi-agent reinforcement learning (MARL) provide promising tools for enabling heterogeneous multi-robot teaming without the need for manually-designed controllers. However, existing approaches often overlook the challenge of generalizing learned policies to teams of new compositions, sizes, and robots. While such generalization might not be important in teams of virtual agents that can retrain policies on-demand, it is pivotal in multi-robot systems that are deployed in the real-world and must adapt to inevitable changes without retraining. As such, multi-robot policies must remain robust to team changes -- an ability we call _adaptive teaming_. In this work, we take a first step toward this achieving this ability by investigating we investigate if _awareness and communication of robot capabilities_ can improve such generalization. We conduct detailed experiments involving a heterogeneous sensor network task implemented on an established multi-robot test bed. We demonstrate that shared decentralized policies, that enable robots to be both aware of and communicate their capabilities, achieve adaptive teaming by implicitly capturing the fundamental relationship between collective capabilities and effective coordination. Videos of trained policies can be viewed at [https://sites.google.com/view/cap-comm](https://sites.google.com/view/cap-comm).
