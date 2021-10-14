# README

This README would normally document whatever steps are necessary to get the
application up and running.

This project is developed as Interview Task by F22Labs. Main features :
* Devise
* JWT
* JSON API
* Every API call needs accompanying JSON Bearer Token

# Project Setup

1. Clone this repo
2. Run bundle install
3. Run 'rails s'. Once the server is up, pl run the following Curl commands to test.

Signup : (replace email and password with your own)

curl -XPOST -H "Content-Type: application/json" -d '{ "user": { "email": "raj@raj.com", "password": "rajraj" } }' http://localhost:3000/users


login: (replace email and password with your own)

curl -XPOST -i -H "Content-Type: application/json" -d '{ "user": { "email": "raj1@raj.com", "password": "rajraj" } }' http://localhost:3000/users/sign_in

Show all saloons: (For all the curl commands below, please replace token value with the one you obtained above on login)

curl -XGET -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjM0MDI1MDU3LCJleHAiOjE2MzQwMjg2NTcsImp0aSI6Ijc1Y2YzNDFmLWJkZWItNGRiZi05NTI5LWJiNTZlYzQ3MmYxNCJ9.Kbb7q_niP3jii59RiUhaIZrlE7L-QXlPcDy1xPIoT58" -H "Content-Type: application/json" http://localhost:3000/saloonspas

Show one saloon: (replace token value with the one you obtained on login)

curl -XGET -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjM0MDMxMTMyLCJleHAiOjE2MzQwMzQ3MzIsImp0aSI6IjQ4ZDMzM2U5LTIwYzktNDgyMy1iYjljLWE0YjA2ZjA3MWM4YyJ9.O7qrtUoefolitcnsyAX-bCJOVvIX9wF-ylAsT23DF6E" -H "Content-Type: application/json" http://localhost:3000/saloonspas/1

1. Paginated Search for businesses and sort by price (lowest to highest, highest to lowest)

curl -XGET -H "Authorization: BearereyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjM0MDQyNDg4LCJleHAiOjE2MzQwNDYwODgsImp0aSI6IjA3ZDcwMTk5LTgyYzctNGFkZC05MThmLTEyM2JhMmI2ZmI1ZSJ9._CZ7j1b1H390ZyqJXExndHnfhJ2_RYNqQOKreq38PFo" -H "Content-Type: application/json" http://localhost:3000/services

2. List available services and time slots for a particular business

curl -XGET -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjM0MDMyNDkwLCJleHAiOjE2MzQwMzYwOTAsImp0aSI6IjU3ZmMyNGU2LTk0ZWItNDVlMy04YmM3LTRiMmJkM2I4NTIzMSJ9.pOaQJB51NxPCV6AanRJSqUAfQivbRppFSJ4MCisavfE" -H "Content-Type: application/json" http://localhost:3000/saloonspas/1

3. Book a service at a business

curl -XPOST http://localhost:3000/appointments -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjM0MDE4MDM4LCJleHAiOjE2MzQwMjE2MzgsImp0aSI6IjZjNTVmNmExLTM3OTMtNDg0OC1iNThmLTZiOWUwOWZkYTExYSJ9.ZWQxW3useqT8obh5GWcABjS73HwC0rn7hBRVjUxyHvY" -d '{ "apptdate": "2021-10-16", "appttime": "10.15", "client_id": "1","saloonspa_id": "1", "service": "HAIR CUT", "user_id": "3" }' 

# fs-SaloonSpa
