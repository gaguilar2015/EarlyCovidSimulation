# Early Covid Simulation
This repository is the source for a [very early (April 2020) simulation of the COVID-19 outbreaks.](https://sibbz.shinyapps.io/docucovid/) 

The simulation is built using R, RMarkdown and Shiny, resulting in an interactive document where epidemiological parameters may be modified to update an outbreak simulation in realtime.

This simulation was commissioned by the [Pan American Health Organization in Belize](https://github.com/gaguilar2015/EarlyCovidSimulation/blob/main/PAHO_simcovid.pdf), and it uses the “R0” package by Obidia et. al (2015) to produce simulations. The R0 package is an epidemic simulation model built in response to the H1N1 pandemic. The R code used to model the simulation and to create the interactive document is an implementation of the above-linked PAHO documentation.

Of course, since April 2020, much has changed about our knowledge of COVID-19. There have been many new variants and a wealth of data and information. Nevertheless, this early simulation proved to be a good little model for its time, given that it showed policy officials that they were being too optimistic about "flattening the curve". 
