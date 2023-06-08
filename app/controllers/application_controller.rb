class ApplicationController < Sinatra::Base
  set :default_content_json, 'application/json'
    get '/surahs' do
        surahs = Surah.all
        surahs.to_json(include: :verses)
      end
    
      get '/surahs/:id' do
        surah = Surah.find(params[:id])
        surah.to_json(include: :verses)
      end
    
      post '/surahs' do
        surah = Surah.create(name: params[:name])
        surah.to_json
      end
    
      put '/surahs/:id' do
        surah = Surah.find(params[:id])
        surah.update(name: params[:name])
        surah.to_json
      end
    
      delete '/surahs/:id' do
        surah = Surah.find(params[:id])
        surah.destroy
        { message: 'Surah deleted successfully' }.to_json
      end
      
    error ActiveRecord::RecordNotFound do
      { error: 'Record not found' }.to_json
    end
  
    error 500 do
      { error: 'Internal server error' }.to_json
    end
  end