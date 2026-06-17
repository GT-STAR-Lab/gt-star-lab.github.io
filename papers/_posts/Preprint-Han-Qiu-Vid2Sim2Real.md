---

layout: paper

title: Video2Sim2Real&#58; Full-Stack Autonomous Dexterous Skill Acquisition from a Single Human Video

image: /papers/images/han-qiu-vid2sim2real.png

authors: Yunhai Han*, Jianuo Qiu*, Linhao Bai, Ziyu Xiao, Zihang Zeng, Yangcen Liu, Zhaodong Yang, Shalin Jain, Wenrui Ma, Jiaqi Fu, Yuqian Zheng, Manisha Natarajan, Muhammad Zubair Irshad, Kenneth Shaw, Matthew Gombolay, Zsolt Kira*, Harish Ravichandar*<br />(* equal contribution)

year: 2026

journal: Preprint

ref: Han, Qiu et al., Preprint.

arxiv: "2606.08828"

supplement: https://video2sim2real.github.io/

---

## TL;DR
Video2Sim2Real autonomously acquires dexterous manipulation skills end-to-end from human manipulation videos, without robot data or expert intervention, across different everyday manipulation tasks.

## Abstract

Human manipulation videos are a convenient and intuitive source for robot learning. However, directly transferring human dexterity to robots remains challenging due to perception errors and the embodiment gap. To address this, we introduce Video2Sim2Real, a full-stack framework for autonomous skill acquisi tion from a single human manipulation video. Our framework first uses off-the shelf foundation models to reconstruct a simulator-ready digital twin and extract robot and object motion priors. Rather than treating the extracted robot motion as a reliable reference throughout execution, our key idea is to recover and lever age the most fundamental sources of supervision from the demonstrated skill: We identify object-centric keyframes to optimize the corresponding robot configura tions using object information from the simulator, and use these configurations as anchors that refine the robot motion such that it ultimately has the desired impact on the environment. To bridge the remaining sim-to-real gap, we introduce a sim to-real strategy that decouples robustness to noisy and incomplete perception from variations in hand-object interaction dynamics. Specifically, we learn to recali brate robot configurations from noisy real-world point clouds via IL, and leverage residual RL to perform local finger-level adaptations to ensure robust and effective interactions. Finally, a collision-aware motion planning module enables spatial generalization to novel object configurations. Across several everyday manipula tion tasks, Video2Sim2Real improves simulated task success, safety, and trajec tory coherence over numerous baselines, and achieves better sim-to-real transfer than existing techniques. These results demonstrate a promising path toward au tonomous dexterous skill acquisition from human videos.