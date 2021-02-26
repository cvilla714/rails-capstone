class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include CurrentUser
end
