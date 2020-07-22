class GameSerializer < ActiveModel::Serializer
    attributes :id, :memorable_string_name, :final_score
    has_many :deals
end
