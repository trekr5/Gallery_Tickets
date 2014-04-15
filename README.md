# GalleryTickets

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'gallery_tickets'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gallery_tickets

## Usage

Galleries
=========

To get all galleries:

GalleryTickets::Connect.galleries

To get a specific gallery:

GalleryTickets::Connect.single_gallery

Exhibitions
===========

To get all exhibitions at a particular gallery:

GalleryTickets::Connect.exhibitions

Tickets
=======

To create a ticket:

GalleryTickets::Tickets.create_tickets

To delete a specific ticket:

GalleryTickets::Tickets.delete_tickets



## Contributing

1. Fork it ( https://github.com/[my-github-username]/gallery_tickets/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
