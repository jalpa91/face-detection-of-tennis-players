# face-detection-of-tennis-players
This is a repo for implementing object detection with pre-trained models (as shown below) on tensorflow.


### Installation

```bash 
git clone git@github.com:Skycatch/ace-detection-of-tennis-players.git

cd ace-detection-of-tennis-players
```
### download tensorflow object detection repo

```cd pace-detection-of-tennis-players```

```git clone https://github.com/tensorflow/models.git ```


### Environment

Install `docker` from here https://docs.docker.com/engine/installation/.

`cd ace-detection-of-tennis-players`

```docker build . -t object-detection```

```docker run -it --rm -v ${PWD}:/usr/src/app object-detection bash```

`cd models/research/`

                           ```protoc object_detection/protos/*.proto --python_out=.```

                           ```export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim```


### Pretrained  Models 

This is a repo for implementing object detection with pre-trained models (as shown below) on tensorflow.

| Model name  | Speed | COCO mAP | Outputs |
| ------------ | :--------------: | :--------------: | :-------------: |
| [ssd_mobilenet_v1_coco](http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_11_06_2017.tar.gz) | fast | 21 | Boxes |
| [ssd_inception_v2_coco](http://download.tensorflow.org/models/object_detection/ssd_inception_v2_coco_11_06_2017.tar.gz) | fast | 24 | Boxes |
| [rfcn_resnet101_coco](http://download.tensorflow.org/models/object_detection/rfcn_resnet101_coco_11_06_2017.tar.gz)  | medium | 30 | Boxes |
| [faster_rcnn_resnet101_coco](http://download.tensorflow.org/models/object_detection/faster_rcnn_resnet101_coco_11_06_2017.tar.gz) | medium | 32 | Boxes |
| [faster_rcnn_inception_resnet_v2_atrous_coco](http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017.tar.gz) | slow | 37 | Boxes |

We are using ssd_inception_v2_coco_11_06_2017 pre-trained model. (Download model in `pretrained_model` directoty )

- make directory `pretrained_model`

(We can use any model we want to use but make sure in `pretrained_model` directory you download the any model and in `training` directory you will put config file for that model.)

- We can configure batchsize and number of classes, according to our hardware configuration. Also replace the variable `PATH_TO_BE_CONFIGURED` in the config file with `pretrained_model/ssd_inception_v2_coco_11_06_2017` also update the train and test.record to point to right directory - in oour case its under `data/` directory.

### Run the demo

`cd models/research/object_detection/`
Open `jupyter notebook`
Open `object_detection_face.ipynb`
- Run the ipython notebook and it would start the web camp and you have to pass the images or video near to webcamp.
