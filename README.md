# channelEval: MATLAB Simulation Code for Wireless Communication Performance Evaluation
MATLAB-Based Channel Models Evaluation

## Overview

This MATLAB project implements a unified simulation framework for evaluating the performance of BPSK-based wireless communication systems under various **noise** and **fading** channel conditions. The primary focus is on **bit error rate (BER)** and **outage probability** metrics, enabling side-by-side comparisons between theoretical predictions and simulated results.

The framework consists of modular scripts for modelling signal transmission, channel impairments, and performance evaluation. It facilitates flexible testing across different statistical conditions, contributing to a horizontally consistent performance assessment across diverse scenarios.

## Main Simulation Modules

### 1. Modulation and Transmission
- Generates BPSK symbols: random binary sequence mapped to {-1, +1}.
- Constructs ideal baseband signal for channel transmission.

### 2. Noise Modelling
- **AWGN**: Additive White Gaussian Noise generated with specified noise power.
- **Laplacian Impulsive Noise**: Simulates sparse, bursty noise using a probabilistic masking approach.
- Includes time-domain visualisation and distribution validation (PDF, CDF).

### 3. Fading Channels
- **Rayleigh Fading**: Models multipath scattering with no line-of-sight (LoS).
- **Rician Fading**: Incorporates a dominant LoS component plus multipath.
- Simulates fading sequences and applies complex gain to transmitted signal.

### 4. Random User Deployment
- Models path loss variability by randomly placing users within a circular region.
- Adds large-scale fading component based on distance-dependent attenuation.

### 5. BER and Outage Performance Evaluation
- Computes empirical **Bit Error Rate** over a range of SNR values.
- Computes **Outage Probability** based on SNR thresholds.
- Compares all results with analytical expressions for verification.

### 6. Plotting and Visualisation
- Produces time series plots of noise models.
- Visualises simulated vs theoretical PDF/CDF of noise samples.
- Plots BER and outage curves under various channel conditions.

## Supported Scenarios

| Feature         | Description                           |
|----------------|---------------------------------------|
| Modulation      | BPSK (with scope for extension to QAM) |
| Noise Models    | AWGN, Laplacian impulsive             |
| Fading Models   | Rayleigh, Rician                      |
| Deployment      | Fixed-distance and random user distribution |
| Metrics         | BER, Outage Probability               |
