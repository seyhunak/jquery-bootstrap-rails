# JQuery Bootstrap for Rails 3.1 Asset Pipeline
jquery-bootstrap-rails project integrates most used JQuery plugins for Rails 3.1 Asset Pipeline

## Installing Gem

Include Bootstrap in Gemfile;

    gem 'jquery-bootstrap-rails', :group => :assets

or you can install from latest build;

    gem 'jquery-bootstrap-rails', :git => 'http://github.com/seyhunak/jquery-bootstrap-rails.git'

You can run bundle from command line

    bundle install

## Installing to App
Run generator to install JQuery Bootstrap. You can run generator from command line

    rails g plugins:install

Generator;

    Adds JQuery Bootstrap to Asset Pipeline (application.js)


## Using javascripts (manually)

You have to require (bootstrap.js) in your application.js

    //= require jquery/bootstrap

    or select specific files to include

    //= require jquery/bootstrap/jquery.blockUI
    //= require jquery/bootstrap/jquery.hotkeys
    //= require jquery/bootstrap/jquery.tablesorter
    //= require jquery/bootstrap/jquery.timeago
    //= require jquery/bootstrap/sisyphus.min

    $(document).ready(function(){
      /* Your JQuery plugin javascripts goes here... */
    });


## Plugins
JQuery plugins are bundled;

		JQuery BlockUI
		JQuery Timego
		JQuery Tablesorter
		JQuery Hotkeys
		Sisyphus


## Using With Coffeescript
Using with the CoffeeScript is easy.
Just create a "plugins.js.coffee" file to /app/assets/javascripts/ folder and put lines below. Optionally you can use generator.

    $(document).ready ->
     	$(document).ajaxStart($.blockUI).ajaxStop $.unblockUI
    $(document).ready ->
		    $("abbr.timeago").timeago()
    $(document).ready ->
	    $(".tablesorter").tablesorter()
    $(document).ready ->
		    jQuery(document).bind "keydown", "f1", (evt) ->
			    jQuery("#modal").modal "show", ->
			    false
    $(document).ready ->
      $("form").sisyphus()


## Changelog
<ul>
  <li>First version released</li>
  <li>Added generators</li>
  <li>Added sisyphus</li>
</ul>

## Future
<ul>
  <li>Writing tests (not implemented yet)</li>
</ul>


## Credits
Seyhun Akyürek - seyhunak [at] gmail com

[Follow me on Twitter](http://twitter.com/seyhunak "Twitter")


## Contributors & Patches
None at the moment


## License
Copyright (c) 2011 Seyhun Akyürek

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
