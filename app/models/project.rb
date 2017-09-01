class Project < ApplicationRecord
  has_many :stories
  has_many :team_members
  has_many :users, through: :team_members

  def current_team_members
    self.team_members.current
  end

end
