---

layout: paper

title: Going with the Flow&#58; Koopman Behavioral Models as Pseudo Planners for Visuo-Motor Dexterity

image: /papers/images/2026-han-k-ubm.png

authors: Yunhai Han, Jiaqi Fu*, Linhao Bai*, Ziyu Xiao*, Zhaodong Yang, Yogita Choudhary, Krishna Jha, Chuizheng Kong, Shreyas Kousik, Harish Ravichandar<br />(* equal contribution)

year: 2026

journal: Preprint

ref: Han et al., Preprint, 2026.

arxiv: "2602.07413"

github: GT-STAR-Lab/K-UBM

supplement: https://k-ubm.github.io/

---

## TL;DR
We introduce i) Unified Behavioral Models (UBMs): a framework that, unlike typical reactive mappings, learns dexterous manipulation skills by modeling how visual observations and robot actions co-evolve as coupled dynamical systems, and ii) Koopman-UBM: An effective instantiation of UBMs that acts as an implicit planner that enables faster inference, smoother execution (temporal coherence), and flexible online replanning.

## Abstract

Contemporary visuo-motor dexterity models often rely on expressive policy classes with diffusion and transformer backbones to achieve strong perfor mance. However, these architectures require significant data and computational resources, and remain far from reliable, particularly for multi-fingered dexterity. Importantly, they model skills as reactive mappings and rely on fixed-horizon ac tion chunking, creating a rigid trade-off between temporal coherence and reactiv ity. To address these issues, we first introduce Unified Behavioral Models (UBMs), a framework to represent dexterous skills as coupled dynamical systems that cap ture how visual features of the environment (visual flow) and proprioceptive states of the robot (action flow) co-evolve. As such, UBMs ensure temporal coherence by construction rather than heuristic averaging. Unlike world models that attempt to predict the impact of arbitrary robot actions on the environment, UBMs target behavioral dynamics that encode how demonstrated robot behavior is related to desired impacts on the environment. A UBM can be viewed as a pseudo plan ner: given an initial condition, it computes the desired robot behavior over the entire skill horizon, while simultaneously “imagining” the resulting flow of visual features. To operationalize UBMs, we propose Koopman-UBM, a first instantia tion of UBMs as a structured latent linear system. K-UBM is computationally efficient, enabling reactivity and adaptation via an online replanning strategy: the model acts as its own runtime monitor, automatically triggering replanning when predicted and observed visual flow diverge beyond a threshold. Across seven simulated tasks and four real-world tasks, our approach matches or exceeds the performance of state-of-the-art baselines, while offering considerably faster infer ence, smooth execution, robustness to occlusions, and flexible replanning.