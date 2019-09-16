class GroupsEval < ApplicationRecord
	belongs_to :groups_user, foreign_key: :evaluator_group_user_id
	# def self.instance_method_already_implemented?(method_name)
	#   return true if method_name == 'rejected'
	#   return true if method_name == 'rejected?'
	#   super
	# end
end
