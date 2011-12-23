#Kue

Kue is a key value store that uses active-record under the hood.

###What's it mean
K(eyVal)ue 

### Install Kue
rails generate kue:install
rails db:migrate

### Use Kue
Settings a key

```ruby
KueStore[:any_setting_name_you_can_think_of] = "Any object you can dream up"
```

Getting a key
```ruby
KueStore[:any_setting_name_you_can_think_of] 
#returns
=> "Any object you can dream up"
```
