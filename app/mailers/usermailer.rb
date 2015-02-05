class Usermailer < ApplicationMailer
	default from: "jalexy12@example.com"

	def entry_created(project)
		@project = project
		mail(to: "jalexy12@gmail.com", subject: "New entry created in project #{project.name}")
	end
end
