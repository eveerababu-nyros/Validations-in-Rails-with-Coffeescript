class RegisterController < ApplicationController
  def index
  end
	def success
		#@uname = params[:username]
		#puts "========================================="
		#puts @uname
		#puts "========================================="
		#@pwd = params[:pwd]
		@reg = Registration.new
		@reg.usrname = params[:username]
		@reg.pwd = params[:pwd]
		@reg.cpwd = params[:cpwd]
		@reg.fname = params[:fname]
		@reg.lname = params[:lname]
		@reg.propic = params[:propic]
		@reg.gender = params[:sex]
				#------ generating Date -----
		@day = params[:day]
		@month = params[:month]
		@year = params[:year]
				#------------ Combine the day month year ------
		@totalyear = @day +"-"+@month+"-"+@year
		@reg.dob = @totalyear

			# Gathering all Hobbies --------------------------
		hobby1 = "";
		hobby1 << params[:singing].to_s
		hobby1 << ", " << params[:painting].to_s
		hobby1 << ", " <<  params[:traveling].to_s
		hobby1 << ", " <<  params[:dancing].to_s
		hobby1 << ", " <<  params[:gardening].to_s
		hobby1 <<  params[:other].to_s
		#hobbies = hobby1+","+hobby2+","+hobby3+","+hobby4+","+hobby5+","+hobby6
		@reg.hobbies = hobby1

		@reg.country = params[:country]
		@reg.phone = params[:phnum]
		puts "==============================================="	
		puts @totalyear
		puts "==============================================="
		@val = @reg.save
		puts @val
		if @reg.save
			render "#{Rails.root}/app/views/register/success.html.erb", :layout => false
		else
			render "#{Rails.root}/app/views/register/failuer.html.erb", :layout => false
		end
	end

	def show
		@reg = Registration.find_by_sql("select usrname, propic from registrations where usrname like 'veera'")
			render "#{Rails.root}/app/views/register/show.html.erb", :layout => false
	end
end
