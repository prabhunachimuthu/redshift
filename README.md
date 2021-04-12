# odbc-heroku

## NOTE
This buildpack is used for a custom connection to [qunect (ODBC for Quick Base)](https://qunect.com/index.html) .
But you can adapt it for your requirements based on [Buildpack API](https://devcenter.heroku.com/articles/buildpack-api)

## Usage
In order to use this buildpack, you have to add a new one [heroku-buildpack-apt](https://github.com/heroku/heroku-buildpack-apt) .
The buidldpack-apt will install you the libraries for unixodbc & unixodbc-dev.

I used this buildpack for a nodeJs application.

My buildpack list & orders:
1. My first buildpack was [heroku-buildpack-apt](https://github.com/heroku/heroku-buildpack-apt) .
    
    - added in the Aptfile:
    
    ```
    unixodbc
    unixodbc-dev
    ```

2. Second one [heroku/nodejs](https://elements.heroku.com/buildpacks/heroku/heroku-buildpack-nodejs) .

3. Third one [odbc-heroku](https://github.com/codymihai/odbc-heroku) .


You can configure how do you want the credentials of connection, for this example adding ENV variables
 * QUICKBASE_USERNAME
 * QUICKBASE_PASSWORD
 * QUICKBASE_SERVER
