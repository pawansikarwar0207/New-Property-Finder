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

//= require toastr_rails


// $(function(){
// 	$("#show-tel").on("click", function(){
// 		var $this = $(this);
// 		$this.find("span").text($this.data("telephone"));
// 	});
// });
