# Toronto Crime DBT Project

## Overview

This project is a [DBT](https://www.getdbt.com/) project that uses the Toronto Crime dataset from the Public Safety Data Portal. The dataset is available [here](https://data.torontopolice.on.ca/datasets/TorontoPS::neighbourhood-crime-rates-open-data/about).


## Installation

### Requirements

- [Docker](https://www.docker.com/)
- [Python](https://www.python.org/downloads/)

This project uses Docker to run the DBT project. To install Docker, follow the instructions [here](https://docs.docker.com/get-docker/).

You can also use GitHub Codespaces to run this project. To do so, click the green button at the top of the page that says "Code" and select "Open with Codespaces". This will open a Codespace with all the required dependencies installed.

### Setup

1. Clone the repository. Skip this step if you are using Codespaces.
```bash
git clone https://github.com/problemxl/dbt-tutorial.git
```

1. Once you have the Dev Container running, open a terminal and run
```bash
task venv
```
This will create a python virtual environment

2. 
```bash
task install-core
```
This will install the core DBT packages needed to run the project

3. 
```bash
python db_load.py
```
This will load the data into the database

4. 
```bash
task setup
```
This will run a couple of DBT commands to setup the project, installing dependencies, seeding the database, and compiling the models

5. 
```bash
dbt run
```
This will run the DBT models. Creating the tables and views in the database






