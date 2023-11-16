# Programming Task for Software Engineer role at (GLBRC)

## Description
This application allows users to manage a collection of links to various apps. Users can log in, view a default set of apps, add new ones, and remove them as needed. The project is built with Ruby on Rails and uses a SQLite database.

## Getting Started

### Prerequisites
- Ruby
- Rails
- SQLite (Ensure it is installed on your system)

### Installation



#### Clone the Repository
```bash
git clone https://github.com/Nasseralqutaim/AppHub
cd AppHub
```
#### Install Dependencies
```bash
bundle install
```
### Create and migrate the database
```rails db:create```
```rails db:migrate```

### If using pre-loaded data
```cp db/preloaded_database.sqlite3 db/development.sqlite3```

### Alternatively, if populating data via seeds
```rails db:seed```


### Running the Application
```rails server```




