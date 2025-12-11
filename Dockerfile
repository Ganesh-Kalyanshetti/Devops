FROM python:3.10-slim
WORKDIR /home/mca1/Desktop/MCA029/Jenkins-Docker/Web-Application
COPY . .
RUN pipeline --no-cache-dir -r requirement.txt
COPY . .
EXPOSE 5000
CMD ["python","app.py"]
