
# FreeDoc

Concurrent de Airbnb pour gérer les promenades de chiens avec Rails. Projet validant du 08/02/2024
- gérer la base de données et les migrations
- gérer les relations entre les tables et les modèles
- faire un seed

## Installation

CLone repository or launch in codespace.

Install dépendencies
```bash
  $ bundle install
```
Install Database : create tables and seed
```bash
  $ rails db:migrate
  $ rails db:seed
```
To launch Rails console
```bash
  $ rails c
```
Print tables in Rails console
```bash
  > tp City.all, :id, :city_name, :dog_ids, :dogsitter_ids, :stroll_ids
  > tp Dog.all, :id, :name, :breed, :city_id, :dogsitter_ids, :stroll_ids
  > tp Dogsitter.all, :id, :first_name, :city_id, :dog_ids, :stroll_ids
  > tp Stroll.all, :date, :city_id, :dog_id, :dogsitter_id
```

