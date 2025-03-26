FROM ubuntu:latest

RUN apt update && apt install -y python3 python3-pip python3-venv
#RUN yum install python39 -y

#creating the venv and installing the flask
RUN python3 -m venv /venv && /venv/bin/pip install flask

#ENV path for default python env
ENV PATH="/venv/bin:$PATH"


EXPOSE 5000

#RUN apt update && apt install -y pyton3-flask

#RUN pip3 install flask

COPY app.py /app.py

ENTRYPOINT [ "python3" , "app.py" ]
