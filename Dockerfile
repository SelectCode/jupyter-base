FROM jupyter/scipy-notebook

EXPOSE 8888

RUN pip install jupyterlab \
    ipywidgets \
    plotly \
    requests \
    pandas \
    psycopg2-binary \
    docker \
    jupyter \
    aiohttp[speedups] \
    ipynb \
    voila \
    tqdm \
    faker


RUN jupyter labextension install jupyterlab-plotly@4.10.0 @jupyter-widgets/jupyterlab-manager plotlywidget@4.10.0 @jupyter-voila/jupyterlab-preview
RUN jupyter nbextension enable --py widgetsnbextension

USER ROOT
