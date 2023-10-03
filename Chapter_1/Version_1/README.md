# PhD chapter 1. Version 1. 

In this repository, you will find the very first attempt to get an automatic information collection system in tennis matches.

This software is based on [YolactEdge: Real-time Instance Segmentation on the Edge](https://github.com/haotian-liu/yolact_edge) by Haotian Liu and Rafael A. Rivera-Soto.
They provide a [Colab Notebook](https://colab.research.google.com/drive/1Mzst4q4Y-SQszIHhlEv1CkT4hwja4GNw?usp=sharing) with a live demo to learn about basic usage to start learning how to use it, so you can use this project on your own device or on the cloub (Google Colab). They also provide another [Colab Notebook](https://colab.research.google.com/drive/1nEZAYnGbF7VetqltAlUTyAGTI71MvPPF?usp=sharing) with TensorRT environment configuration on Colab, just in case you are interested in evaluating YolactEdge with TensorRT. Those 2 Colab notebooks are very good starting points to understand this project.

Usage. To test any video, use the following command.

python3 eval.py --trained_model yolact_edge_54_800000.pth --score_threshold=0.3 --top_k=100 --video_multiframe=2 --trt_batch_size 2 --video=tennis_video.mp4 --use_fp16_tensorrt --display

Where:

**--trained_model** <--- Trained state_dict file path to open. If "interrupt", this will open the interrupt file
<<<<<<< HEAD
**--score_threshold** <---  Detections with a score under this threshold will not be considered. This currently only works in *display* mode
**--top_k** <--- Further restrict the number of predictions to parse
**--video_multiframe** <--- The number of frames to evaluate in parallel to make videos play at higher fps
**--trt_batch_size** <--- Maximum batch size to use during TRT conversion. This has to be greater than or equal to the batch size the model will take during inferece
**--video** <--- A path to a video to evaluate on. Passing in a number will use that index webcam. If the **:output** ending is added, the processed video is saved
**--use_fp16_tensorrt** <---  This replaces all TensorRT INT8 optimization with FP16 optimization when specified
**--display** <--- Whether or not to display masks over bounding boxes
 
 
=======


**--score_threshold** <---  Detections with a score under this threshold will not be considered. This currently only works in *display* mode


**--top_k** <--- Further restrict the number of predictions to parse


**--video_multiframe** <--- The number of frames to evaluate in parallel to make videos play at higher fps


**--trt_batch_size** <--- Maximum batch size to use during TRT conversion. This has to be greater than or equal to the batch size the model will take during inferece


**--video** <--- A path to a video to evaluate on. Passing in a number will use that index webcam. If the **:output** ending is added, the processed video is saved


**--use_fp16_tensorrt** <---  This replaces all TensorRT INT8 optimization with FP16 optimization when specified


**--display** <--- Whether or not to display masks over bounding boxes
 
 
>>>>>>> origin/main
