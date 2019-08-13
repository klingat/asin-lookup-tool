<img src="https://i.ibb.co/DR1mW1m/Screen-Shot-2019-08-13-at-11-58-35-AM.png" alt="logo" width="300"/>

-----

### A tool to lookup and save Amazon product's via their ASIN code.

Given an [ASIN](https://www.nchannel.com/blog/amazon-asin-what-is-an-asin-number/), this app can return the product name, category, rank, and dimensions and save the data for you for future reference.  

Please note that this app is a **work in progress**. More details below.

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

# WIP
Please note that this app is a **work in progress**.

Amazon has many different layouts for product pages. Especially when it comes to the Product Details section. Some pages have it set up as a table, some are an unordered list, some are tables but with different columns, etc.

Because this app uses web scraping, there are instances that are not covered and no data will be fetched because the scraper is not scraping the correct element. In that case, an empty string will be displayed for now. The next thing to be added to this app is tests! The tests will need to have a case for each type of product page that Amazon has. The tests will siginificantly improve the robustness of the web scraping.

The #1 solution to this is to use the Amazon Product API, however the goal of this app was NOT to use the Amazon API.


Examples of Amazon products that fully work with this app:
https://www.amazon.com/dp/B002QYW8LW
https://www.amazon.com/dp/B018MWQBVY
https://www.amazon.com/dp/B07PLHCRNC
https://www.amazon.com/dp/B0013BKDO8
https://www.amazon.com/dp/B004L6MPFC


Examples of Amazon products that DO NOT fully work with this app:
(Note: The name of the product will still be scraped, but dimensions, category, and rank will not, due to different product detail layouts. An empty string will be displayed for missing data.)
https://www.amazon.com/dp/B00D89VK3Q
https://www.amazon.com/dp/B07PGZNM34
