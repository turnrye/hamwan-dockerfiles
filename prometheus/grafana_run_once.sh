curl -v -k -X 'POST' -H "Content-Type: application/json" --user 'admin:admin' -d '{
  "name":"prometheus",
  "type":"prometheus",
  "url":"http://prometheus:9090/",
  "access":"proxy",
  "basicAuth":false,
  "isDefault":true
}' http://localhost:3000/api/datasources
curl -v -k -X 'POST' -H "Content-Type: application/json" --user 'admin:admin' -d '{
  "name":"guest",
  "email":"guest@memhamwan.net",
  "login":"guest",
  "password":"guest"
}' http://localhost:3000/api/admin/users
curl -v -k -X 'POST' -H "Content-Type: application/json" --user 'admin:admin' -d '{
  "dashboard": {
    "title": "RouterOS Device",
    "annotations": {
      "list": []
    },
    "editable": true,
    "gnetId": null,
    "graphTooltip": 0,
    "hideControls": false,
    "id": null,
    "links": [],
    "rows": [
      {
        "collapse": false,
        "height": 250,
        "panels": [
          {
            "cacheTimeout": null,
            "colorBackground": false,
            "colorValue": false,
            "colors": [
              "rgba(245, 54, 54, 0.9)",
              "rgba(237, 129, 40, 0.89)",
              "rgba(50, 172, 45, 0.97)"
            ],
            "datasource": null,
            "format": "none",
            "gauge": {
              "maxValue": 100,
              "minValue": 0,
              "show": false,
              "thresholdLabels": false,
              "thresholdMarkers": true
            },
            "id": 5,
            "interval": null,
            "links": [],
            "mappingType": 1,
            "mappingTypes": [
              {
                "name": "value to text",
                "value": 1
              },
              {
                "name": "range to text",
                "value": 2
              }
            ],
            "maxDataPoints": 100,
            "nullPointMode": "connected",
            "nullText": null,
            "postfix": "",
            "postfixFontSize": "50%",
            "prefix": "",
            "prefixFontSize": "50%",
            "rangeMaps": [
              {
                "from": "null",
                "text": "N/A",
                "to": "null"
              }
            ],
            "span": 6,
            "sparkline": {
              "fillColor": "rgba(31, 118, 189, 0.18)",
              "full": false,
              "lineColor": "rgb(31, 120, 193)",
              "show": false
            },
            "tableColumn": "",
            "targets": [
              {
                "expr": "mtxrWlApClientCount{instance=\"$instance\"}",
                "format": "time_series",
                "intervalFactor": 2,
                "refId": "A",
                "step": 600
              }
            ],
            "thresholds": "",
            "title": "Clients Connected",
            "type": "singlestat",
            "valueFontSize": "80%",
            "valueMaps": [
              {
                "op": "=",
                "text": "N/A",
                "value": "null"
              }
            ],
            "valueName": "avg"
          },
          {
            "cacheTimeout": null,
            "colorBackground": false,
            "colorValue": false,
            "colors": [
              "rgba(245, 54, 54, 0.9)",
              "rgba(237, 129, 40, 0.89)",
              "rgba(50, 172, 45, 0.97)"
            ],
            "datasource": null,
            "decimals": 3,
            "format": "hertz",
            "gauge": {
              "maxValue": 100,
              "minValue": 0,
              "show": false,
              "thresholdLabels": false,
              "thresholdMarkers": true
            },
            "id": 6,
            "interval": null,
            "links": [],
            "mappingType": 1,
            "mappingTypes": [
              {
                "name": "value to text",
                "value": 1
              },
              {
                "name": "range to text",
                "value": 2
              }
            ],
            "maxDataPoints": 100,
            "nullPointMode": "connected",
            "nullText": null,
            "postfix": "",
            "postfixFontSize": "50%",
            "prefix": "",
            "prefixFontSize": "50%",
            "rangeMaps": [
              {
                "from": "null",
                "text": "N/A",
                "to": "null"
              }
            ],
            "span": 6,
            "sparkline": {
              "fillColor": "rgba(31, 118, 189, 0.18)",
              "full": false,
              "lineColor": "rgb(31, 120, 193)",
              "show": false
            },
            "tableColumn": "",
            "targets": [
              {
                "expr": "mtxrWlApFreq{instance=\"$instance\"}*1000*1000",
                "format": "time_series",
                "intervalFactor": 2,
                "refId": "A",
                "step": 600
              }
            ],
            "thresholds": "",
            "title": "Frequency",
            "type": "singlestat",
            "valueFontSize": "80%",
            "valueMaps": [
              {
                "op": "=",
                "text": "N/A",
                "value": "null"
              }
            ],
            "valueName": "avg"
          }
        ],
        "repeat": null,
        "repeatIteration": null,
        "repeatRowId": null,
        "showTitle": false,
        "title": "Dashboard Row",
        "titleSize": "h6"
      },
      {
        "collapse": false,
        "height": 250,
        "panels": [
          {
            "aliasColors": {},
            "bars": false,
            "dashLength": 10,
            "dashes": false,
            "datasource": null,
            "fill": 0,
            "id": 2,
            "legend": {
              "avg": true,
              "current": false,
              "hideEmpty": true,
              "hideZero": true,
              "max": false,
              "min": false,
              "show": true,
              "total": false,
              "values": true
            },
            "lines": true,
            "linewidth": 1,
            "links": [],
            "nullPointMode": "null",
            "percentage": false,
            "pointradius": 5,
            "points": false,
            "renderer": "flot",
            "repeat": "mtxrWlRtabAddr",
            "seriesOverrides": [],
            "spaceLength": 10,
            "span": 12,
            "stack": false,
            "steppedLine": false,
            "targets": [
              {
                "expr": "mtxrWlApNoiseFloor{instance=\"$instance\"}",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "Noise floor",
                "refId": "A",
                "step": 30
              },
              {
                "expr": "mtxrWlRtabRxStrengthCh0{instance=\"$instance\",mtxrWlRtabAddr=\"$mtxrWlRtabAddr\"}",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "RX Ch0",
                "refId": "B",
                "step": 30
              },
              {
                "expr": "mtxrWlRtabTxStrengthCh0{instance=\"$instance\",mtxrWlRtabAddr=\"$mtxrWlRtabAddr\"}",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "TX Ch0",
                "refId": "E",
                "step": 30
              },
              {
                "expr": "mtxrWlRtabRxStrengthCh1{instance=\"$instance\",mtxrWlRtabAddr=\"$mtxrWlRtabAddr\"}",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "RX Ch1",
                "refId": "C",
                "step": 30
              },
              {
                "expr": "mtxrWlRtabTxStrengthCh1{instance=\"$instance\",mtxrWlRtabAddr=\"$mtxrWlRtabAddr\"}",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "TX Ch1",
                "refId": "F",
                "step": 30
              },
              {
                "expr": "mtxrWlRtabRxStrengthCh2{instance=\"$instance\",mtxrWlRtabAddr=\"$mtxrWlRtabAddr\"}",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "RX Ch2",
                "refId": "D",
                "step": 30
              },
              {
                "expr": "mtxrWlRtabTxStrengthCh2{instance=\"$instance\",mtxrWlRtabAddr=\"$mtxrWlRtabAddr\"}",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "TX Ch2",
                "refId": "G",
                "step": 30
              }
            ],
            "thresholds": [
              {
                "colorMode": "critical",
                "fill": false,
                "line": true,
                "op": "lt",
                "value": -80
              },
              {
                "colorMode": "warning",
                "fill": false,
                "line": true,
                "op": "lt",
                "value": -75
              },
              {
                "colorMode": "ok",
                "fill": false,
                "line": true,
                "op": "lt",
                "value": -40
              }
            ],
            "timeFrom": null,
            "timeShift": null,
            "title": "Signal for $mtxrWlRtabAddr",
            "tooltip": {
              "shared": true,
              "sort": 0,
              "value_type": "individual"
            },
            "transparent": false,
            "type": "graph",
            "xaxis": {
              "buckets": null,
              "mode": "time",
              "name": null,
              "show": true,
              "values": []
            },
            "yaxes": [
              {
                "format": "dB",
                "label": null,
                "logBase": 1,
                "max": "-40",
                "min": "-100",
                "show": true
              },
              {
                "format": "short",
                "label": null,
                "logBase": 1,
                "max": null,
                "min": null,
                "show": true
              }
            ]
          }
        ],
        "repeat": null,
        "repeatIteration": null,
        "repeatRowId": null,
        "showTitle": false,
        "title": "Dashboard Row",
        "titleSize": "h6"
      },
      {
        "collapse": false,
        "height": 250,
        "panels": [
          {
            "aliasColors": {},
            "bars": false,
            "dashLength": 10,
            "dashes": false,
            "datasource": null,
            "fill": 1,
            "id": 1,
            "legend": {
              "avg": false,
              "current": false,
              "max": false,
              "min": false,
              "show": true,
              "total": false,
              "values": false
            },
            "lines": true,
            "linewidth": 1,
            "links": [],
            "nullPointMode": "null",
            "percentage": false,
            "pointradius": 5,
            "points": false,
            "renderer": "flot",
            "seriesOverrides": [],
            "spaceLength": 10,
            "span": 6,
            "stack": false,
            "steppedLine": false,
            "targets": [
              {
                "expr": "mtxrWlRtabSignalToNoise{instance=\"$instance\"}",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "{{mtxrWlRtabAddr}}",
                "refId": "A",
                "step": 60
              }
            ],
            "thresholds": [],
            "timeFrom": null,
            "timeShift": null,
            "title": "Signal to Noise",
            "tooltip": {
              "shared": true,
              "sort": 0,
              "value_type": "individual"
            },
            "type": "graph",
            "xaxis": {
              "buckets": null,
              "mode": "time",
              "name": null,
              "show": true,
              "values": []
            },
            "yaxes": [
              {
                "format": "dB",
                "label": null,
                "logBase": 1,
                "max": null,
                "min": "0",
                "show": true
              },
              {
                "format": "short",
                "label": null,
                "logBase": 1,
                "max": null,
                "min": null,
                "show": false
              }
            ]
          }
        ],
        "repeat": null,
        "repeatIteration": null,
        "repeatRowId": null,
        "showTitle": false,
        "title": "Dashboard Row",
        "titleSize": "h6"
      },
      {
        "collapse": false,
        "height": 250,
        "panels": [
          {
            "aliasColors": {},
            "bars": false,
            "dashLength": 10,
            "dashes": false,
            "datasource": null,
            "fill": 1,
            "id": 7,
            "legend": {
              "avg": true,
              "current": false,
              "max": false,
              "min": false,
              "show": true,
              "total": false,
              "values": true
            },
            "lines": true,
            "linewidth": 1,
            "links": [],
            "nullPointMode": "null",
            "percentage": false,
            "pointradius": 5,
            "points": false,
            "renderer": "flot",
            "seriesOverrides": [],
            "spaceLength": 10,
            "span": 6,
            "stack": false,
            "steppedLine": false,
            "targets": [
              {
                "expr": "mtxrHlVoltage{instance=\"$instance\"}/10",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "Supply voltage",
                "refId": "A",
                "step": 60
              },
              {
                "expr": "mtxrPOEVoltage{instance=\"$instance\"}/10",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "POE interface {{mtxrPOEInterfaceIndex}}",
                "refId": "B",
                "step": 60
              }
            ],
            "thresholds": [],
            "timeFrom": null,
            "timeShift": null,
            "title": "Power Systems",
            "tooltip": {
              "shared": true,
              "sort": 0,
              "value_type": "individual"
            },
            "type": "graph",
            "xaxis": {
              "buckets": null,
              "mode": "time",
              "name": null,
              "show": true,
              "values": []
            },
            "yaxes": [
              {
                "decimals": 1,
                "format": "volt",
                "label": null,
                "logBase": 1,
                "max": "40",
                "min": "10",
                "show": true
              },
              {
                "format": "short",
                "label": null,
                "logBase": 1,
                "max": null,
                "min": null,
                "show": true
              }
            ]
          },
          {
            "aliasColors": {},
            "bars": false,
            "dashLength": 10,
            "dashes": false,
            "datasource": null,
            "fill": 1,
            "id": 10,
            "legend": {
              "avg": true,
              "current": false,
              "max": false,
              "min": false,
              "show": true,
              "total": false,
              "values": true
            },
            "lines": true,
            "linewidth": 1,
            "links": [],
            "nullPointMode": "null",
            "percentage": false,
            "pointradius": 5,
            "points": false,
            "renderer": "flot",
            "seriesOverrides": [],
            "spaceLength": 10,
            "span": 6,
            "stack": false,
            "steppedLine": false,
            "targets": [
              {
                "expr": "mtxrHlTemperature{instance=\"$instance\"}/10",
                "format": "time_series",
                "intervalFactor": 2,
                "legendFormat": "Temperature",
                "refId": "A",
                "step": 60
              }
            ],
            "thresholds": [],
            "timeFrom": null,
            "timeShift": null,
            "title": "Environmental",
            "tooltip": {
              "shared": true,
              "sort": 0,
              "value_type": "individual"
            },
            "type": "graph",
            "xaxis": {
              "buckets": null,
              "mode": "time",
              "name": null,
              "show": true,
              "values": []
            },
            "yaxes": [
              {
                "decimals": 1,
                "format": "celsius",
                "label": null,
                "logBase": 1,
                "max": null,
                "min": null,
                "show": true
              },
              {
                "format": "short",
                "label": null,
                "logBase": 1,
                "max": null,
                "min": null,
                "show": true
              }
            ]
          }
        ],
        "repeat": null,
        "repeatIteration": null,
        "repeatRowId": null,
        "showTitle": false,
        "title": "Dashboard Row",
        "titleSize": "h6"
      }
    ],
    "schemaVersion": 14,
    "style": "dark",
    "tags": [],
    "templating": {
      "list": [
        {
          "allValue": null,
          "current": {
            "tags": [],
            "text": "r1.mno.memhamwan.net",
            "value": "r1.mno.memhamwan.net"
          },
          "datasource": "prometheus",
          "hide": 0,
          "includeAll": false,
          "label": "Instance",
          "multi": false,
          "name": "instance",
          "options": [],
          "query": "label_values(mtxrLicLevel, instance)",
          "refresh": 1,
          "regex": "",
          "sort": 0,
          "tagValuesQuery": "",
          "tags": [],
          "tagsQuery": "",
          "type": "query",
          "useTags": false
        },
        {
          "allValue": null,
          "current": {
            "text": "All",
            "value": "$__all"
          },
          "datasource": "prometheus",
          "hide": 2,
          "includeAll": true,
          "label": "Client",
          "multi": false,
          "name": "mtxrWlRtabAddr",
          "options": [
            {
              "selected": true,
              "text": "All",
              "value": "$__all"
            }
          ],
          "query": "label_values(mtxrWlRtabRxStrengthCh0{instance=\"$instance\"}, mtxrWlRtabAddr)",
          "refresh": 0,
          "regex": "",
          "sort": 0,
          "tagValuesQuery": "",
          "tags": [],
          "tagsQuery": "",
          "type": "query",
          "useTags": false
        }
      ]
    },
    "time": {
      "from": "now-6h",
      "to": "now"
    },
    "timepicker": {
      "refresh_intervals": [
        "5s",
        "10s",
        "30s",
        "1m",
        "5m",
        "15m",
        "30m",
        "1h",
        "2h",
        "1d"
      ],
      "time_options": [
        "5m",
        "15m",
        "1h",
        "6h",
        "12h",
        "24h",
        "2d",
        "7d",
        "30d"
      ]
    }
  },
  "overwrite": false
}' http://coconut.crw.memhamwan.net:3000/api/dashboards/db
