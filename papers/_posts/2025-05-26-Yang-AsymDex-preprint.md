---

layout: paper

title: AsymDex&#58; Asymmetry and Relative Coordinates for RL-based Bimanual Dexterity

image: /papers/images/2025-yang-asymdex-poses.png

authors: Zhaodong Yang, Yunhai Han, Harish Ravichandar

year: Preprint

ref: Yang et al., Preprint, 2025.

supplement: https://sites.google.com/view/asymdex-2025/

github: coming soon

---

## Abstract

We present Asymmetric Dexterity (AsymDex), a novel and simple reinforcement learning (RL) framework that can efficiently learn a large class of bimanual skills in multi-fingered hands without relying on demonstrations. Two crucial insights enable AsymDex to reduce the observation and action space dimensions and improve sample efficiency. First, true ambidexterity is rare in humans and most of us exhibit strong "handedness". Inspired by this observation, we assign complementary roles to each hand: the facilitating hand repositions and reorients one object, while the dominant hand performs complex manipulations to achieve the desired result (e.g., opening a bottle cap, or pouring liquids). Second, controlling the relative motion between the hands is crucial for coordination and synchronization of the two hands. As such, we design relative observation and action spaces and leverage a relative-pose tracking controller. Further, we propose a two-phase decomposition in which AsymDex can be readily integrated with recent advances in grasp learning to facilitate both the acquisition and manipulation of objects using two hands. Unlike existing RL-based methods for bimanual dexterity with multi-fingered hands, which are either sample inefficient or tailored to a specific task, AsymDex can efficiently learn a wide variety of bimanual skills that exhibit asymmetry. Detailed experiments on seven asymmetric bimanual dexterous manipulation tasks (four simulated and three real-world) reveal that AsymDex consistently outperforms strong baselines that challenge our design choices.