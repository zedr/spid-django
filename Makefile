python_version=3
python_cmd=python${python_version}
venv_home=${PWD}/.env
venv_cmd=${python_cmd} -m "venv" ${venv_home}
virtualenv=. .env/bin/activate;
django_home=.env/lib/python3.5/site-packages/django

default: ${django_home}

.env:
	${venv_cmd}
	${virtualenv} pip install -U pip

${django_home}: .env
	${virtualenv} pip install django

clean:
	@rm -rf .env
