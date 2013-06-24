
### What version of Rails are you on?
<ul class="nav nav-pills">
  <li class="active">
    <a href="#2.3">1.x</a>
  </li>
  <li >
    <a href="#3.0">2.3</a>
  </li>
  <li><a href="#3.2">3.0</a></li>
  <li><a href="#3.2">3.1</a></li>
  <li><a href="#4.0">3.2</a></li>
</ul>

<a id="2.3"></a>
## Getting to 2.3
- [ ] get a list of gems (look at require statements using git grep)
- [ ] get a list of find :all and find :one (we'll need to replace those with scopes)
- [ ] Look at your helpers and views -- `remote_form_for` and `remote_link_to` are giveaways to rewrite in UJS
- [ ] Look at your gems --- if you're still in production in Rails 2.3, you'll likely need to upgrade gems to different versions
- [ ] Look at your test suite (if any). Make a set of controller tests that load your page. If RSpec 1.0, integrate with webkit to load every page in the system. This is your sanity check.
- [ ] Look at your Routes file. If it's just a - [controller/action/id] , you're in for a hard time. Eventually we'll remove this and have a proper routing system

<a id="3.0"></a>
## Getting to Rails 3.0
- [ ] git checkout -b oh-noes-here-we-goes
- [ ] Use the [Rails 3.0 upgrade tool](https://github.com/rails/rails_upgrade) [RailsCast](http://railscasts.com/episodes/225-upgrading-to-rails-3-part-1) to overwrite your current application
- [ ] Get your Gemfile in order, attempting to load rails console as you go
- [ ] Update your ActiveRecord queries to the new syntax
- [ ] Loading rails console is a huge deal: Have a {chocolate,whiskey,beers}
- [ ] Let's run that test suite. If you're test unit: yay! If you're rspec, upgrade! (probably best to delete spec/helper and `rails g rspec:install`
- [ ] run your javascript tests (hahahahaha omg I know right?!?!!!)
- [ ] If your pages load, that means you have a somewhat functioning rails 3.0 application. Commit your changes and get it on heroku for your staff/helpers/friends&family to go to
- [ ] Let's talk about Authentication. Don't continue to run `acts_as_authenticatable` or `auth_modules` just because its there. My recommendation: replace with devise and send your users a link to reset their password. This is controversial, as your users will know something's up… but: something IS up, you're not as secure as you need to be
- [ ] Update your mailers to the new syntax (and add tests to cover this case)

<a id="3.2"></a>
## Getting to Rails 3.2
- [ ] upgrade your gem file to 3.2.13
- [ ] Add these [gems](https://gist.github.com/jwo/5499824) to your Gemfile under a new "assets group"
- [ ] Move your public/images to app/assets/images
- [ ] Move your public/stylesheets to app/assets/stylesheets
- [ ] Move your public/javascripts to app/assets/javascripts
- [ ] Go through your stylesheets and look for urls(); if local, replace with
  image-url() (Sass)
- [ ] Remove any layouts that individually call stylesheets and javascripts
- [ ] See if your pages start to break open and swallow you whole
- [ ] Remove jQuery
- [ ] move your JavaScript libs (underscore, etc) to vendor/assets
- [ ] build your application.scss and application.js --- don't put code in these files, just require other files (or load the entire tree)
- [ ] find the problems when you're loading every CSS and JS on every page --- it's very common and you might need to change your application to be nicer
- [ ] Use [RailsDiff](http://railsdiff.org/) to identify additional required configuration changes
- [ ] commit and push to heroku. do a little dance if it loads. ask for feedback

<a id="4.0"></a>
## Getting to 4.0
- [ ] upgrade to your Gemfile to rails 4.0.0.rc1
- [ ] Add turbolinks to your Gemfile and to your application.js (//= require
  turbolinks)
- [ ] Add strong-parameters to your Gemfile -- go through your applications and implement -- [Railscast Pro](http://railscasts.com/episodes/371-strong-parameters)
- [ ] View this talk on caching and see about doing these things
- [ ] Run your app -- if it runs with turblolinks: you are one of the chosen few. If not:
- [ ] add turbo-links-jquery to your Gemfile and try again. If not:
- [ ] remove turbolinks for this application. (keep calm and disable turbo links)
- [ ] What about if you're TOTES into prototype: keep prototyping for now with [prototype-rails](https://github.com/rails/prototype-rails) and jQuery.noconflict
- [ ] What about if you used the hell out of observers: use it with
  [rails-observers](https://github.com/rails/rails-observers)
- [ ] Use [RailsDiff](http://railsdiff.org/) to identify additional required configuration changes

### Let's talk about your database:
- [ ] If you're on MySql, let's change to Postgresql, locally too

### Let's talk about deprecated gems:
- [ ] You have 1 major version before they'll stop working and nobody will care.
- [ ] What about if you're using a gem with no upgrade path: Remove or Replace the feature

### Let's talk about how to prevent this from happening in the future:
- [ ] ABU -- always be upgrading. Use it like this: Hey, what are you doing this monday: Upgrading dude. Always be upgrading.
- [ ] Don't get more than a release behind --- Rails moves quickly and you can be obsolete (no help, no security updates) very quickly.

### Does this process suck?
- YES: OMG SUCKS
- BUT: Rails 4.0 is a flipping dream. If you go back to Rails 2.3 you will hate life. Rails 3.0: less hate, but melancholy. Rails 3.1: you're ok, and glad you're skipping the whole `attr_accessible` things.

## YAY -- What should you do with this list?

- Copy the source code into a [GitHub Issue](http://git.io/gP9AfQ)
- Print it out
