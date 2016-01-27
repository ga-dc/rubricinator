class RubricSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :name, :links
  # link :self do
  #   href rubric_url(object)
  # end
  def links
    { self: rubric_url(object) }
  end
end
