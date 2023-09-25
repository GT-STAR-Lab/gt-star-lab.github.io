---
layout: paper
title: MARBLER&#58; An Open Platform for Standardized Evaluation of Multi-Robot Reinforcement Learning Algorithms
image: /papers/images/torbati-marbler.png
authors: Reza Torbati, Shubham Lohiya, Shivika Singh, Meher Shashwat Nigam, Harish Ravichandar
year: 2023
ref: Torbati et al., MRS 2023.
journal: International Symposium on Multi-Robot & Multi-Agent Systems (MRS)
arxiv: 2307.03891
github: ShashwatNigam99/MARBLER
supplement: https://shubhlohiya.github.io/MARBLER

---

## Abstract

Multi-agent reinforcement learning (MARL) has enjoyed significant recent progress, thanks to deep learning. This is naturally starting to benefit multi-robot systems (MRS) in the form of multi-robot RL (MRRL). However, existing infrastructure to train and evaluate policies predominantly focus on challenges in coordinating virtual agents, and ignore characteristics important to robotic systems. Few platforms support realistic robot dynamics, and fewer still can evaluate Sim2Real performance of learned behavior. To address these issues, we contribute MARBLER: Multi-Agent RL Benchmark and Learning Environment for the Robotarium. MARBLER offers a robust and comprehensive evaluation platform for MRRL by marrying Georgia Tech's Robotarium (which enables rapid prototyping on physical MRS) and OpenAI's Gym framework (which facilitates standardized use of modern learning algorithms). MARBLER offers a highly controllable environment with realistic dynamics, including barrier certificate-based obstacle avoidance. It allows anyone across the world to train and deploy MRRL algorithms on a physical testbed with reproducibility. Further, we introduce five novel scenarios inspired by common challenges in MRS and provide support for new custom scenarios. Finally, we use MARBLER to evaluate popular MARL algorithms and provide insights into their suitability for MRRL. In summary, MARBLER can be a valuable tool to the MRS research community by facilitating comprehensive and standardized evaluation of learning algorithms on realistic simulations and physical hardware. Links to our open-source framework and the videos of real-world experiments can be found at https://shubhlohiya.github.io/MARBLER/.
