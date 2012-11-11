class ApplicationController < ActionController::Base
 	
	def after_sign_out_path_for(resource)
		ppal_index_path
	end

	 protect_from_forgery
end



