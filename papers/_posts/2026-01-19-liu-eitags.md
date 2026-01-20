---

layout: paper

title: Learning and Optimizing the Efficacy of Spatio-Temporal Task Allocation under Temporal and Resource Constraints

image: /papers/images/2026-liu-eitags.png

authors: Jiazhen Liu, Glen Neville, Jinwoo Park, Sonia Chernova, Harish Ravichandar

year: 2026

journal: Preprint

ref: Liu et al., Preprint, 2026.

arxiv: "2601.02505"

github: GT-STAR-Lab/Q-ITAGS

---

## Abstract

Complex multi-robot missions often require heterogeneous teams to jointly optimize task allocation, scheduling, and path planning to improve team performance under strict constraints. We formalize these complexities into a new class of problems, dubbed Spatio-Temporal Efficacy-optimized Allocation for Multi-robot systems (STEAM). STEAM builds upon trait-based frameworks that model robots using their capabilities (e.g., payload and speed), but goes beyond the typical binary success-failure model by explicitly modeling the efficacy of allocations as trait-efficacy maps. These maps encode how the aggregated capabilities assigned to a task determine performance. Further, STEAM accommodates spatio-temporal constraints, including a user-specified time budget (i.e., maximum makespan). To solve STEAM problems, we contribute a novel algorithm named Efficacy-optimized Incremental Task Allocation Graph Search (E-ITAGS) that simultaneously optimizes task performance and respects time budgets by interleaving task allocation, scheduling, and path planning. Motivated by the fact that trait-efficacy maps are difficult, if not impossible, to specify, E-ITAGS efficiently learns them using a realizability-aware active learning module. Our approach is realizability-aware since it explicitly accounts for the fact that not all combinations of traits are realizable by the robots available during learning. Further, we derive experimentally-validated bounds on E-ITAGS’ suboptimality with respect to efficacy. Detailed numerical simulations and experiments using an emergency response domain demonstrate that E-ITAGS generates allocations of higher efficacy compared to baselines, while respecting resource and spatio-temporal constraints. We also show that our active learning approach is sample efficient and establishes a principled tradeoff between data and computational efficiency.