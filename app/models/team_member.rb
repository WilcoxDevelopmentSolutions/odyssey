class TeamMember < ApplicationRecord
  belongs_to :user
  belongs_to :project
  enum state: { pending: 0, current: 1, disavowed: 2 }
end
