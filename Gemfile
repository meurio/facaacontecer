source 'https://rubygems.org'
source 'https://rails-assets.org'

# Default ruby version
ruby '2.1.2'

# Latest rails version
gem 'rails', '~> 4.0.3'

# Server related gems
gem 'foreman'  # Start the server using `foreman start`
gem 'puma'
gem 'sidekiq'  # Using sidekiq to perform delayed jobs. LOVE.

# Database-related gems
gem 'pg'
gem 'schema_plus'

# Controller-related gems
gem 'before_actions'

# Template-related gems
gem 'simple_form'
gem 'slim-rails'       # Template engine

# State machine gem
gem 'state_machine'

#gem 'best_in_place'  # Field live-edit

# Payment/Gateway related gems
gem 'mymoip'                    # ~>  https://github.com/Irio/mymoip
gem 'api-moip-assinaturas', git: 'https://github.com/nicolasiensen/api-moip-assinaturas.git', require: 'moip'

# Mailchimp API wraper
gem 'gibbon'

# Model-validation related gems
gem "cpf_validator"                   # validate cpfs
gem 'validates_timeliness', '~> 3.0'  # validate dates/intervals

# Assets related gems
gem 'jquery-rails'
gem 'compass-rails'
gem 'sass-rails', '4.0.2'
gem 'uglifier'
gem 'angularjs-rails'
gem 'jquery-inputmask-rails'
gem 'foundation-rails', '~> 5.1.1.0'
gem 'rails-assets-card'
gem 'rails-assets-tobiasahlin--SpinKit'

# MeuRio UI related gems
gem 'gravatar_image_tag'
gem 'meurio_ui'

group :production, :staging do
  gem 'newrelic_rpm'
  gem 'rails_12factor'
  gem 'heroku-deflater'
end

group :development do
  gem 'mailcatcher'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'colorize'
end

group :test do
  gem 'fabrication'
  gem 'selenium-webdriver'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'shoulda'
  gem 'cpf_cnpj'  # Allow the testing/generation of CPFs
  gem "codeclimate-test-reporter", require: nil

  # Mocking HTTP requests using VCR + Webmock
  gem 'vcr'
  gem 'webmock'
end
