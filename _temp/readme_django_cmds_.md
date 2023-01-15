# This file holds some useful infos, code snippets etc.

# Superadmin account data
username: superadmin
password: T0b$3CReeed089$$$
email: ueberadmin@hoodheld.hh


# Create a project
django-admin startproject rattatui


# Create an (additional) app within the project
python3 manage.py startapp rat_main


# Make the changes to the database to reflect all changes in models.py of the specific Django app in the project etc.
python3 manage.py makemigrations rat_main
python3 manage.py migrate rat_main


# Migrate all Django apps (including predefined apps like admin, auth etc.)
python manage.py migrate


# Create the superuser in the database (migrate all Django apps first... see comment above)
python manage.py createsuperuser


# Activate the Python venv and start the Django Web-Server
cd rattatui
source ./bin/activate
cd rattatui

python3 manage.py runserver


# Access the management shell (e.g., to create objects in the database)
python manage.py shell
# Exit the management shell when active
exit()


## Django's management shell tasks and commands ##

# Create an object (the root admin account, user_id<=10) in the database (to have a sample to work with)
from hood_account.models import HoodAccount

acc_01 = HoodAccount(
    user_name='admin',
    user_id=1,
    biography='At the beginning there was nothing but the admin',
    email='admin@hoodhelp.hh',
    title='MasterAdmin',
    image='img/admin.png'
)
acc_01.save()

# Create the root support account 'support' (10<user_id<=100)
acc_02 = HoodAccount(
    user_name='support',
    user_id=1,
    biography='This is the head of the support crew',
    email='support@hoodhelp.hh',
    title='MasterSupport',
    image='img/support.png'
)
acc_02.save()




