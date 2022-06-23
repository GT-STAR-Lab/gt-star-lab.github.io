---
layout: paper
title: Learning position and orientation dynamics from demonstrations via contraction analysis
image: /papers/images/ravichandar-cdsp.png
authors: Harish Ravichandar, Ashwin Dani
year: 2019
ref: Ravichandar et al. AuRo 2019.
journal: "Autonomous Robots (AuRo)"
pdf: https://link.springer.com/article/10.1007/s10514-018-9758-x
---

## Abstract

This paper presents a unified framework of model-learning algorithms, called contracting dynamical system primitives (CDSP), that can be used to learn pose (i.e., position and orientation) dynamics of point-to-point motions from demonstrations. The position and the orientation (represented using quaternions) trajectories are modeled as two separate autonomous nonlinear dynamical systems. The special constraints of the S3S3 manifold are enforced in the formulation of the system that models the orientation dynamics. To capture the variability in the demonstrations, the dynamical systems are estimated using Gaussian mixture models (GMMs). The parameters of the GMMs are learned subject to the constraints derived using partial contraction analysis. The learned models’ reproductions are shown to accurately reproduce the demonstrations and are guaranteed to converge to the desired goal location. Experimental results illustrate the CDSP algorithm’s ability to accurately learn position and orientation dynamics and the utility of the learned models in path generation for a Baxter robot arm. The CDSP algorithm is evaluated on a publicly available dataset and a synthetic dataset, and is shown to have the lowest and comparable average reproduction errors when compared to state-of-the-art imitation learning algorithms.
