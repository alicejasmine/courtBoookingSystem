# Squash Court Booking App

This project serves as the exam project for the Mobile Development and Fullstack courses, in the 4th semester Computer Science course at EASV. The developed application has a .NET backend with PostgreSQL database and a Flutter frontend, which allows the app to work both as a web app and a mobile app.
WebSockets (Fleck library) are used to facilitate real-time communication between the backend and the frontend.

## Project Overview

The idea of the project is an app where club members can book courts to play squash. The idea came from looking at my local squash club website. I wanted to create a mobile app for booking courts, which shows users only the available courts, simplifying the user interface.

## Features

- **User registration and authentication**: the user can register, log in and log out
- **Court booking**: the user can available courts on a selected date and book a slot.
- **User bookings**: the user can see their upcoming bookings and delete them 
- **Club information**: the user can view information about the club 

Error handling was implemented to show the user error or confirmation messages.
Transactions were used for the court booking creation/deletion and related court availability update; this way actions are either both completed or none is, to ensure data consistency and integrity. 

## Database
The database schema is presented below

![final schema](https://github.com/alicejasmine/courtBoookingSystem/assets/82236372/ceb5a950-a67f-411f-a9a2-84f85d56dc4c)




## Tests

**Backend Unit Tests**: unit tests were added to validate the functionality of the court booking system within the backend. These tests ensure the system behaves as expected in various scenarios, including successful booking, handling booking conflicts, and deleting bookings. 
These tests are run with a workflow each time code is merged into main or dev branches.

**Frontend Integration Tests**: integration tests were created to ensure that the core functionalities of booking a court and deleting a booking are working correctly. 







