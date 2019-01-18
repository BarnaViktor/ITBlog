class ApplicationController < ActionController::Base
    before_action :set_default_locale
    protect_from_forgery with: :exception
    layout 'author'

    private
        def set_default_locale
            I18n.default_locale= :hu
        end
end
