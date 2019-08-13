<img src="https://i.ibb.co/DR1mW1m/Screen-Shot-2019-08-13-at-11-58-35-AM.png" alt="logo" width="300"/>

-----

### A tool to lookup and save Amazon product's via their ASIN code.

Please note that this app is a WORK IN PROGRESS.

Given an [ASIN](https://www.nchannel.com/blog/amazon-asin-what-is-an-asin-number/), this app can return the product name, category, rank, and dimensions and save the data for you for future reference. 


## Prerequisites
* Ruby version
```
2.5.1
```
* Rails version
```
5.2.3
```

## Running the app
1. Bundle
  ```
  bundle install
  ```

2. Create database and run migration
  ```
  rake db:create db:migrate
  ```

3. Load demo data (optional)
  ```
  rake db:seed
  ```

4. Run the server
```
rails s
```
App should now be running at your `localhost`

## Using the app
### Saving your first product
Upon loading the app, if you did not load the demo data, then the first screen you will see is the following:

<img src="https://i.ibb.co/ZmxFnNd/Screen-Shot-2019-08-13-at-12-18-51-PM.png" alt="index-page" width="500"/>

This is the page that will display all of your saved products. Click on the button "Add new product" to save your first one.

After clicking the "Add new product" button, you will be redirected to a form page where you can enter the ASIN code of the product you want to save. Let's say you want to save this product (https://www.amazon.com/dp/B002QYW8LW), copy the ASIN code `B002QYW8LW` and enter it in the form.

<img src="https://i.ibb.co/bss7MwN/Screen-Shot-2019-08-13-at-12-23-47-PM.png" alt="index-page" width="500"/>

Then click "Add".

And voila! After clicking "Add" you will be redirected to your newly created product.

<img src="https://i.ibb.co/2PhmBwh/Screen-Shot-2019-08-13-at-1-57-06-PM.png" alt="index-page" width="500"/>

From here you can look at the product on Amazon, or click on "Back to all products" to see a list of your saved products!

Enjoy!

