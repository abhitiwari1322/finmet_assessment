# Badminton Leagues

A small Rails application to track players and match results for a simple
badminton league.

## Prerequisites

- Ruby (3.x recommended)
- Rails 8.0 (the app uses ActiveRecord migrations for Rails 8)
- PostgreSQL (the app uses the `pg` adapter)
- SQLite may work for quick experiments but the project expects PostgreSQL

## Setup

1. Install dependencies:

   ```bash
   bundle install
   ```

2. Configure your database in `config/database.yml` for PostgreSQL.

3. Create and migrate the database:

   ```bash
   bin/rails db:create
   bin/rails db:migrate
   ```

4. (Optional) Seed the database if `db/seeds.rb` is provided:

   ```bash
   bin/rails db:seed
   ```

5. Start the development server:

   ```bash
   bin/rails server
   ```

Open `http://localhost:3000` in your browser.


## Common tasks

- Run migrations: `bin/rails db:migrate`
- Reset DB (dangerous for production): `bin/rails db:drop db:create db:migrate`

---
Badminton Leagues — simple Rails app for managing players and matches.
