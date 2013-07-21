class AthleteMailer < ActionMailer::Base
  #default from: "join@whats-up-wellesley.edu"

  def send_profile(athlete)
  	@athlete = athlete
  	@url = 'http://whats-up-wellesley.herokuapp.com/users/verify/' + user.verification_key

  	mail(:to => 'emily4991@gmail.com',
  		 :subject => "New Dreamfuel Athlete",
  		 :from => 'emily4991@gmail.com')
  end
  
end