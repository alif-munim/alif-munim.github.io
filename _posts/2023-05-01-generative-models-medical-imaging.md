---
layout:     gwern-post
title:      "Towards Generative Models for Medical Imaging"
date:       2023-05-01
summary:    "Undergraduate thesis investigating diffusion models for generating realistic medical images to address data limitations in healthcare."
categories: research generative-models
tags:       [diffusion-models, GANs, VAEs, medical-imaging, thesis]
preview:    "My undergraduate thesis at Toronto Metropolitan University investigating diffusion models for realistic medical image generation. Training models from scratch, rather than fine-tuning, yielded the best results."
---

This was my undergraduate thesis at Toronto Metropolitan University (2023), investigating the application of diffusion models to generate realistic medical images and address chronic data limitations in healthcare AI.

## Motivation

Medical AI systems are perpetually data-starved. Privacy regulations, annotation costs, and the rarity of certain conditions mean that many clinical datasets contain only tens or hundreds of examples. Generative models offer a potential solution: synthesize realistic training data to augment small datasets.

## Approach

The thesis reviews the theoretical foundations of three generative model families:

1. **Generative Adversarial Networks (GANs)** --- adversarial training between generator and discriminator
2. **Variational Autoencoders (VAEs)** --- probabilistic latent variable models with ELBO optimization
3. **Diffusion Models** --- iterative denoising processes that learn to reverse a Gaussian noise schedule

I then conducted experiments comparing these approaches on medical datasets, with a focus on controllability and generation quality.

## Key Finding

**Training diffusion models from scratch on domain-specific medical data consistently outperformed fine-tuning pretrained natural-image models.** This is likely because the visual statistics of medical images (ultrasound speckle, X-ray attenuation, MRI contrast) differ fundamentally from natural photographs.

## Ethical Considerations

The thesis also addresses ethical and technical challenges for clinical deployment, including patient privacy in generated images, representation bias in training data, and the risk of generating diagnostically misleading artifacts.
