FROM ubuntu:20.04
RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3 python3-pip python3-dev wget curl zip protobuf-compiler
RUN pip3 -q install pip --upgrade
RUN pip3 install jupyterlab scikit-learn sympy==1.8 skl2onnx onnxruntime==1.9.0 transformers==4.11.3 onnx==1.10.1 pandas coloredlogs==15.0.1 
RUN pip3 install torch==1.9.1+cpu torchvision==0.10.1+cpu torchaudio==0.9.1 -f https://download.pytorch.org/whl/torch_stable.html
RUN mkdir work
WORKDIR /work
Run cd /work
CMD ["jupyter", "lab", "--port=8889", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

