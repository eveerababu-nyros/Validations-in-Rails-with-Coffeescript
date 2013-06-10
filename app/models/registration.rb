class Registration < ActiveRecord::Base
	attr_accessible :name,:pwd,:cpwd,:fname,:lname,:propic,:gender,:dob,:country,:phnum
end
