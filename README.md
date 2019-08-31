# Offline Web App
## Using:
### Create React App (v2)
### Rails 5.2 (without webpacker gem)

#### Objective. To develop a proof of concept for:
* having a web application that can function when the server is offline or when network activity is lost.
* Using a javascript front end in the browser to function without the server. We want to be able to save data from the server in the browser as well as enter data into the browser without being connected to the server.
* Using React.js to be able to retain data from the server, so that the browser will be able to display pages using the retained data.
* Using Workbox to be able to be able to save entered data, and then later synchchronize the data with the server when the browser is connected to the server.

####Configuration:
* Standard Rails 5.2 web server, allowing both standard http connection, as well as API connection to a javascript front end.
* Hoping to minimize problems with connectivity by separating the react server from the rails backend.  We want to minimize the issues when there are problems internet connectivity.

#### Developer Setup
* Fork the repo
* clone your fork of the repo
* cd your_repo
* bundle install --without=production
* foreman start -f Procfile.dev
* http://localhost:3100
    * 	Look for Online Yay!!!

