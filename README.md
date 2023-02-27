# ChefApp

Software dependencies and versions being used:
* Ruby version: 3.2.1

* Rails version: 7.0.4.2

* PostgreSQL: 15.2

## Services

The following table lists the features/services our application will include and the best corresponding solution(s) available.  

Feature/Service | Solution
--- | ---
Hosting | [AWS Elastic Beanstalk]() **or** [Netlify](https://www.netlify.com/pricing/) **or** [Railway](https://docs.railway.app/) **or** [Heroku](https://www.heroku.com/pricing)
File Storage | [AWS S3](https://aws.amazon.com/s3/)
Background jobs | [DelayedJob](https://github.com/collectiveidea/delayed_job) **or** [Sidekiq](https://github.com/sidekiq/sidekiq)
CI/CD pipeline | [CircleCI](https://circleci.com/circleci-versus-github-actions/) **or** [GitHub Actions](https://github.com/features/actions)
Site-wide search | [OpenSearch v2.5](https://opensearch.org/docs/2.5/) **or** [Meilisearch v1.0.2](https://docs.meilisearch.com/learn/what_is_meilisearch/overview.html)
Payment processing | [Stripe](https://stripe.com/docs/development) - via [Pay](https://github.com/pay-rails/pay) gem


Ultimately, the best solution we select for our Rails app will depend on several factors:

1. Pricing
2. Ease of use
3. Team member experience
4. Robustness

## Database

We'll be using the popular RDBMS [PostgreSQL](https://www.postgresql.org/docs/15/index.html) (via [pg gem](https://github.com/ged/ruby-pg)), along with [ActiveRecord as our ORM](https://guides.rubyonrails.org/active_record_basics.html), and [ActiveStorage](https://guides.rubyonrails.org/active_storage_overview.html) for managing file uploads.

* Database creation:
```bash
rails db:create
```

* Database initialization:
```bash
rails db:migrate db:seed
```

* Perform **all** tasks: *create*, *load schemas*, and *seed* **all** databases:
```bash
rails db:setup
```

* Drop local database (i.e., will have to *create*, migrate **or** load schema(s), and seed database(s) again):
```bash
rails db:drop
```

* To see list of all available Rails tasks, use:
```bash
rails -T
```


## Payment Proccesing

We'll be using the [Pay gem](https://github.com/pay-rails/pay) to enable payment processing through [Stripe](https://stripe.com/docs/development). 

Instructions for installing `stripe-cli` can be found here: https://stripe.com/docs/stripe-cli



## Helpful commands

### Bundler
* Install gem(s) in Gemfile:
```bash
bundle install
```
* Update gem(s) in Gemfile:
```bash
bundle update
```

### Yarn
* Install *all* packages listed in `package.json`:
```bash
yarn install
```
* Install *specific* package that will be *added* to `package.json`:
```bash
yarn install <PACKAGE_NAME>
```
* Upgrade *all* packages listed in `package.json`:
```bash
yarn upgrade
```
*Note: Yarn uses **upgrade** whereas Bundler uses **update**.*

### Rails
* Return list of *all* Rails routes:
```bash
rails routes
```
* Return list of Rails routes containing specified substring:
```bash
rails routes | grep SUBSTRING
```
* Launch Rails console:
```bash
rails c
```
*Note: Useful for running permanent changes, like purging all ActiveStorage records:*
```ruby
ActiveStorage::Attachment.all.each do |attachment|
  attachment.purge
end
```
* Launch Rails console in sandbox mode:
```bash
rails c --sandbox
```
*Note: Running any code in a **normal** console session will make permanent changes to your local development environment. Conversly, running any code in a **sandbox** console session will undo all changes, as any modification made during a sandbox session will be reverted when the sandbox session is closed.*

## Testing & CI/CD Pipeline

We'll be using the [Minitest](https://guides.rubyonrails.org/testing.html) framework for testing our code via [TDD](https://en.wikipedia.org/wiki/Test-driven_development).

* Run entire test suite:
```bash
rails test
```
Because we're working in a team with four members, we should ideally use some form of continuous integration/deployment pipeline (i.e., CI/CD pipeline).

*CI/CD pipeline information coming soon.*

## Deployment
There will be several unique branches in our project's GitHub repo that will have strict rules in place for merging commits or branches:
* `main` - This is the main branch and essentially will serve as our `main-development`.
* `main-production` - This branch will contain code merged from **`main` only** and this branch will be deployed to our production environment each time a new merge from `main` is introduced.
* `main-staging` if necessary.
* `main-test` if necessary.

*More deployment information coming soon.*