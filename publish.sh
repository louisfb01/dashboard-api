rm -r -f ./dist
npm ci
npm run build
docker build -t coda-hub-dashboard-back:latest .

docker tag coda-hub-dashboard-back:latest coda/coda-hub-dashboard-back:latest
docker push coda/coda-hub-dashboard-back:latest
echo "Finished running script sleeping 30s"
sleep 30