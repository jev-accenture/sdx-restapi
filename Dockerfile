FROM python:2.7
ADD app/main.py /
RUN pip install flask flask_restful
CMD [ "python", "./main.py" ]
