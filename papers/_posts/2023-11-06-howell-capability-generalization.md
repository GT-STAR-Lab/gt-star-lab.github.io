---
layout: paper
title: Generalization of Heterogeneous Multi-Robot Policies via Awareness and Communication of Capabilities
image: /papers/images/howell-capability-generalization.png
authors: Pierce Howell*, Max Rudolph*, Reza Torbati, Kevin Fu, Harish Ravichandar<br />(* equal contribution)
year: 2023
ref: Howell et al., CoRL 2023.
journal: Conference on Robot Learning (CoRL)
pdf: https://openreview.net/pdf?id=N3VbFUpwaa
github: GT-STAR-Lab/cap-comm
supplement: https://sites.google.com/view/cap-comm

---

## Abstract

Recent advances in multi-agent reinforcement learning (MARL) are enabling impressive coordination in heterogeneous multi-robot teams. However, existing approaches often overlook the challenge of generalizing learned policies to teams of new compositions, sizes, and robots. While such generalization might not be important in teams of virtual agents that can retrain policies on-demand, it is pivotal in multi-robot systems that are deployed in the real-world and must readily adapt to inevitable changes. As such, multi-robot policies must remain robust to team changes – an ability we call *adaptive teaming*. In this work, we investigate if *awareness and communication of robot capabilities* can provide such generalization by conducting detailed experiments involving an established multi-robot test bed. We demonstrate that shared decentralized policies, that enable robots to be both aware of and communicate their capabilities, can achieve adaptive teaming by implicitly capturing the fundamental relationship between collective capabilities and effective coordination. Videos of trained policies can be viewed at https://sites.google.com/view/cap-comm.
