# file: run_application.sh
# function: shell script to run python flask application.py script
# zie https://medium.com/@autoferrit/how-to-use-pyenv-pipenv-for-python-virtual-environments-fe70459a4037

# tgv bug python package setuptools
# zie https://github.com/pypa/pipenv/issues/5075
# export SETUPTOOLS_USE_DISTUTILS=stdlib

pipenv run python application.py 