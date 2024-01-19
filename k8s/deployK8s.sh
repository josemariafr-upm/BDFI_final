echo "## Creation of 'bdfi' namespace ##"
echo ""
echo ""
kubectl apply -f namespace.yaml
echo ""
echo ""
echo "## Deployment of ZK and Kafka ##"
echo ""
echo ""
kubectl apply -f kafkazk.yaml
echo ""
echo ""
echo "Waiting 10"
sleep 10
echo "## Deployment of MongoDB ##"
echo ""
echo ""
kubectl apply -f mongodb.yaml
echo ""
echo ""
echo "Waiting 10"
sleep 10
echo "## Deployment of Cassandra ##"
echo ""
echo ""
kubectl apply -f cassandra.yaml
echo ""
echo ""
echo "Waiting 50"
sleep 50
echo "## Deployment of Spark ##"
echo ""
echo ""
kubectl apply -f spark.yaml
echo ""
echo ""
echo "Waiting 30"
sleep 30
echo "## Deployment of Flask ##"
kubectl apply -f flask.yaml
