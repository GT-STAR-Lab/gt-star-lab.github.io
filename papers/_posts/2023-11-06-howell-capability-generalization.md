---
layout: paper
title: Generalization of Heterogeneous Multi-Robot Policies via Awareness and Communication of Capabilities
image: /papers/images/howell-capability-generalization.png
authors: Pierce Howell, Max Rudolph, Reza Torbati, Kevin Fu, Harish Ravichandar
year: 2023
ref: Pierce et al., CoRL 2023.
journal: Conference on Robot Learning (CoRL)
pdf: coming soon
github: coming soon
supplement: https://sites.google.com/view/cap-comm

---

## Abstract

Recent advances in multi-agent reinforcement learning (MARL) provide promising tools for enabling heterogeneous multi-robot teaming without the need for manually-designed controllers. However, existing approaches often over- look the challenge of generalizing learned policies to teams of new compositions, sizes, and robots. While such generalization might not be important in teams of virtual agents that can retrain policies on-demand, it is pivotal in multi-robot systems that are deployed in the real-world and must adapt to inevitable changes with- out retraining. As such, multi-robot policies must remain robust to team changes – an ability we call *adaptive teaming*. In this work, we investigate if *awareness and communication of robot capabilities* can improve such generalization. We conduct detailed experiments involving a heterogeneous sensor network task implemented on an established multi-robot test bed. We demonstrate that shared decentralized policies, that enable robots to be both aware of and communicate their capabilities, achieve adaptive teaming by implicitly capturing the fundamental relationship be- tween collective capabilities and effective coordination. Videos of trained policies can be viewed at https://sites.google.com/view/cap-comm.