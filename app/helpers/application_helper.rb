module ApplicationHelper
	def bootstrap_class_for(flash_type)
		case flash_type
			when "success"
				"alert-sucess"
			when "error"
				"alert-danger"
			when "alert"
				"alert-warning"
			when "notice"
				"alert-notice"
			else
				flash_type.to_s
		end
	end
end
