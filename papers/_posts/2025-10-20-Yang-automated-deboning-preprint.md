---

layout: paper

title: Towards Automated Chicken Deboning via Learning-based Dynamically-Adaptive 6-DoF Multi-Material Cutting

image: /papers/images/2025-yang-automated-deboning.png

authors: Zhaodong Yang, Ai-Ping Hu, Harish Ravichandar

year: 2025

journal: Preprint

ref: Yang et al., Preprint, 2025.

supplement: https://sites.google.com/view/chickendeboning-2026

arxiv: "2510.15376"

github: GT-STAR-Lab/AutomatedDeboning

---

## Abstract

Automating chicken shoulder deboning requires precise 6-DoF cutting through a partially occluded, deformable, multi-material joint, since contact with the bones presents serious health and safety risks. Our work makes both systems-level and algorithmic contributions to train and deploy a reactive force-feedback cutting policy that dynamically adapts a nominal trajectory and enables full 6-DoF knife control to traverse the narrow joint gap while avoiding contact with the bones. First, we introduce an open-source custom-built simulator for multi-material cutting that models coupling, fracture, and cutting forces, and supports reinforcement learning, enabling efficient training and rapid prototyping. Second, we design a reusable physical testbed to emulate the chicken shoulder: two rigid ``bone” spheres with controllable pose embedded in a softer block, enabling rigorous and repeatable evaluation while preserving essential multi-material characteristics of the target problem. Third, we train and deploy a residual RL policy, with discretized force observations and domain randomization, enabling robust zero-shot sim-to-real transfer and the first demonstration of a learned policy that debones a real chicken shoulder. Our experiments in our simulator, on our physical testbed, and on real chicken shoulders show that our learned policy reliably navigates the joint gap and reduces undesired bone/cartilage contact, resulting in up to a 4x improvement over existing open-loop cutting baselines in terms of success rate and bone avoidance. Our results also illustrate the necessity of force feedback for safe and effective multi-material cutting.
