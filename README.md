###Kue

Kue is a key value store that uses active-record under the hood.

###What's it mean
K(eyVal)ue 

### Install Kue
rails generate kue:install
rails db:migrate

### Use Kue
Set a key and it's value

```ruby
KueStore[:any_key_name_you_can_think_of] = "Any object you can dream up"
```

Get a value by key

```ruby
KueStore[:any_setting_name_you_can_think_of] 
```
