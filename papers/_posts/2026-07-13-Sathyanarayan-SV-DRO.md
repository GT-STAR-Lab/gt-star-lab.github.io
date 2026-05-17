---
layout: paper
title: Distributionally Robust Control via Stein Variational Inference for Contact-Rich Manipulation
image: /papers/images/sathyanarayan-SV-DRO.png
authors: Hrishikesh Sathyanarayan, Victor Vantilborgh, Harish Ravichandar, Tom Lefebvre, Ian Abraham
year: 2026
ref: Sathyanarayan et al., RSS 2026.
journal: "Robotics: Science and Systems (RSS)"
github: 
pdf: 
arxiv: 
---

## Abstract

Reliable robotic manipulation requires control poli- cies that can accurately represent and adapt to uncertainty aris- ing from contact-rich interactions. Modern data-driven methods mitigate uncertainty through large-scale training and compu- tation, and degrade significantly in performance with limited number of training samples. By contrast, classical model-based controllers are computationally efficient and reliable, but their limited ability to represent task-relevant uncertainty can hinder performance in contact-rich interactions. In this work, we propose to expand the capabilities of model- based manipulation control through more flexible uncertainty modeling that retains performance while exactly adapting to uncertainty. Our approach casts the manipulation problem as a distributionally robust control optimization and proposes a novel deterministic formulation based on Stein variational in- ference that preserves performance while explicitly modeling task-sensitive parameter uncertainty. As a result, the derived controllers are more aware of task sensitivities to uncertainty, yielding high reliability without compromising performance. Experimental results demonstrate up to 3X improved robustness across a range of contact-rich manipulation tasks under broad parametric uncertainty, outperforming existing model-based con- trol methods.
