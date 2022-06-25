---
layout: paper
title: Fast Anticipatory Motion Planning for Close-Proximity Human-Robot Interaction
image: /papers/images/scheele-nmpc-comoto.png
authors: Sam Scheele, Pierce Howell, Harish Ravichandar
year: 2022
ref: Scheele et al., CP-HRI WS, RSS 2022
journal: "Workshop on Close Proximity Human-Robot Collaboration, Robotics: Science and Systems (RSS)"
---

## Abstract

Effective close-proximity human-robot interaction (CP-HRI) requires robots to be able to both efficiently perform tasks as well as adapt to human behavior and preferences. However, this ability is mediated by many, sometimes competing, aspects of interaction. We propose a real-time motion-planning framework for robotic manipulators that can simultaneously optimize a set of both task- and human-centric cost functions. To this end, we formulate a Nonlinear Model-Predictive Control (NMPC) problem with kino-dynamic constraints and efficiently solve it by leveraging recent advances in nonlinear trajectory optimization. We employ stochastic predictions of the human partner's trajectories in order to adapt the robot's nominal behavior in anticipation of its human partner. Our framework explicitly models and allows balancing of different task- and human-centric cost functions. While previous approaches to trajectory optimization for CP-HRI take anywhere from several seconds to a full minute to compute a trajectory, our approach is capable of computing one in 318 ms on average, enabling real-time implementation. We illustrate the effectiveness of our framework by simultaneously optimizing for separation distance, end-effector visibility, legibility, smoothness, and deviation from nominal behavior. We also demonstrate that our approach performs comparably to prior work in terms of the chosen cost functions, while significantly improving computational efficiency.
