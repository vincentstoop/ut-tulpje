# Online Buurtsuper 't-tulpje

Rails application for an online store featuring a shopping cart, multiple departments and content management capabilities.


## Database Structure

1. Department
  * name:string
  * description:text
  * image_url:string

2. Order
  * total_price:decimal
  * user:references

3. Product
  * name:string
  * description:text
  * reference_number:integer
  * image_url:string
  * video_url:string
  * availability:boolean
  * price:decimal
  * department:references

4. Photo
  * image:string
  * product:references

5. Lineitem
  * quantity:integer
  * unit_price:decimal
  * order:references
  * product:references

6. Profile
  * first_name:string
  * last_name:string
  * street_name:string
  * house_number:integer
  * house_number_addition:string
  * zip_code:string
  * city:string
  * phone_number:string
  * user:references

7. User
  * Devise User Model

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:vincentstoop/ut-tulpje.git
cd ut-tulpje
bundle install
rails db:create db:migrate db:seed
rails server
```
