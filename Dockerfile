FROM faucet/python3:12.0.0
ENV PYTHON_UNBUFFERED 1
RUN pip install yamllint
WORKDIR /workdir
COPY yamllint.config yamllint.config
ENTRYPOINT ["yamllint"]