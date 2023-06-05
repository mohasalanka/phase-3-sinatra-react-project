# Implement a serializer to format the data returned by the API endpoints.
require 'active_model_serializers'

class SurahSerializer < ActiveModel::Serializer
    attributes :id, :name, :verse_count
  
    has_many :verses
end
  