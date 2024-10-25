# AAHLS Lab#A Dataflow debug and optimization

[Github Source code](https://github.com/Xilinx/Vitis-Tutorials/tree/2022.1/Hardware_Acceleration/Feature_Tutorials/03-dataflow_debug_and_optimization)

[Self-made Slide](https://github.com/kabazoka/NTU-Special-Project-on-AAHLS/blob/main/lab_A/presentation.pdf)

> The aim of this tutorial is to give the user an overview of the techniques available in the Vitis HLS GUI with respect to understanding and debugging the dataflow optimization. You will be working through the Vivado kernel flow in the Vitis tool. For more information, refer to Enabling the Vivado Kernel Flow in the Vitis HLS Flow of the Vitis Unified Software Platform Documentation (UG1416).

## Subtask 1: Dataflow Viewer Basics

[Sub-task 1](https://github.com/Xilinx/Vitis-Tutorials/blob/2022.1/Hardware_Acceleration/Feature_Tutorials/03-dataflow_debug_and_optimization/dataflow_viewer.md)

> The DATAFLOW optimization tries to create task-level parallelism between the various functions in the code on top of the loop-level parallelism where possible. The optimization is done in two parts - first, the compiler infers the parallel tasks and sets up the communication channels and the associated control; second, after the generated RTL design is simulated, you can analyze the performance of the DATAFLOW optimization. Due to this fact, the Dataflow viewer lets you see the dataflow structure inferred by the tool, inspect the channels (FIFO/PIPO), and examine the effect of channel depth on performance. Performance data is then back-annotated to the Dataflow viewer from the co-simulation results. The Dataflow viewer also displays a representation of the dataflow graph structure, showing the different processes and the underlying producer-consumer connections.

> In this lab, you will:
Learn how to bring up the Dataflow viewer for a given dataflow region.
Understand how to use the different features of the Dataflow viewer (both before and after cosimulation).

### Clone the sourcecode and run the script
```
# in bash:
git clone https://github.com/Xilinx/Vitis-Tutorials
cd Vitis-Tutorials/Hardware_accelerators/Feature_Tutorials/03-dataflow_debug_and_optimization03-dataflow_debug_and_optimization/reference-files/dataflow
vitis_hls -p script.tcl
```

* After the Vitis HLS gui pop-up, click on the run command
* After C Simulation and C Synthesis, click on the Dataflow icon in the Synthesis Summary report.

* C Simulation:
![image](https://hackmd.io/_uploads/rJHxxfYkye.png)

* C Synthesis:
![image](https://hackmd.io/_uploads/SkQHlGYykl.png)

* Steps through the dataflow viewer:
![image](https://hackmd.io/_uploads/SJIRBbKkye.png)
![image](https://hackmd.io/_uploads/SJJJLWFJJg.png)
![image](https://hackmd.io/_uploads/ryeraZFyke.png)

* C/RTL Co-Simulation:
    * Enable the Channel (PIPO/FIFO) Profiling checkbox.
![image](https://hackmd.io/_uploads/H1i3gftJ1l.png)

* Result:
![image](https://hackmd.io/_uploads/Skz9ZfF1Je.png)

* View the waveform
    1. Ensure that the Vivado XSIM simulator is chosen.
    2. Select all for the Dump Trace option to trace all ports and signals. Note: This is a small design and so we can dump and trace all the signals. For a large design, this might cause an increased simulation run time as well as the creation of a large waveform database.
    3. Enable the Wave Debug option to interactive launch the XSIM waveform viewer during simulation.
    4. Enable the Channel (PIPO/FIFO) Profiling checkbox.
Click OK.
![image](https://hackmd.io/_uploads/H1uHMftyJg.png)

* Vivado will pop-up
![image](https://hackmd.io/_uploads/SkyuNGtk1x.png)

* View the waveform
![image](https://hackmd.io/_uploads/HJX8FzYy1e.png)

## Subtask 2: FIFO Sizing for Performance and avoiding Deadlocks

> Due to the dynamic nature of the dataflow optimization, and the propensity of different parallel tasks to execute at different rates, it is possible that poorly sized dataflow channels can cause loss of performance and/or deadlock. There are different types of dataflow channels - some are created by the user while some are created by the tool.

### Deadlock Detection and Analysis

[Tutorial](https://xilinx.github.io/Vitis-Tutorials/2022-1/build/html/docs/Hardware_Acceleration/Feature_Tutorials/03-dataflow_debug_and_optimization/fifo_sizing_and_deadlocks.html#deadlock-detection-and-analysis)

> In this lab, you will:
Understand how to use the different features of the dataflow viewer to investigate a deadlock.
Use the FIFO sizing features to resolve the deadlock and improve performance.

* Dynamic Nature of Dataflow Optimization: In dataflow optimization, different parallel tasks may execute at varying rates. Improperly sized FIFO channels can lead to performance degradation or deadlocks.

* Types of Dataflow Channels:
    * FIFO (First-In-First-Out):
	    * User-Created: Streams (e.g., hls::streams and streamed arrays), streams of blocks.
	    * Tool-Created: Scalar propagation FIFOs.
    * PIPO (Parallel-In-Parallel-Out):
	    * User-Created: PIPO channels, input and output ports to the upper level.
	    * Tool-Created: Task Level FIFOs (TLF), which are scalar FIFOs connected to the producer’s done handshake and the consumer’s start handshake. These are inferred automatically by the tool and resemble PIPO channels due to their synchronization mechanism.

![image](https://hackmd.io/_uploads/H1yG3mKkye.png)


```
# in bash:
cd Vitis-Tutorials/Hardware_accelerators/Feature_Tutorials/03-dataflow_debug_and_optimization03-dataflow_debug_and_optimization/reference-files/deadlock
vitis_hls -p script.tcl
```

* After launching the Vitis HLS GUI, run the C simulation and C Synthesis
* Click the dropdown menu next to the green Run command (Run Icon) and select Co-simulation link and then select the Channel (PIPO/FIFO) Profiling option before clicking OK in the window that pops up to run the C/RTL cosimulation. The GUI will automatically launch the Dataflow Viewer as a deadlock is detected in this design (as shown in the following figure).
* Click on the green + command in the Dataflow Graph toolbar menu to expand all channels and sub-processes in the design. Processes that are deadlocked will be shown in red in the graph (as shown below). Channels that are full are displayed with red arrows in the graph, and channels that are empty are displayed with white arrows in the graph. The Channel table will additionally highlight the depth of full or empty channels in red.
* Using both the Cosim Max Depth column and the Depth column, you can see that the first channel that you must resize is the data_channel1 that is between producer proc_1_1_U0 and consumer proc_1_2_U0 processes (as shown in the Producer and Consumer columns).
![image](https://hackmd.io/_uploads/ryzUl4FJJx.png)

### Deadlock Detection and Analysis

* Causes of Deadlocks: Insufficient FIFO or PIPO depths can cause deadlocks, especially when the access patterns of producers and consumers are mismatched.
* Case Studies:
	* Case 1:
	    * Producer: Alternately writes to FIFO1 and FIFO2.
	    * Consumer: Alternately reads from FIFO1 and FIFO2.
	    * Solution: A depth of 1 for both FIFOs avoids deadlocks, with a default depth of 2 optimizing performance.
    * Case 2:
	    * Producer: Writes to FIFO1 N times, then to FIFO2 N times.
	    * Consumer: Alternately reads from FIFO1 and FIFO2.
	    * Solution: FIFO1 requires a depth of N, while FIFO2 benefits from the default depth of 2 for optimal performance.

* Deadlock Detection Tip: Deadlocks due to insufficient FIFO depths typically result in at least one blocked writer. Absence of a blocked writer may indicate design issues, such as non-blocking reads/writes or conditional read/write operations based on empty() and full() states.

### FIFO Sizing Methods

* There are three ways to do this FIFO sizing, and this lab will walk through each one in turn:

    1. Manual FIFO sizing
    2. Global FIFO sizing
    3. Automated FIFO sizing

#### Manual FIFO Sizing:
* Process: Identify deadlocked channels using the Dataflow Viewer and manually increase their depths based on co-simulation reports.
* Back-Annotate: Apply the new FIFO depths to the source code using pragma directives to ensure the settings persist.

#### Global FIFO Sizing:
* Approach: Set all FIFO depths to the maximum value reported by C simulation to prevent deadlocks across the entire design.
* Implementation: Adjust global settings in the Vitis HLS tool to override user FIFO depths based on simulation data.

#### Automated FIFO Sizing:
* Procedure: Utilize an automated algorithm that iteratively increases FIFO depths until performance no longer improves.
* Considerations: While convenient, this method may require multiple co-simulations and might not always converge, potentially resulting in excessively large FIFO depths that need user verification.


## Key Takeaways

* Role of Dataflow Viewer:
    * Visualization: Displays the overall topology of the DATAFLOW region, highlighting the types of channels (FIFO/PIPO) used for communication between tasks.
	* Issue Identification: Facilitates the identification and analysis of deadlocks or performance bottlenecks by examining FIFO sizes and process interactions.
* Application of Co-Simulation Data:
	* FIFO Sizing Guidance: Provides maximum FIFO depths achieved during simulation, aiding in accurate FIFO size adjustments.
	* Deadlock Detection: Automatically identifies processes and channels involved in deadlocks, enabling targeted troubleshooting.
* Impact of FIFO Sizing on Performance:
	* Balanced Data Transfer: Proper FIFO sizing ensures a balanced data transfer rate between producers and consumers, preventing resource blockage and maintaining high performance.
	* Adaptability to Access Patterns: Different access patterns may require varying FIFO depths, necessitating tailored adjustments based on specific design requirements.