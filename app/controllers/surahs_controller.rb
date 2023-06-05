class SurahsController < ApplicationController
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
  
end

