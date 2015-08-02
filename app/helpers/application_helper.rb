module ApplicationHelper

	def flash_card type
		case type
		when "notice"
			"alert-success"
		when "alert"
			"alert-danger"
		else
			""
		end
	end

end