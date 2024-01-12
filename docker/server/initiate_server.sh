#git clone https://github.com/Big-Data-ETSIT/practica_creativa.git

#wget https://raw.githubusercontent.com/josemariafr-upm/BDFI_final/master/flight_prediction/src/main/scala/es/upm/dit/ging/predictor/MakePrediction.scala
#wget https://raw.githubusercontent.com/josemariafr-upm/BDFI_final/master/docker/docker-compose.yml

#cp MakePrediction.scala practica_creativa/flight_prediction/src/main/scala/es/upm/dit/ging/predictor/MakePrediction.scala

##

sudo apt install -y pip

## SDK INSTALL ##

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 8.0.302-open
sdk install spark 3.3.2
sdk install sbt

## Variables exported for models training ##
export SPARK_HOME=$HOME/.sdkman/candidates/spark/3.3.2/
export JAVA_HOME=$HOME/.sdkman/candidates/java/8.0.302-open

git clone https://github.com/josemariafr-upm/BDFI_final
cd BDFI_final

## MODELS TRAINING ##
## Variables exported for models training ##
export SPARK_HOME=$HOME/.sdkman/candidates/spark/3.3.2/
export JAVA_HOME=$HOME/.sdkman/candidates/java/8.0.302-open
## Requirements installation ##
pip install -r requirements.txt
##  Training ##
python3 resources/train_spark_mllib_model.py .

## Compilation and packaging of .scala
sbt compile
sbt package

docker compose up