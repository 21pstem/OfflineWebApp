class CreateOfflineTables < ActiveRecord::Migration[5.2]
  def change

    create_table :groups_users do |t|
      # Initial users / groups join table fields
      t.integer :year_id, null: true, default: nil
      t.string :semester, null: false, default: ''
      t.integer :school_id, null: true, default: nil
      t.string :grade, null: false, default: ''
      t.integer :group_id, null: false, default: nil
      t.integer :user_id, null: false, default: nil
      t.string :user_role, null: false, default: ''

      t.timestamps
    end

    create_table :groups_evals do |t|
      # Initial group evaluations table fields
      t.integer :year_id, null: false, default: nil
      t.string :semester, null: false, default: ''
      t.integer :school_id, null: true, default: nil
      t.string :grade, null: false, default: ''
      t.integer :group_id, null: true, default: nil
      t.integer :evaluator_user_id, null: false, default: nil
      t.integer :evaluator_group_user_id, null: false, default: nil
      t.string :portf_plan_rating, null: true, default: nil
      t.string :portf_analysis_rating, null: true, default: nil
      t.string :proto_title, null: true, default: nil
      t.string :proto_rating, null: true, default: nil
      t.string :poster_abstract_rating, null: true, default: nil
      t.string :poster_intro_abstr_rating, null: true, default: nil
      t.string :poster_mat_meth_rating, null: true, default: nil
      t.string :poster_results_rating, null: true, default: nil
      t.string :poster_discussion_rating, null: true, default: nil
      t.string :poster_citation_rating, null: true, default: nil
      t.string :poster_design_rating, null: true, default: nil
      t.string :poster_summary_comments, null: true, default: nil
      t.boolean :rejected, null: false, default: false



      t.timestamps
    end

  end
end
