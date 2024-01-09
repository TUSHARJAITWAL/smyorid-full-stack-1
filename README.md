# README


## Setup and Installation
1. Ensure you have Ruby 3.0.0 and Rails 7.0.7 installed on your system.
2. Clone the repository from GitHub.
3. Install the required gems by running `bundle install`.
4. Create and set up the database by running `rails db:create` and `rails db:migrate`.
5. Seed the database with initial data by running `rails db:seed`.

## JavaScript Build

This application uses the cssbundling-rails and jsbundling-rails gems to manage CSS and JavaScript assets. After making changes to your CSS or JavaScript files and with your initial setup, you need to build the app to compile the assets.

To build the app and compile the assets, run the following command:

```bash
  rails css:build && rails javascript:build
```

Also, these assets build uses `yarn` so make sure that you have `yarn` install.

In case javascript function or dropdown click does not work in application please delete the files under the build folder and build the assets running same command.

## Usage
1. Run the Rails server with `rails server`.
2. Access the application in your web browser by visiting `http://localhost:3000/`.

