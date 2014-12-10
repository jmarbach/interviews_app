source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.7'

# Active Admin allows us to edit the database from the web server
gem 'activeadmin', github: 'gregbell/active_admin'

# Devise is used for authentication of admin users
gem 'devise'

# Password protection
gem "figaro"

# Styling
gem 'bootstrap-sass'
gem 'sass-rails'
gem 'turbolinks'   

# Rich text editing
	#gem 'rich' #-- no longer compatible with Rails 4
	#gem 'paperclip' -- 
gem 'activeadmin-dragonfly', github: 'stefanoverna/activeadmin-dragonfly'
gem 'activeadmin-wysihtml5', github: 'stefanoverna/activeadmin-wysihtml5'


# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: :development

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :assets do
  gem 'uglifier'
end 
