---

layout: paper

title: On the Surprising Effectiveness of Spectral Clipping in Learning Stable Linear and Latent-Linear Dynamical Systems

image: /papers/images/2025-guo-sc.png

authors: Hanyao Guo, Yunhai Han, Harish Ravichandar

year: 2025

journal: Preprint

ref: Guo et al., Preprint, 2025.

arxiv: 2412.01168

github: GT-STAR-Lab/spec_clip

---

## Abstract

When learning stable linear dynamical systems from data, three important properties are desirable: i) predictive accuracy, ii) verifiable stability, and iii) computational efficiency. Unconstrained minimization of prediction errors leads to high accuracy and efficiency but cannot guarantee stability. Existing methods to enforce stability often preserve accuracy, but do so only at the cost of increased computation. In this work, we investigate if a seemingly-naive procedure can simultaneouslyoffer all three desiderata. Specifically, we consider a post-hoc procedure in which we surgically manipulate the spectrum of the linear system after it was learned using unconstrained least squares. We call this approach spectral clipping (SC) as it involves eigen decomposition and subsequent reconstruction of the system matrix after any eigenvalues whose magnitude exceeds one have been clipped to one (without altering the eigenvectors). We also show that SC can be readily combined with Koopman operators to learn nonlinear dynamical systems that can generate stable predictions of nonlinear phenomena, such as those underlying complex dexterous manipulation skills involving multi-fingered robotic hands. Through comprehensive experiments involving two different applications and publicly available benchmark datasets, we show that this simple technique can efficiently learn highly-accurate predictive dynamics that are provably-stable. Notably, we find that SC can match or outperform strong baselines while being orders-of-magnitude faster. Finally, we find that SC can learn stable robot policies even when the training data includes unsuccessful or truncated demonstrations. Our code and datasets can be found at https://github.com/GT-STAR-Lab/spec_clip.
