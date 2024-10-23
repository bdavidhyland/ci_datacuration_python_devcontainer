FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye as deps

RUN pip install langchain_community langchain huggingface_hub langchain_huggingface tqdm IPython pandas pypdf

FROM deps as dev

WORKDIR /workspace