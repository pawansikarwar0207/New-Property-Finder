// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"

import Rails from '@rails/ujs'
Rails.start()

require("trix")
require("@rails/actiontext")

require("./includes/properties");
require ("jquery");

//= require toastr
toastr.success('Successfully signed in. Welcome to Property Finder!');
