# RosCommonModels

This repository contains example models compatible with the [RosTooling](https://github.com/ipa320/ros-model). Its function is to serve as a catalogue of different open source software packages developed for the framework ROS.

All models have been obtained automatically using static code analysis techniques. For further information please check the following repository: [https://github.com/ipa320/ros-model-extractors](https://github.com/ipa320/ros-model-extractors).


The repository has the following structure:

- the [REP](REP) folder contains models obtained from official specifications supported by the ROS community or working groups

- the folder [robots.ros.org](robots.ros.org) contains models obtained with information from the [https://robots.ros.org](https://robots.ros.org) website.

- under [rosdistro](rosdistro) can be found the models obtained automatically from [rosdistro](https://github.com/ros/rosdistro), to automate the extraction we have used the tool [extract_pkgnames_rosdistro.py](https://github.com/ipa320/ros-model-extractors/blob/main/scripts/extract_pkgnames_rosdistro.py) and the following instructions:

```
git clone https://github.com/ipa320/ros-model-extractors
cd ros-model-extractors
docker build --tag=haros_melodic -f melodic/Dockerfile .
docker build --tag=haros_noetic -f noetic/Dockerfile .
docker-compose up
python3 scripts/extract_pkgnames_rosdistro.py
```

In addition to the models obtained automatically, we pretend to use the resul of this large scale analysis of open source software to find common specification patterns and push for the use of common interfaces within the ROS community. To suppot this effort we use a model comparison script [common_pattern_extractor.py](https://github.com/ipa320/ros-model-extractors/blob/main/common_pattern_extractor.py), the resulted patterns are available under [patterns](patterns). 
