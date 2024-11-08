---
layout: post
id: tortorella
show: true
title: Efficient Deep Learning on Graphs
category: Machine Learning on Graphs, Deep Neural Networks, Reservoir Computing
authors: 
    - Domenico Tortorella
---

Graphs are an effective representation of entities and relations of many different objects such as chemical compounds, protein interaction networks, social or citation networks, and other complex structured data. Deep learning proved effective in tackling a wide range of learning tasks, including tasks on structured data, thanks to the ability of learning a hierarchy of representations in the several neural network layers without requiring human engineering. However, deep learning brought several challenges, both in terms of efficiency and effectiveness. The increase in available data - both as large collections of graphs and as large-scale network graphs - requires an increase in model complexity, which in turn leads to an exponential increase in hyper-parameter space to be searched during model selection; the need for efficiency both in training models and selecting models is evident. Training effective deep neural networks is also challenging, due to difficulties encountered e.g. by gradient back-propagation through a large number of layers in end-to-end training. In graph learning, these problems are exacerbated by other peculiar issues such as over-smoothing and over-squashing, which impair the ability of deep neural networks for graphs to learn meaningful representations. My research has investigated two directions for building efficient and effective graph neural models: constructive approaches, which incrementally build a graph neural model, adapting its size to the task; reservoir computing approaches, which exploit random parameter initialization satisfying certain constraints to realize graph embeddings without training.
