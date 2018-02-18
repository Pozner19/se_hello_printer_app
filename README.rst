Simple Flask App
================

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć
o Continuous Integration, Continuous Delivery i Continuous Deployment.

- Rozpocząnając pracę z projektem (wykorzystując virtualenv). Hermetyczne środowisko dla pojedyńczej aplikacji w python-ie:

  ::

    source /usr/bin/virtualenvwrapper.sh
    mkdir -p /usr/local/lib /usr/local/bin
    pip install -r requirements.txt
    pip install -r test_requirements.txt

- Uruchamianie applikacji:

  ::

    # jako zwykły program
    python main.py

    # albo:
    PYTHONPATH=. FLASK_APP=hello_world flask run

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html):

  ::
  mv heroku-cli-v6.15.26-5726b6f-linux-x64 /usr/local/lib/heroku

    PYTHONPATH=. py.test
    PYTHONPATH=. py.test  --verbose -s

- Kontynuując pracę z projektem, aktywowanie hermetycznego środowiska dla aplikacji py:

  ::

    source /usr/bin/virtualenvwrapper.sh
    workon wsb-simple-flask-app


- Integracja z TravisCI:

  ::

    ...


Pomocnicze
==========

- Instalacja python virtualenv i virtualenvwrapper:

  ::

    yum install python-pip
    pip install -U pip
    pip install virtualenv
    pip install virtualenvwrapper

- Instalacja docker-a:

  ::

    yum remove docker \
        docker-common \
        container-selinux \
        docker-selinux \
        docker-engine

    yum install -y yum-utils

    yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo

    yum makecache fast
    yum install docker-ce
    systemctl start docker

Materiały
=========

- https://virtualenvwrapper.readthedocs.io/en/latest/


Dodanie monitoringu STATUS CAKE:

.. image:: https://app.statuscake.com/button/index.php?Track=KnXSMCFrDk&Days=1&Design=1" /></a>
    :target: https://www.statuscake.com

Dodawanie monitoringu travis:

.. image:: https://travis-ci.org/Pozner19/se_hello_printer_app.svg?branch=master
    :target: https://travis-ci.org/Pozner19/se_hello_printer_app
