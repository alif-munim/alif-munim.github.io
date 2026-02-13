---
layout:     gwern-post
title:      "Email Speech Act Classification for Task Automation"
date:       2021-08-01
summary:    "Using speech-act theory and deep learning to classify email intents, contributing to IBM Watson Orchestrate."
categories: research nlp
tags:       [NLP, speech-acts, word-embeddings, IBM]
preview:    "A UofT-IBM collaboration applying speech-act theory to deep learning for email intent classification. This work contributed to IBM Watson Orchestrate, which won a CES 2022 Innovation Award."
---

This project was a collaborative effort between the [University of Toronto](https://www.utoronto.ca/) and IBM's [Center for Advanced Studies (CAS)](https://www-01.ibm.com/ibm/cas/) to extend prior work in speech-act theory into the realm of deep learning.

## Background

Speech-act theory, originating from Austin (1962) and Searle (1969), classifies utterances not just by their content but by the *action* they perform: requests, commitments, assertions, declarations. Carvalho & Cohen (2005) adapted this framework to email, defining "email speech acts" --- illocutionary points specific to workplace communication.

## Approach

We built **taxonomic word embeddings** for semantic relatedness, leveraging the hierarchical structure of speech-act categories to learn representations that capture both syntactic and pragmatic similarity between email utterances.

The resulting classifier could identify the intent behind an email --- whether it was a request for action, a commitment, a question, or an informational statement --- enabling downstream automation of task extraction and delegation.

## Impact

Our work culminated in the launch of [IBM Watson Orchestrate](https://www.ibm.com/ca-en/cloud/automation/watson-orchestrate), a natural-language-powered productivity assistant that won a [CES 2022 Innovation Award](https://www.ces.tech/Innovation-Awards/Honorees/2022/Honorees/W/Watson-Orchestrate.aspx).

## Supervision

This research was supervised by [Dr. Eric Yu](https://www.cs.utoronto.ca/) at the University of Toronto.
