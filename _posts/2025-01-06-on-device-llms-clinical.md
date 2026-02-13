---
layout:     gwern-post
title:      "Benchmarking On-Device LLMs for Clinical Decision Support"
date:       2025-01-06
summary:    "On-device LLMs match or exceed cloud-based systems for clinical decision support while preserving patient privacy. Fine-tuning a 20B model beats DeepSeek-R1 and approaches GPT-5."
categories: research
tags:       [LLMs, on-device, clinical-decision-support, privacy, fine-tuning]
preview:    "On-device LLMs (gpt-oss 20B/120B) match cloud-based systems for clinical tasks while preserving privacy. Fine-tuning the 20B model boosts accuracy from 77% to 87%, approaching GPT-5 and beating DeepSeek-R1."
---

Large language models have shown great promise in healthcare, but deploying proprietary cloud-based systems (like GPT-4) in clinical settings faces significant hurdles: **data privacy**, **cost**, and **infrastructure dependence**. Open-source models exist but often require massive compute (e.g., DeepSeek-R1 at 671B parameters), making them impractical for local deployment.

This work investigates whether **on-device LLMs**---models designed to run on consumer-grade hardware---can match cloud-based performance for clinical decision support while preserving patient privacy.

## Methodology

We benchmarked two on-device models (**gpt-oss-20b** and **gpt-oss-120b**) against state-of-the-art proprietary models (GPT-5, o4-mini) and DeepSeek-R1, across three clinical tasks:

### LLM-as-a-Generalist
General disease diagnosis from 207 radiology case reports (Eurorad) based on patient history and imaging findings.

### LLM-as-a-Specialist
Complex ophthalmology diagnosis and management questions requiring specialty-specific knowledge.

### LLM-as-a-Clinical-Judge
Simulating human expert grading of clinical decisions across five specialties: internal medicine, neurology, cardiology, pulmonology, and gastroenterology.

## Key Results

### Zero-shot Performance
The on-device **gpt-oss-120b** effectively matched the proprietary o4-mini and surpassed DeepSeek-R1 (671B parameters) in general diagnosis. In ophthalmology, gpt-oss-120b **outperformed both GPT-5 and o4-mini**.

### Fine-tuning
Fine-tuning the smaller **gpt-oss-20b** on general radiology data produced a remarkable accuracy jump:

- **77.3% → 86.5%** diagnostic accuracy
- Outperformed DeepSeek-R1 and o4-mini
- Approached GPT-5 performance (88.9%)

This is significant: a 20B parameter model, runnable on a single consumer GPU, achieving near-SOTA clinical performance after domain-specific fine-tuning.

### Clinical Judgment
On-device models proved to be **stable and reliable clinical judges**, aligning closely with human expert scores and exhibiting greater stability than proprietary alternatives.

## Implications

On-device LLMs represent a practical path to deploying AI in clinical settings where:

- **Patient data cannot leave the institution** (privacy regulations, institutional policy)
- **Internet connectivity is unreliable** (rural clinics, disaster response)
- **Cost constraints** prohibit ongoing API fees at scale
- **Latency requirements** demand immediate responses

The fine-tuning results suggest that relatively small, efficient models can achieve clinical-grade performance when adapted to specific medical domains.

## Links

- Paper: [arxiv.org/abs/2601.03266](https://arxiv.org/abs/2601.03266)

## Authors

**Alif Munim**, Jichen Ma, Omar Ibrahim, Ahmed Abdalla, Shuo Yin, Leo Chen, Bo Wang
