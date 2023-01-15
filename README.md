## Rattatui WebServer
Learn/do cooking in puzzle style and combine your meals from different parts...


# Start the Rattatui web server
Windows: Execute startup batch script: Start_DaHoodHelp.cmd

Linux VM: Execute Bash-Script ''...


# Superadmin account data
Superadmin:		ratadmin
Password:		dkhnr...
Email-Address:	huber.florian@gmx.de


Project name:			rattatui
Sub-Apps in project:	rat_main, 


## Install/configure Python venv
python -m pip install --upgrade setuptools
python -m pip install --upgrade pip
python -m pip install django


## Initial Django configuration 


# Create a project
django-admin startproject rattatui

# Create an (additional) app within the project
cd .\rattatui\
python manage.py startapp rat_main

# Make the changes to the database to reflect all changes in models.py of the specific Django app in the project etc.
# Add Django app 'rat_main' to section 'INSTALLED_APPS = []' in file .\rattatui\settings.py
python manage.py makemigrations rat_main
python manage.py migrate rat_main

# Migrate all Django apps (including predefined apps like admin, auth etc.)
python manage.py migrate

# Create the superuser (see user data above) in the database (migrate all Django apps first... see comment above)
python manage.py createsuperuser



