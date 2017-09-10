#-*- tab-width: 2; indent-tabs-mode: nil; x-auto-expand-tabs: true; x-counterpart: ../../../app/models/project.rb; x-typographers-quotes: false; -*-


require 'rails_helper'

RSpec.describe Project, type: :model do
	context "Inviting users to participate in a project" do
		it "Project#invite_user creates team member record with pending state" do
		  project = FactoryGirl.create :project_with_author
		  project.invite_user( FactoryGirl.create :user )
		  
		  expect( project.team_members.length ).to be(1)
		  expect( project.team_members.first.state ).to eql( "pending" )
		end
	end
	
	
  context "Getting a project's current users" do
    it "returns objects of type User" do 
    	project = FactoryGirl.create :project_with_author
    	project.invite_user( FactoryGirl.create(:user), :current )
      
      expect( project.current_users.map {|u| u.class.name} ).to eql( ['User', 'User'] )
    end
    
    
  	it "includes the project author" do 
    	project = FactoryGirl.create :project_with_author
    	the_author = project.author
    	expect( the_author ).to be #present
    	expect( project.current_users ).to include( the_author )
  	end
  	
  	
  	it "should include active team members" do 
    	project = FactoryGirl.create :project_with_author
    	project.invite_user( FactoryGirl.create(:user), :current )

			expect( project.current_users.length ).to eql(2)  # author + the one other
  	end
  	
  	it "should not show team members that are Pending (Accepting the Invite)" do
    	project = FactoryGirl.create :project_with_author
    	project.invite_user( FactoryGirl.create(:user), :current )
    	project.invite_user( FactoryGirl.create(:user) )

			expect( project.current_users.length ).to eql(2)  # author + the one other
		end
		
		  	
    it "should not show disavowed team members" do
    	project = FactoryGirl.create :project_with_author
    	project.invite_user( FactoryGirl.create(:user), :current )
    	project.invite_user( FactoryGirl.create(:user), :disavowed )

			expect( project.current_users.length ).to eql(2)  # author + the one other
		end    
  end
end
