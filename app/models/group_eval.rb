class GroupEval < ApplicationRecord
	def self.instance_method_already_implemented?(method_name)
	  return true if method_name == 'invalid'
	  return true if method_name == 'invalid?'
	  super
	end
end
