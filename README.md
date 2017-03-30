# SmsMasking

SmsMasking allows you to send SMS messages from your Ruby application using services provided by [www.smsmasking.co.id](http://www.smsmasking.co.id/). Please read the [documentation](http://send.smsmasking.co.id:8080/Web2SMS/contentView.aspx?contentID=API001).

# Disclaimer

This is not official gem of [www.smsmasking.co.id](http://www.smsmasking.co.id/).

# Index

* [Installation](https://github.com/yunanhelmy/sms_masking#installation)
* [Initialize](https://github.com/yunanhelmy/sms_masking#initialize)
* [Send an SMS](https://github.com/yunanhelmy/sms_masking#send-an-sms)
* [Send SMS by Group](https://github.com/yunanhelmy/sms_masking#send-sms-by-group)
* [Add Phone Book](https://github.com/yunanhelmy/sms_masking#add-phone-book)
* [Edit Phone Book](https://github.com/yunanhelmy/sms_masking#edit-phone-book)
* [Delete Phone Book](https://github.com/yunanhelmy/sms_masking#delete-phone-book)
* [Get Contact List](https://github.com/yunanhelmy/sms_masking#get-contact-list)
* [Get Contact List by Group](https://github.com/yunanhelmy/sms_masking#get-contact-list-by-group)
* [Get Complete Data](https://github.com/yunanhelmy/sms_masking#get-complete-data)
* [Find Name](https://github.com/yunanhelmy/sms_masking#find-name)
* [Find Phone Number](https://github.com/yunanhelmy/sms_masking#find-phone-number)
* [Add Group](https://github.com/yunanhelmy/sms_masking#add-group)
* [Edit Group](https://github.com/yunanhelmy/sms_masking#edit-group)
* [Delete Group](https://github.com/yunanhelmy/sms_masking#delete-group)
* [Get List of Group](https://github.com/yunanhelmy/sms_masking#get-list-of-group)
* [Find Group](https://github.com/yunanhelmy/sms_masking#find-group)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sms_masking'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sms_masking

## Usage

### Initialize

```ruby
sms = SmsMasking::Base.new(username: "your_username", password: "your_password")
```

Parameters :

* `mobile` : recipient
* `message` : SMS

### Send an SMS

Purpose : To Send an SMS

Example :

```ruby
sms.send_sms({mobile: "085699999999", message: "your_message"})
```

Parameters :

- `mobile` : recipient number
- `message` : SMS

### Send SMS by Group

Purpose : To Send  SMS to a Group

Example :

```ruby
sms.send_sms_group({group: "My group", msg: "your_message"})
```

Parameters :

* `group` : Group Name
* `message` : SMS

### Add Phone Book

Purpose : Add new contact to phone book

Example :

```ruby
sms.add_phone_book({
  name: "John Doe", 
  mobile: "085699999999", 
  group: "My Group", 
  address: "My Address",
  birth: "19900101",
  desc: "My Description"
})
```

Parameters :

* `name` : Contact Name
* `mobile` : Recipient
* `group` : Contact Group Name
* `address` (optional) : Contact Address
* `birth` (optional) : Contact Birthday (YYYYMMDD)
* `desc` (optional) : Contact Description

### Edit Phone Book

Purpose : Edit existing Contact

Example :

```ruby
sms.edit_phone_book({
  id: 1,
  name: "John Doe", 
  mobile: "085699999999", 
  group: "My Group", 
  address: "My Address",
  birth: "19900101",
  desc: "My Description"
})
```

Parameters :

* `id` : Contact ID Number
* `name` : Contact Name
* `mobile` : Recipient
* `group` : Contact Group Name
* `address` (optional) : Contact Address
* `birth` (optional) : Contact Birthday (YYYYMMDD)
* `desc` (optional) : Contact Description

### Delete Phone Book

Purpose :  Delete existing contact

Example :

```ruby
sms.delete_phone_book({id: 1})
```

Parameters :

* `id` : Contact ID Number

### Get Contact List

```ruby
sms.list_phone_book({
  page: 1, 
  size: 10
})
```

Parameters :

* `page` : Page Number (default=1)
* `size` : number of records per page (default=10)

### Get Contact List by Group

Purpose : To get Contact list by Group Name

```ruby
sms.list_phone_book_by_group({
  page: 1, 
  size: 10,
  group: "My Group"
})
```

Parameters :

* `page` : Page Number (default=1)
* `size` : number of records per page (default=10)
* `group` : Group Name

### Get Complete Data

Purpose : To retrieve contact detail

```ruby
sms.contact_detail({id: 1})
```

Parameters :

* `id` : Contact ID Number

### Find Name

Purpose : To search contact by name

```ruby
sms.find_contact({name: "John Doe"})
```

Parameters :

* `name` : Name to search

### Find Phone Number

Purpose : To search contact by Phone Number

```ruby
sms.find_contact({number: "085699999999"})
```

Parameters :

* `number` : Number to search

### Add Group

Purpose : Add a new Group Name

```ruby
sms.add_group({group: "Group 1"})
```

Parameters :

* `group` : Group Name

### Edit Group

Purpose : Edit an existing Group

```ruby
sms.edit_group({id: 1, group: "My Group 1"})
```

Parameters :

* `group` : Group Name

### Delete Group

Purpose : Delete an existing Group

```ruby
sms.delete_group({id: 1})
```

Parameters :

* `id` : Group ID

### Get List of Group

Purpose : Retrieve list of  existing Group

```ruby
sms.list_group({
  page: 1, 
  size: 10
})

```

Parameters :

* `page` : Page Number (default=1)
* `size` : number of records per page (default=10)

### Find Group

Purpose : Find a Group

```ruby
sms.find_group({group: "My Group 1"})
```

Parameters :

* `group` : Name to search

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yunanhelmy/sms_masking. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

