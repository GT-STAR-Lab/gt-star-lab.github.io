---
layout: paper
title: Improving VLA Workspace Randomization Robustness for Industrial Pick-and-Place via Lightweight Residual RL&#58; A Case Study
image: /papers/images/2026-kailas-jain-VLA-robustness.png
authors: Siva Kailas*, Shalin Jain*, Harish Ravichandar<br />(* equal contribution)
year: 2026
ref: "Kailas, Jain et al., CVPR EAI 2026 (Oral)."
journal: CVPR Embodied AI Workshop (Oral Spotlight)

---

## Abstract

Vision-language-action (VLA) models are becoming increasingly effective in learning complex robotic manip- ulation skills, demonstrating a potential for use in industrial settings. While VLAs tend to exhibit strong inter-task general- ization, they are often only able to perform each task within a narrow set of initial configurations, leading to intra-task brittleness. Such restricted workspace operability is a hindering factor in adopting VLAs in industrial settings. As such, we investigate how we could improve workspace robustness of VLAs for prevalent industrial tasks, such as pick-and-place. To this end, we employ residual policies for action editing trained via reinforcement learning (RL), combined with lightweight multi- layer perceptron policies. We demonstrate that with relatively few additional parameters, we can significantly improve a VLA policy’s workspace robustness and behavioral diversity in an industrial pick-and-place task. Moreover, we isolate specific design choices to enable training stability for VLAs, including an automatic domain randomization scheme.