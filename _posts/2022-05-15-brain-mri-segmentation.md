---
layout:     gwern-post
title:      "Classical vs Deep Learning Methods for Brain MRI Segmentation"
date:       2022-05-15
summary:    "Comparing U-Nets, fully convolutional networks, and gradient-boosted ensembles for segmenting brain metastases in small MRI datasets."
categories: research medical-imaging
tags:       [segmentation, U-Net, MRI, computer-vision]
preview:    "A comparison of classical and deep learning approaches for brain tumor segmentation in small biomedical datasets (<100 3D MRI scans), conducted at Ryerson's Maternal-Fetal Imaging Laboratory."
---

A central challenge in biomedical image processing is the combination of low segmentation accuracy, small datasets, and low resolution. This work, conducted at Toronto Metropolitan University's [Maternal-Fetal Imaging Laboratory](https://www.ryerson.ca/dsussman/) under [Dr. Dafna Sussman](https://scholar.google.ca/citations?user=nqE2CWsAAAAJ&hl=en), compared several approaches to brain metastasis segmentation.

## Methods

We evaluated three families of models on a dataset of fewer than 100 3D MRI scans:

1. **U-Nets** --- encoder-decoder architectures with skip connections, widely used in biomedical segmentation
2. **Fully Convolutional Networks (FCNs)** --- end-to-end convolutional architectures adapted for dense pixel-wise prediction
3. **Gradient-Boosted Ensemble Models** --- classical machine learning approaches using hand-crafted features with XGBoost

## Key Findings

Deep learning methods (particularly U-Net variants) significantly outperformed classical approaches on segmentation accuracy, even with limited training data. However, the gradient-boosted models offered faster training times and more interpretable feature importance rankings, which may be valuable in clinical settings where model transparency is required.

Data augmentation strategies---including elastic deformations, intensity shifts, and random rotations---proved critical for the deep learning models to generalize from such a small training set.

## Collaborators

- [Daniel Nussey](https://www.linkedin.com/in/daniel-nussey-a997a2131/)
- [Rachita Singh](https://www.linkedin.com/in/rachita-singh-49936b161/)
- [Dr. Dafna Sussman](https://scholar.google.ca/citations?user=nqE2CWsAAAAJ&hl=en) (Supervisor)
