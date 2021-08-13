# Airspace Rails Challenge

Create an endpoint `GET /foods/:barcode`. Use `:barcode` to look up product information with the 
[Open Food Facts JSON API](https://world.openfoodfacts.org/data). Make the endpoint respond with a JSON payload 
that includes the barcode as well as a description of the product. For example, 
```
GET http://127.0.0.1:3000/foods/049000061017
```
Should return
```
{
  "barcode": "049000061017",
  "product": "Coca-Cola"
}
```
and 
```
GET http://127.0.0.1:3000/foods/099482476885
```
Should return
```
{
  "barcode": "099482476885",
  "product": "Mango almond milk"
}
```
You should be able to use any barcode you find in your cupboard.

## Bonus Challenges
1. Use the configured SQLite database to implement caching for the endpoint
2. Add token authentication to the endpoint

## Hint
The Rails application has everything you need to complete the challenges. You should be able to focus on 
the work and not have to adjust the application environment. In addition there is a failing request spec that you can 
use to test your work. Leave it as-is, make it pass, and you should be in good shape.

## Submitting your work
Please zip up your work and email it back to whomever at Airspace gave you the challenge. In the email please include 
answers to the following:

1. What do you like about your implementation?
2. What do you NOT like about your implementation?

_**Thank you very much for taking the time to complete this challenge!**_ We look forward to your submission.
