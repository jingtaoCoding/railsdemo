# Get Started
- [what is rails](https://guides.rubyonrails.org/getting_started.html)



# Rails Router
- Let's start by adding a route to our routes file, `config/routes.rb`, at the top of the `Rails.application.routes.draw` block:
```
    Rails.application.routes.draw do
    get "/articles", to: "articles#index"

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
```

The route above declares that GET /articles requests are mapped to the index action of ArticlesController.


- [rails router](https://guides.rubyonrails.org/routing.html)
  
# Create Controller (and actions)
- `rails generate controller Articles index --skip-routes`
  
  - To create `ArticlesController` and its `index` action, we'll run the controller generator (with the `--skip-routes` option because we already have an appropriate route):