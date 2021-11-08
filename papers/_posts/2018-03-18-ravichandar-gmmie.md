---
layout: paper
title: Gaze and motion information fusion for human intention inference analysis
image: /images/papers/ravichandar-gmmie.png
authors: Harish Ravichandar, Avnish Kumar, Ashwin Dani
year: 2018
ref: Ravichandar et al. IJIRA 2018.
journal: "International Journal of Intelligent Robotics and Applications (IJIRA)"
pdf: https://link.springer.com/article/10.1007/s41315-018-0051-0
---

## Abstract

An algorithm, named gaze-based multiple model intention estimator (G-MMIE), is presented for early prediction of the goal location (intention) of human reaching actions. The trajectories of the arm motion for reaching tasks are modeled by using an autonomous dynamical system with contracting behavior towards the goal location. To represent the dynamics of human arm reaching motion, a neural network (NN) is used. The parameters of the NN are learned under constraints derived based on contraction analysis. The constraints ensure that the trajectories of the dynamical system converge to a single equilibrium point. In order to use the motion model learned from a few demonstrations in new scenarios with multiple candidate goal locations, an interacting multiple-model (IMM) framework is used. For a given reaching motion, multiple models are obtained by translating the equilibrium point of the contracting system to different known candidate locations. Hence, each model corresponds to the reaching motion that ends at the respective candidate location. Further, since humans tend to look toward the location they are reaching for, prior probabilities of the goal locations are calculated based on the information about the human’s gaze. The posterior probabilities of the models are calculated through interacting model matched filtering. The candidate location with the highest posterior probability is chosen to be the estimate of the true goal location. Detailed quantitative evaluations of the G-MMIE algorithm on two different datasets involving 15 subjects, and comparisons with state-of-the-art intention inference algorithms are presented.