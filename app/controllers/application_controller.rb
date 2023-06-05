class ApplicationController < Sinatra::Base
    # ...
  
    error ActiveRecord::RecordNotFound do
      { error: 'Record not found' }.to_json
    end
  
    error 500 do
      { error: 'Internal server error' }.to_json
    end
  end