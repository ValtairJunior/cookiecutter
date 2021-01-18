# deve conter todos os comandos utilizados na execuçao desenvolvimento da aplicaçao
all:

sos_1.0: 
	cd Projects/Risc/Sos/sos-1.0; code .; pipenv shell

create_environment:
	mkdir src ; touch .gitignore; touch docker-compose.yml; touch Dockerfile ; 
	touch LICENSE ; touch README.md; touch makefile ; touch requirements.txt;
	mkdir src/app; mkdir src/database; mkdir src/docs; mkdir src/instance; 
	mkdir src/test; touch src/run.py; mkdir src/app/controllers; mkdir src/app/errors;
	mkdir src/app/middlewares; mkdir src/app/models; mkdir src/app/views;
	mkdir src/app/views/static; mkdir src/app/views/templates; touch src/app/__init__.py; 
	touch src/app/controllers/__init__.py; touch src/app/errors/__init__.py;
	touch src/app/middlewares/__init__.py; touch src/app/models/__init__.py;
	touch src/instance/__init__.py; touch src/instance/config.py; tree

pipenv:
	pipenv --three; pipenv shell

pipenv_installs:
	pipenv install Flask; pipenv install Flask-SQLAlchemy; pipenv install Flask-Login; 
	pipenv install Flask-Mail ; pipenv install Flask-Migrate; pipenv install Flask-WTF;
	pipenv install PyJWT; pipenv install passlib; pipenv install SQLAlchemy;
	pipenv install Flask-WeasyPrint; pipenv graph

pipenv_dev_package:
	pipenv install --dev black; pipenv graph

run_dev:
	export FLASK_APP=src/run.py ; export FLASK_ENV=development ; flask run 

