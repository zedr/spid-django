python_version=3
python_cmd=python${python_version}
venv_home=${PWD}/.env
venv_cmd=${python_cmd} -m "venv" ${venv_home}
virtualenv=. .env/bin/activate;
site_packages=.env/lib/python3.5/site-packages
django_lib=${site_packages}/django
project_lib=${site_packages}/spid

default: ${project_lib}

.env:
	${venv_cmd}
	${virtualenv} pip install -U pip

${django_lib}: .env
	${virtualenv} pip install django

${project_lib}: .env
	${virtualenv} pip install -e .

server:
	${virtualenv} python scripts/manage.py runserver 0:8000

clean:
	@rm -rf .env
