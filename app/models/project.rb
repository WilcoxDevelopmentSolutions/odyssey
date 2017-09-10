#-*- tab-width: 2; indent-tabs-mode: nil; x-auto-expand-tabs: true; x-counterpart: ../../tests/spec/models/project_spec.rb; x-typographers-quotes: false; -*-


class Project < ApplicationRecord
  has_many :stories
  has_many :team_members
  has_many :users, through: :team_members
  belongs_to :author, class_name: "User"

	
  def invite_user(user, state=:pending)
  	self.team_members << TeamMember.create( user: user, state: state )
  	self.save
  end
  
  
  # give me the users that are a current part of this project
  # do not return Team Member records, just User records
  def current_users
    (self.team_members.includes(:user).current.collect(&:user) + [ self.author ]).uniq
  end

end
