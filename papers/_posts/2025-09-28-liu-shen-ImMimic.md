---

layout: paper

title: ImMimic&#58; Cross-Domain Imitation from Human Videos via Mapping and Interpolation

image: /papers/images/2025-fu-jain-CASH.png

authors: Yangcen Liu*, Woo Chul Shin*, Yunhai Han, Zhenyang Chen, Harish Ravichandar, Danfei Xu<br/>(* equal contribution)

year: 2025

ref: Liu, Shin et al., CoRL 2025.

journal: Conference on Robot Learning (CoRL)

github: coming soon

supplement: https://sites.google.com/view/immimic

---

## Abstract

Learning robot manipulation from abundant human videos offers a scalable alternative to costly robot-specific data collection. However, domain gaps across visual, morphological, and physical aspects hinder direct imitation. To effectively bridge the domain gap, we propose ImMimic, an embodiment-agnostic co-training framework that leverages both human videos and a small amount of teleoperated robot demonstrations. ImMimic uses Dynamic Time Warping (DTW) with either action- or visual-based mapping to map retargeted human hand poses to robot joints, followed by MixUp interpolation between paired human and robot trajectories. Our key insights are (1) retargeted human hand trajectories provide informative action labels, and (2) interpolation over the mapped data creates intermediate domains that facilitate smooth domain adaptation during co-training. Evaluations on four real-world manipulation tasks (Pick and Place, Push, Hammer, Flip) across four robotic embodiments (Robotiq, Fin Ray, Allegro, Ability) show that ImMimic improves task success rates and execution smoothness, highlighting its efficacy to bridge the domain gap for robust robot manipulation. The project website can be found at https://sites.google.com/view/immimic.