# Highcharts Export Server in Docker

### Building
```shell
docker build -t cubetiq/highcharts-export-server . 
```

### Running
```shell
docker run -d --name highcharts-export-server -p 8080:8080 cubetiq/highcharts-export-server
```
The application will run at port 8080 with exposed host port (the left one).

### Testing
Try to test export charts data with export server that we running above.
```shell
curl -H "Content-Type: application/json" -X POST -d '{"infile":{"title": {"text": "Income"}, "xAxis": {"categories": ["01-03-2021", "02-03-2021", "03-03-2021"]}, "series": [{"data": [100.00,250.50,500.00]}]}}' http://yourhost.tld:8080 -o exported.png
```