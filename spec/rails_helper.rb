ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rails'
# Add additional requires below this line. Rails is not loaded until this point!

Capybara.app_host = 'http://example.com'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
    
  config.infer_spec_type_from_file_location!

  config.include Rails.application.routes.url_helpers

  config.filter_rails_from_backtrace!

  config.after(:each) do
  	Apartment::Tenant.reset
  	#drop_schemas
  end
end
