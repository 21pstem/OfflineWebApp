# Offline Web App
## Using:
* Create React App (v2)
* Rails 5.2 (without webpacker gem)

## Objective:
### To develop a proof of concept for:
* having a web application that can function when the server is offline or when network connection is lost.
* Using a javascript front end in the browser to function without the server. We want to be able to save data from the server in the browser as well as enter data into the browser without being connected to the server.
* Using React.js to be able to retain data from the server, so that the browser will be able to display pages using the retained data.
* Using Workbox to be able to be able to save entered data, and then later synchchronize the data with the server when the browser is connected to the server.

## Configuration:
* Standard Rails 5.2 web server, allowing both standard http connection, as well as API connection to a javascript front end.
* Hoping to minimize problems with connectivity by separating the react server from the rails backend.  We want to minimize the issues when there are problems internet connectivity.
* Repo has the create-react-app as a subdirectory (offline_client) of the Rails root.  This is for development convenience (so all code is in the same repository).  This may not be optimal for staging or production deployment, and will be determined later.

## Developer Setup
* Fork the repo
* git clone git@github.com:<yourGithubUsername>/OfflineWebApp.git
* or git clone https://github.com/21pstem/OfflineWebApp.git
* cd OfflineWebApp
* bundle install --without=production
    * may need to do 'gem install bundler'
* foreman start -f Procfile.dev
    * may need to do 'npm install -g foreman'
* http://localhost:3100
    * 	Look for Online Yay!!!

#### What is happening?
* see [Github Project](https://github.com/21pstem/OfflineWebApp/projects/1)  (Kanban style project manager)