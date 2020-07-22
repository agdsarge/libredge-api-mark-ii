class DealSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :dealer, :deck_permutation, :bid_phase, :bid_history, :contract_content, :contract_ns, :dummy, :trick1, :trick2, :trick3, :trick4, :trick5, :trick6, :trick7, :trick8, :trick9, :trick10, :trick11, :trick12, :trick13
end
