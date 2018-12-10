FROM python:3.6.0
RUN python -m pip install pipenv
WORKDIR /xbot
COPY Pipfile Pipfile
RUN pipenv install --skip-lock
COPY en_core_web_sm.tar.gz en_core_web_sm.tar.gz
RUN pipenv install en_core_web_sm.tar.gz --skip-lock
RUN pipenv run python -m spacy link en_core_web_sm en --force