FROM jupyter/pyspark-notebook:spark-3.1.1

ADD requirements.txt .
RUN pip install -r requirements.txt

RUN echo 'c.NotebookApp.token = ""' >> ~/.jupyter/jupyter_notebook_config.py
RUN echo 'c.NotebookApp.allow_root = True' >> ~/.jupyter/jupyter_notebook_config.py

