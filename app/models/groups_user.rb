class GroupsUser < ApplicationRecord
  #For scaled up app, GroupsUsers will have_one groups_eval, 
  #and users will have_many groups_users through groups
  has_many :groups_evals, foreign_key: :evaluator_group_user_id
end