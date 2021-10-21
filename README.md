# VML2021 Workshop - Inference

This repository contains coding samples for VML 2021 workshop:

https://confluence.eng.vmware.com/pages/viewpage.action?spaceKey=MLPO&title=VML2021+Workshop+Week#VML2021WorkshopWeek-Fast,ScalableandSecureMachineLearningInference:NaZhang

The introductory slides: [vml2021-workshop-inference-nz.pptx](https://onevmw.sharepoint.com/:p:/t/HPCML/EX95sgBPdOxNiTUEYc_D9x4B2CISgu3fkdWNMMJdykGrCg?e=cBgxSb )

## Setup instructions

### Option 1: Use container with Docker
(if your local environment has docker installed. Install instructions:https://docs.docker.com/get-docker/)
```
git clone git@gitlab.eng.vmware.com:nz/vml2021-workshop-inference.git
cd vml2021-workshop-inference 
docker build -t vml2021-workshop-inference-image .
docker run --rm -it -p 8889:8889 -v $(pwd):/work vml2021-workshop-inference-image
```
Then copy the prompt url into your browser  
Note: By default, Docker Mac Desktop only grants 2G memory, which is not enough for this sample code execution. You need to change Docker Desktop Preferences--> Resources --> memory value to larger (I tested 24GB). 

### Option 2: Use virtual environment  
(if your local environment already has python3/pip3 and virtualenv installed. To install virtualenv: pip install virtualenv) 

```
git clone git@gitlab.eng.vmware.com:nz/vml2021-workshop-inference.git
cd vml2021-workshop-inference
virtualenv -p python3 workshop-venv
source workshop-venv/bin/activate
pip install jupyterlab 
jupyter lab 
```
Then copy the prompt url into your browser. You'll need to pip install some packages while executing the notebooks. 

### Option 3: Use [Google Colab](https://research.google.com/colaboratory/) 
(if you have a Google account)
```
git clone git@gitlab.eng.vmware.com:nz/vml2021-workshop-inference.git
```
Upload all files (keep folder structures) to Google Colab. You'll need to pip install some packages while executing the notebooks. 
The benefit of using Google colab is you can leverage GPU. 

