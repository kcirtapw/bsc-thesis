1. Introduction
    * What is a Darknet, effects, features for its users
    * Arising problems from its characteristics
    * name the analysing methods (and 1 sentence explanation)
        * analytic
        * simulation
        * emulation
        * testbed (and/or measurement in real world networks)
    * Advantages of event based large scale simulation and in generell analysability of darknets

2. Darknets
    * Detailed explanation of characteristics
        * (short) what is a P2P overlay; how they differ
        * only connected to people one trusts
        * no (concrete) topology information leakage
    * Implications of those characteristics
    * Survey of existing darknets
        * (historical perspective ?)
        * mainly grouped/sorted by used test/analysing methods
        * implemented/pure theoretical work
    * Recap and explain used metrices and analysis methods

3. My Model
    * Why we chose the simulation based approach
    * Node based with fixed neighbor set
    * Churn model extension with bootstrapping & offline detection
    * Selection of OMNet++ 
    * Implementaion of the Model
        * two simple example routing models
        * randomwalk
            * with n-degree fanout
            * loopdetection
        * flooding

4. Simulation and Analysis
    * Simulation environment
    * Used metrices
        * (average/max) path length
        * sent message count
        * faild routings / requests OR droped packages
    * Q: Scalability of the model/framework
        * Used RAM; RAM RAM and moar RAM
    * Q: Impact of fanout degre at randomwalk on found pathlength
        * comparison to flooding which finds shortest path
    * Q: Probability of path failure on return for churn model

5. Conclusion and Future Work
    * Everything is epic, but.. ;)
    * Implement tested darknets and compare to their tests
    * Implement untested/new nets and improve routing parameters
        * or even decide if algorythm is pratical usefull or not

