# PySpark-Reddit: Engagement Analytics Pipeline

![CI](https://github.com/ok-web-4209/PySpark-Analysis/workflows/CI/badge.svg)
[![Python 3.9+](https://img.shields.io/badge/Python-3.9+-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## 🚀 What it does
Scrapes **11 business/hiring subreddits** for the **last 7 weeks**, enriches each post with NLP features, and exposes:
- correlation heat-maps
- top-10 posts by comments
- word-cloud of trending topics

## 📊 Quick start (Colab or local)
```bash
git clone https://github.com/ok-web-4209/PySpark-Analysis.git
cd PySpark-Analysis
pip install -r requirements.txt
python -m src.data.make_dataset      # fetch posts & comments
python -m src.models.train_model     # correlation + plots
```

## 🗂️ Project layout
```
├── data/
│   ├── raw/                # Parquet from Reddit API
│   ├── processed/          # cleaned features
│   └── external/           # any external CSVs
├── src/
│   ├── data/
│   │   └── make_dataset.py # Reddit scraping
│   ├── models/
│   │   └── train_model.py  # correlation + plots
│   └── utils/
│       └── io.py           # reusable helpers
├── notebooks/
│   └── spark-analysis.ipynb# exploratory notebook
├── tests/                  # pytest tests
├── reports/
│   └── figures/            # auto-generated PNGs
├── requirements.txt
├── setup.py
├── Makefile
├── Dockerfile
├── .github/workflows/ci.yml
└── LICENSE
```

## 🔍 NLP features
- `title_len`, `body_len`, `comment_len`
- VADER & TextBlob sentiment
- keyword extraction (web-dev, hiring tags, etc.)

## 🧪 Tests
```bash
pytest tests/
```

## 📦 Docker
```bash
docker build -t reddit-spark .
docker run --env-file .env reddit-spark
```

## 🤝 Contributing
1. Fork  
2. `make lint`  
3. Pull Request

## License
MIT
