FROM ghcr.io/hostinger/hvps-openclaw:latest

USER root

# install python & pip
RUN apt-get update && apt-get install -y python3 python3-pip

# upgrade pip
RUN python3 -m pip install --upgrade pip

# AI + scraping libraries
RUN pip3 install \
    playwright \
    beautifulsoup4 \
    lxml \
    requests \
    fake-useragent \
    readability-lxml \
    duckduckgo-search \
    pandas \
    numpy \
    pillow \
    aiohttp \
    fastapi \
    uvicorn \
    pytesseract

# install browser
RUN python3 -m playwright install chromium

USER node
