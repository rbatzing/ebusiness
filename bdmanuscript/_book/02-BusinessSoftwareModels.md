# BUSINESS SOFTWARE MODELS

This chapter will explore some common approaches to model the network of interactions that occur for business processes. These models not only help to provide deeper understanding of the nature of a business process but can facilating the development of systems to collect and analyze the data associated with the process.

## Business Process Model (BPM)

There are many good reasons for using BPMN.[Camunda 2018a]{#Camunda2018a}


* **Recognized Standard:** BPMN is owned by an institution and is supported by many software products. Third party BPMN editors are available in the form of desktop apps like yEd[yWorks 2018]{#YED2018} or online services like Camunda.[Camunda2018b]{#Camunda2018b}

* **Simplicity:** BPMN is based on a system of graphic symbols that easy to learn.

* **Power of expression:** BPMN reduces descriptions of complex process work flows to a graphic model that is easy to grasp.

* **Implementation in IT:** BPMN was developed to support technical implementation of processes ("Process Automation"). The more important IT becomes in a company, the more helpful BPMN can be, especially when process changes can be accomplished by a simple change of line.

A> ### A simple example
A>
A> The idea of a BPMN model is to model a process from the beginning to the end.

A> ![A simple process](images/simpleBPMN.png)

Naming conventions help to improve the readability of the process:

* **Tasks:** described as a [verb] + [object]: *Acquire groceries* is better than *first take care of shopping for groceries*

* **Events:** should be described as something that has already happened *hunger noticed* is better *when I begin to feel hungry*



## Notation

| Symbol| Description|
|-------------|-------------|
|![Start event](images/start-event.png) | Start Event: Start of the process chain |
|![End event](images/end-event.png) | End Event: The end of the process chain |
|![Event message catch](images/event-message-catch.png) | Event Message Catch: wait for a message event |
|![Event message throw](images/event-message-throw.png) | Event Message Throw: sending a message event |
|![Task](images/task.png) | Task: Work to be done |
|![XOR Gateway](images/xor-gateway.png) | XOR Gateway: choice of a action stream |
|![Parallel Gateway](images/parallel-gateway.png) | Parallel Gateway: initiate simulataneous action stream |
|![Parallel Swimlanes](images/swimlanes.png) | Swim lanes: separate the process by roles or actors |








