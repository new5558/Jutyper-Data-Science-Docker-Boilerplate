FROM python:3.7

ADD requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
RUN pip install pycaret==2.3
RUN pip install torch==1.4.0a0+a5b4d78

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]