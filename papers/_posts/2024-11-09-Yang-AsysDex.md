---
layout: paper
title: AsymDex&#58; Leveraging Asymmetry and Relative Motion in Learning Bimanual Dexterity
image: /papers/images/yang-asymDex.png
authors: Zhaodong Yang, Yunhai Han, Harish Ravichandar
year: 2024
ref: Yang et al., WCBM WS, CoRL 2024.
journal: "Workshop on Whole-body Control and Bimanual Manipulation: Applications in Humanoids and Beyond, Conference on Robot Learning (CoRL)"
supplement: https://sites.google.com/view/asymdex-2024/

---

## Abstract

We present Asymmetric Dexterity (AsymDex), a novel reinforcement learning (RL) framework that can efficiently learn asymmetric bimanual skills for multi-fingered hands without relying on demonstrations, which can be cumbersome to collect. Two crucial ingredients enable AsymDex to reduce the observation and action space dimensions and improve sample efficiency. First, AsymDex leverages the natural asymmetry found in human bimanual manipulation and assigns specific and interdependent roles to each hand: a facilitating hand that moves and reorients the object, and a dominant hand that performs complex manipulations on said object. Second, AsymDex defines and operates over relative observation and action spaces, facilitating responsive coordination between the two hands. Further, AsymDex can be easily integrated with recent advances in grasp learning to handle both the object acquisition phase and the interaction phase of bimanual dexterity. Unlike existing RL-based methods for bimanual dexterity, which are tailored to a specific task, AsymDex can be used to learn a wide variety of bimanual tasks that exhibit asymmetry. Detailed experiments on four simulated asymmetric bimanual dexterous manipulation tasks reveal that AsymDex consistently outperforms strong baselines that challenge its design choices, in terms of success rate and sample efficiency.