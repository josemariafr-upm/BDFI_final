sudo apt update
sudo apt install -y pip git wget zip unzip

## SDK INSTALL ##

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh" && \
sdk install java 8.0.302-open && \
sdk install spark 3.3.2 && \
sdk install sbt

git clone https://github.com/josemariafr-upm/BDFI_final
cd BDFI_final/

## MODELS TRAINING ##
## Variables exported for models training ##
export SPARK_HOME=$HOME/.sdkman/candidates/spark/3.3.2/
export JAVA_HOME=$HOME/.sdkman/candidates/java/8.0.302-open
## Requirements installation ##
pip install -r requirements.txt
##  Training ##
python3 resources/train_spark_mllib_model.py .

## Compilation and packaging of .scala
cd flight_prediction/
sbt compile
sbt package

## Run docker compose
cd ../docker
sudo docker compose up