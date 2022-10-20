FROM python:3.10.8-alpine

RUN echo "Starting Install" \
  && pip install --upgrade pip \
  && pip install typer prompt_toolkit serial aiohttp pyserial-asyncio pygments pymodbus

ENV SERVER_TYPE=tcp
ENV SERVER_PORT=502
ENV WEB_PORT=80
ENV DEVICE_ID=1

COPY start-server.sh /start-server.sh

ENTRYPOINT ["/start-server.sh"]
