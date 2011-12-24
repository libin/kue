###Kue

Kue is a Rails ready key value store that uses active-record under the hood.

###What does Kue mean?
K(eyVal)ue 

###What about real key value stores?
Redis is awesome! But sometimes you just don't want or need the external dependancy!

### How do I install Kue?
Install the gem

    gem install kue (command line)
    gem 'kue'       (gemfile)

Run the generator

    rails generate kue:install
    rake db:migrate

### Use Kue
Set a key and it's value.

```ruby
KueStore[:any_key_name_you_can_think_of] = "Any object you can dream up"
```

Get a value by key.

```ruby
KueStore[:any_key_name_you_can_think_of] 
```

Don't worry it's not just string value's kue can store for you. It's anything!

```ruby
KueStore[:my_class_instance] = Foo.new(:name => 1)
```

Find out if a key exists?

```ruby
KueStore.exists?(:my_class_instance)
```


### WTF dude there are no spec's?!?
Yep! This has been extracted out of one of my production applications that does have specs! 
Don't have the time to setup all the tests and specs for kue. 
I will merge a nice pull request though!
