FROM python:3

CMD ["python installation"]

RUN pip install requests

RUN pip install pytest

RUN pip install pytest-bdd
