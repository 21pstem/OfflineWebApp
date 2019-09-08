class GroupEval < ApplicationRecord
	belongs_to :groups_user, foreign_key: :evaluator_group_user_id
	def self.instance_method_already_implemented?(method_name)
	  return true if method_name == 'invalid'
	  return true if method_name == 'invalid?'
	  super
	end
end
