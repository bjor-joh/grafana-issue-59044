# Readme

## Instructions

To start run: 
```sh
./run.sh
```

The metric generator is [this](https://github.com/brian-brazil/benchmarks/blob/master/expose_many_metrics.go) script built by Brian Brazil. It runs locally outside docker on  `localhost:1234/metrics`

Grafana and prometheus will run inside docker, the prometheus instance is provisioned and will be configured as a datasource at startup. 

## Steps to reproduce issue

1. Go to explore-ui
2. Search for `example_timeseries_total` and run query to get all timeseries for the metric.
3. Search for some other metric such as `prometheus_tsdb_head_samples_appended_total`
4. The prom_ql input text field is laggy
5. Execute the query to search for `prometheus_tsdb_head_samples_appended_total`
6. The prom_ql input text field is snappy again.