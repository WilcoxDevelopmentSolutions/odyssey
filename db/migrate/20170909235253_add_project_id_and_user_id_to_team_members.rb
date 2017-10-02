class AddProjectIdAndUserIdToTeamMembers < ActiveRecord::Migration[5.1]
  def change
    add_reference :team_members, :user, foreign_key: true
	add_reference :team_members, :project, foreign_key: true
  end
end
