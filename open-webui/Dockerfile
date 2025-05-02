FROM ghcr.io/open-webui/open-webui:v0.6.5
RUN pip install hf_xet --no-cache-dir
COPY preload.py /preload.py
RUN python /preload.py
EXPOSE 8080
