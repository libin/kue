###Kue

Kue is a key value store that uses active-record under the hood.

###What does Kue mean?
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

### Dude there are no spec's!
Yep! This has been extracted out of one of my production application that does have spec's! 
Don't have the time to setup all the test's and spec's for kue. 
I will merge a nice pull request though!
