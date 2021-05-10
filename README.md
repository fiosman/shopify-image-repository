# Image Repository - Shopify Backend Developer Challenge

This project was created by Fares Osman for the purposes of the Shopify Backend Developer Challenge (Fall 2021).

The vast majority of the work was completed on Sunday, May 9th, 2021. I have a full time job, so it was difficult for me to find time during the week. But I am happy to have hashed out a functional application that is presentable in the limited time I spent on the project. It was also very enjoyable and tested my Ruby on Rails knowledge!

## How to use the application

1. This application uses Ruby therefore it must be installed on your system.
2. Install bundler using gem install bundler
3. cd into the root of the application and bundle install to install all the gems required for the project
4. In your terminal, run rails s to start the server and proceed as directed to http://localhost:3000/

## Technologies Used

1. Ruby on Rails
2. PostgreSQL
3. CSS
4. HTML/ERB
5. RSpec
6. AWS S3

## Features

1. Full authentication using Devise. I reconfigured it to use username for sign up/log in instead of email, for the purposes of this application since it was not deployed to production.
2. Signed in users are able to upload images to S3 service using form data, comment and leave ratings on other users' images, and delete their own images.

## Future Work

If I had the time, I would have likely used Rails only as a API (i.e. views would be basically jbuilder JSON to send to frontend). Instead of rendering views directly using Rails, I would have used React for my front end. However, I am quite content with the UI as is :). Although I wrote some unit tests for all the models in the application, I would like to write some integration tests for the controllers.
