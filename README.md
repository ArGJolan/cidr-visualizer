# CIDR Visualizer

A tool to visualize your networks with a single static webpage.

## Features
- Colored background of networks
- Colored borders of networks
- Dynamic network range display based on zoom level
- "Dynamic config" by passing your json in B64 in hash of the webpage

## Build / run instructions

```bash
$ cp blocks.example.json blocks.local.json
$ docker build . -t cidr-visualizer
$ docker run -p 8080:80 cidr-visualizer
```

Then visit http://localhost:8080

## Dynamic config

Your config file `my-network.json`:
```json
[
  {
    "block": "10.8.0.0/14",
    "color": "#cccccc",
    "comment": "My House"
  },
  {
    "block": "10.28.0.1/14",
    "color": "#ccffcc",
    "comment": "Linda's House",
    "border": "blue"
  }
]
```

Encode your config file to b64:
```bash
$ cat my-network.json | base64
WwogIHsKICAgICJibG9jayI6ICIxMC44LjAuMC8xNCIsCiAgICAiY29sb3IiOiAiI2NjY2NjYyIsCiAgICAiY29tbWVudCI6ICJNeSBIb3VzZSIKICB9LAogIHsKICAgICJibG9jayI6ICIxMC4yOC4wLjEvMTQiLAogICAgImNvbG9yIjogIiNjY2ZmY2MiLAogICAgImNvbW1lbnQiOiAiTGluZGEncyBIb3VzZSIsCiAgICAiYm9yZGVyIjogImJsdWUiCiAgfQpdCg==
```

Open http://localhost:8080/#WwogIHsKICAgICJibG9jayI6ICIxMC44LjAuMC8xNCIsCiAgICAiY29sb3IiOiAiI2NjY2NjYyIsCiAgICAiY29tbWVudCI6ICJNeSBIb3VzZSIKICB9LAogIHsKICAgICJibG9jayI6ICIxMC4yOC4wLjEvMTQiLAogICAgImNvbG9yIjogIiNjY2ZmY2MiLAogICAgImNvbW1lbnQiOiAiTGluZGEncyBIb3VzZSIsCiAgICAiYm9yZGVyIjogImJsdWUiCiAgfQpdCg==
