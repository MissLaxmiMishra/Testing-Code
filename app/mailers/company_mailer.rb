class CompanyMailer < ApplicationMailer
	def send_email_to_address(email)
		@email = email
		mail(to: @email, subject: 'Welcome to SriGorack Company')
    end
end
