FROM jupyter/tensorflow-notebook

USER $NB_UID

RUN pip install --upgrade pip && \
    pip install transformers && \
    pip install pysrt && \
    pip install torch && \
    fix-permissions "/home/${NB_USER}"
