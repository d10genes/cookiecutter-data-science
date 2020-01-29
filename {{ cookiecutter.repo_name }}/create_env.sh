set -euo pipefail

conda env create -f environment.yml

source activate {{cookiecutter.repo_name}}

jupyter labextension install jupyterlab_vim @jupyterlab/toc @ryantam626/jupyterlab_code_formatter
jupyter lab build --name='{{cookiecutter.repo_name}}'

cd notebooks
jupytext --to ipynb templ.py
cd ..
