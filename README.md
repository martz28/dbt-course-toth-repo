This is a Student Repository for the Udemy's Complete dbt Bootcamp. You can:

1) Either start a codespace and start using dbt right away
2) Or clone this repo with Visual Studio Code and follow the instructions to set up a local dbt environment.

Codespace setup:
<img width="930" height="435" alt="image" src="https://github.com/user-attachments/assets/d7e15ad5-6df6-4651-895a-ea382c4da79c" />

_Note: You don't need to create/activate a virtualenv in the Codespace. Everything has been set up for you._

Have fun! :)  



To install uv
https://docs.astral.sh/uv/getting-started/installation/#standalone-installer
pip install uv

then execute 'uv 'sync' which will make a virtual environment for you.
you always need to re-activate 'source .venv/Scripts/activate' in bash


in virtualenv 'dbt init --skip-profile-setup airbnb'

put the profiles.yml that was auto created with his webpage


then run 'dbt debug' to check the setup.
e.g check connection to snowflake




DeprecationWarning - a dbt bug
When you remove the example definitions from your dbt_project.yml file and run dbt run during the next video, you might see a [WARNING][MissingPlusPrefixDeprecation] warning.



This is a reported bug in dbt and a fix will be released in the next major dbt version. Feel free to ignore this warning.

this project has raw layer -> staging layer (src) -> core layer (dim, fct)



by defalut all models are views

to run models
dbt run
