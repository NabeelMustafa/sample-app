require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html, :json
  serialization_scope :view_context
  protect_from_forgery with: :exception
end
