FROM python:3.11-slim
ARG app_path=/root/ai_desgin_project

RUN apt-get update && apt-get install cmake git -y
COPY . $app_path
WORKDIR $app_path
RUN pip install -r requirements.txt

EXPOSE 7860
ENTRYPOINT ["streamlit", "run", "app.py"]
CMD ["--server.port=7860"]
