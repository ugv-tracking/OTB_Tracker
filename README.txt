The project website is http://visual-tracking.net/ and the library will be updated on it.
 
The information for trackers is listed in the file Trackers.txt.

The notes for the folders:
* All the tracking results used in [1] are stored in the folders '.\results\results_SRE_CVPR13' and '.\results\results_TRE_CVPR13'.
* The annotation files (bounding box and attributes) are in the folder '.\anno'.
* The folder '.\initOmit' contains the annotation of frames that are omitted for tracking initialization due to occlusion or out of view of targets.
* The tracking results will be stored in the folder '.\results'.
* The folder '.\rstEval' contains some scripts used to compute the tracking performance or draw the results.
* The folder '.\trackers' contains all the code for trackers
* The folder '.\tmp' is used to store some temporary results or log files.
* The folder '.\util' ontains some scripts used in the main functions.

1.Setup for trackers
	*platform: Windows
	*the 5 vivid trackers and TLD can only run on 32 bit Matlab
	*ASLA depends on vlfeat
	*BSBT, BT, SBT, CPF, Frag, KMS, SMS depend on opencv 1.0
	*MIL depends on IPP 5.0 and opencv 1.0
	*Struck depends on opencv 1.0 and Eigen library
	*LSK depends on MATLAB Compiler Runtime (MCR) 7.16
		location: <matlabroot>\toolbox\compiler\deploy\win32\MCRInstaller.exe
	*CXT depends on opencv 2.4 and the DLLS are included
	*VTD and VTS have GUI so that they cannot be included in our library
2.main functions
	* main_running.m is the main function for the tracking test
		- Note that OPE is the first trial of TRE 
		- It also has the function to validate the results.
	* perfPlot.m is the main function for drawing performance plots.
		- It will call 'genPerfMat.m' to generate the values for plots.
	* drawResultBB.m is the main function for drawing bounding boxes (BBs) of different trackers on each frame	

3.Add DeepKCF into the trackers
    * Keep in minde only tensorflow 1.1 and cudnn 5.1 is supported for the validation. Since the higher version will introduce conflicts.
    * Link Benchmark files into the OTB root holder.
    * cd into the trackers holder, git clone the DeepKCF repo into this holder
    * configre the configTrackers.m in the util holder, this will enable the comparision of the proposed tracker with others.

4.Tensorflow configuration
    * update tensorflwo into r1.1 `sudo pip  install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.1.0-cp27-none-linux_x86_64.whl`
    * use cudnn 5.1, download cudnn 5.1 `https://developer.nvidia.com/rdp/cudnn-download`, and install under the cudnn install direction `http://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html`.
