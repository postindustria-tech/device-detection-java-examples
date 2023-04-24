# 51Degrees Device Detection Engines - Examples

![51Degrees](https://51degrees.com/img/logo.png?utm_source=github&utm_medium=repository&utm_content=readme_main&utm_campaign=java-open-source "Data rewards the curious") **Java Device Detection**

[Developer Documentation](https://51degrees.com/device-detection-java/index.html?utm_source=github&utm_medium=repository&utm_content=documentation&utm_campaign=java-open-source "developer documentation")

## Introduction

These examples are not distributed as maven jars and need to be built by you.

This project contains sub-modules - **console**, giving examples that are intended 
to be run from the command line/console and **web**, illustrating use
of 51Degrees Web/Servlet integration. There is also a **shared** sub-module
containing various helpers for the examples.

Among other things, the examples illustrate:
- use of the fluent builder to configure a pipeline
- use of a configuration options file to configure a pipeline
- use of the cloud device detection service
- use of the on-premise "hash" device detection service
- use of device detection pipeline for off-line processing tasks
- configuring device detection trade-offs between speed and conserving memory

You will require [resource keys](https://51degrees.com/documentation/_info__resource_keys.html)
to use the Cloud API, as described on our website. Get resource keys from
our [configurator](https://configure.51degrees.com/), see our [documentation](https://51degrees.com/documentation/_concepts__configurator.html) on
how to use this.
 
A resource key configured with the properties needed
to run most of the examples can be obtained [here](https://configure.51degrees.com/jqz435Nc). 
To use the resource key in the example it can be supplied as a
command line parameter, pasted into the configuration file (where there is one)
or supplied as either an environment variable or a system
property called "TestResourceKey".

Some cloud examples require an enhanced resource key containing a license key. And some
on-premise examples require you to provide a license key. You can find out about 
resource keys and license keys at our [pricing page](https://51degrees.com/pricing). 

## Examples

The tables below describe the examples available in this repository.

### Cloud

| Example                                | Description                                                                                                                                        |
|----------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| GettingStarted (Console)               | How to use the 51Degrees Cloud service to determine details about a device based on its User-Agent and User-Agent Client Hints HTTP header values. |
| GettingStarted (Web)                   | How to use the 51Degrees Cloud service to determine details about a device as part of a simple Java servlet website.                               |
| Metadata                               | How to access the meta-data that relates to things like the properties populated device detection                                                  |
| TacLookup                              | How to get device details from a TAC (Type Allocation Code) using the 51Degrees cloud service.                                                     |
| NativeModelLookup                      | How to get device details from a native model name using the 51Degrees cloud service.                                                              |

### On-Premise

| Example                  | Description                                                                                                                                                                                                                    |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| GettingStarted (Console) | How to use the 51Degrees on-premise device detection API to determine details about a device based on its User-Agent and User-Agent Client Hints HTTP header values.                                                           |
| GettingStarted (Web)     | How to use the 51Degrees Cloud service to determine details about a device as part of a simple Java servlet website.                                                                                                           |
| Metadata                 | How to access the meta-data that relates to things like the properties populated device detection.                                                                                                                             |
| MatchMetrics             | How to view metrics associated with the properties of processing with a Device Detection engine.                                                                                                                               |
| OfflineProcessing        | Example showing how to ingest a file containing data from web requests and perform detection against the entries.                                                                                                              |
| PerformanceBenchmark     | How to configure the various performance options and run some simple performance tests.                                                                                                                                        |
| UpdateOnStartup          | How to configure the Pipeline to automatically update the device detection data file on startup. Also illustrates 'file watcher'. This will refresh the device detection engine if the specified data file is updated on disk. |