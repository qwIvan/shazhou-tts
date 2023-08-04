FROM python:slim
RUN apt update && apt install -y ffmpeg
RUN pip install openai pywebio xmltodict pydub
ADD tts-web.py .
CMD python tts-web.py
