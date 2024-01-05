git clone https://github.com/Big-Data-ETSIT/practica_creativa.git

wget https://raw.githubusercontent.com/josemariafr-upm/BDFI_final/master/flight_prediction/src/main/scala/es/upm/dit/ging/predictor/MakePrediction.scala
wget https://raw.githubusercontent.com/josemariafr-upm/BDFI_final/master/docker/docker-compose.yml

cp MakePrediction.scala practica_creativa/flight_prediction/src/main/scala/es/upm/dit/ging/predictor/MakePrediction.scala

docker compose up