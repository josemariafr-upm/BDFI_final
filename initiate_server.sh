## DOCKER ENGINE INSTALL

# Add Docker's official GPG key:
sudo apt-get update
# Install required packages (and additionals needed for later)
sudo apt-get install -y pip git wget zip unzip ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install all docker packages
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

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