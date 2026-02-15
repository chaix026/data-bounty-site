---
publishDate: 2024-03-10T00:00:00Z
title: 'Methods in Causal Inference: Synthetic Control vs. Time-Based Regression'
excerpt: A technical comparison of two powerful causal inference techniques for impact assessment.
image: https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80
category: Data Science
tags:
  - causal inference
  - statistics
  - methods
metadata:
  canonical: https://databounty.com/blog/methods-causal-inference
---

## Synthetic Control vs. Time-Based Regression

In the field of causal inference, choosing the right method is crucial for accurate impact assessment. Two popular methods for analyzing time-series data with interventions are Synthetic Control Methods (SCM) and Time-Based Regression (TBR).

### Synthetic Control Methods (SCM)

SCM constructs a counterfactual by weighing a combination of control units that best resemble the treated unit before the intervention. It is particularly useful for case studies where a single unit is treated.

### Time-Based Regression

TBR, often used in marketing mix modeling, relies on the time-series properties of the data itself to forecast a counterfactual.

### Comparison

| Feature | Synthetic Control | Time-Based Regression |
| :--- | :--- | :--- |
| **Data Requirement** | Panel data with control units | Single time-series (mostly) |
| **Assumption** | Parallel trends (implicit) | Structural stability |
| **Use Case** | Policy evaluation, regional tests | Marketing campaigns, temporal shocks |

We discuss the trade-offs and best practices for applying these methods in varying contexts.
