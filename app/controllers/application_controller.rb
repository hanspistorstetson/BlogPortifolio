class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :detect_device_variant


  private

  def detect_device_variant
    browser = Browser.new("Some User Agent", accept_language: "en-us")
    request.variant = :mobile if browser.device.mobile?
    request.variant = :desktop if !browser.device.mobile? && !browser.device.tablet?
  end
end
