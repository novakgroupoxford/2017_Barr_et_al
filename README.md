# 2017_Barr_et_al

Custom code for the article:
"Endogenous DNA damage mediates the proliferation-quiescence decision via p21 expression"
Alexis R. Barr, Samuel Cooper, Frank S. Heldt, Francesca Butera, Henriette Stoy, Jörg Mansfeld, Bela Novak, Chris Bakal

This repository contains two folders providing custom-made Matlab scripts for cell tracking and feature extraction ('Cell Tracking'), and different versions of the mathematical model used in the article ('Mathematical Modelling').

## Cell Tracking

## Mathematical Modelling

This folder provides the mathematical model used to simulate data shown in Fig. 6 and S7.
The following versions are available:
- **Barr2017_DynamicsOfP21_SBtoolbox**: Deterministic version of the model for the Systems Biology 2 Toolbox (now known as IQM Tools, http://www.intiquan.com/iqm-tools/) for MatLab. This file was used to obtain most of the deterministic simulations in the manuscript and served as a basis for the stochastic implementation.
- **Barr2017_DynamicsOfP21_XPP**: Deterministic version of the model for XPP-Aut (http://www.math.pitt.edu/~bard/xpp/xpp.html). Modified versions of this file were used to create bifurcation diagrams.
- **Barr2017_DynamicsOfP21_SBML**: Deterministic version of the model in the Systems Biology Markup Language (http://sbml.org/Main_Page), level 3 version 1. This file was created from the Copasi version of the model to provide compatibility with other software tools.
- **Barr2017_DynamicsOfP21_Copasi_Deterministic**: Deterministic version of the model for Copasi (http://copasi.org/). Simulating this file re-creates Fig. S7A.
- **Barr2017_DynamicsOfP21_Copasi_Stochastic**: Stochastic version of the model for Copasi (http://copasi.org/). Simulating this file provides a single stochastic realisation of the model. Stochastic simulations in the manuscript were, however, created with a custom-made MatLab implementation of the Stochastic Simulation Algorithm not provided here.
