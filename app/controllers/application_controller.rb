class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  protected

  def setSuccessAlert message
    flash[:success] = message
  end

  def setErrorAlert message
    flash[:danger] = message
  end

  def setWarningAlert message
    flash[:warning] = message
  end

  def setInfoAlert message
    flash[:info] = message
  end

  helper_method :convert_adoc
  def convert_adoc(adoc, header_footer = true, title = nil)

    # asciidoctor manual: http://asciidoctor.org/docs/user-manual/

    content = Asciidoctor.load(adoc, safe: :safe, :header_footer => header_footer)

    content.attributes['source-highlighter'] = 'highlightjs'
    content.attributes['nofooter'] = true

    content.title = title if title.present?

    content.convert.html_safe
  end

  helper_method :is_authenticated?
  def is_authenticated?
    session[:user_id].present?
  end

  helper_method :global_user
  def global_user
    if is_authenticated?
      User.find(session[:user_id])
    end
  end

  helper_method :global_setting
  def global_setting
    Setting.first!
  end

  def slack_notify(message, channel = '#blog')
    if ENV['SLACK_WEBHOOK_URL'].present?
      if @slack_client.blank?
        @slack_client = SlackNotify::Client.new(
            webhook_url: ENV['SLACK_WEBHOOK_URL'],
            channel: channel,
            username: ENV['APP_NAME'],
            #icon_url: 'http://mydomain.com/myimage.png',
            icon_emoji: ':shipit:',
            link_names: 1
        )
      end
      @slack_client.notify message
    end
  end

  private

  def set_locale

    I18n.locale = I18n.default_locale
    logger.debug "* Default locale set to '#{I18n.locale}'"

    logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"

    if request.env['HTTP_ACCEPT_LANGUAGE'].present?
      locale = extract_locale_from_accept_language_header
      I18n.locale = locale if locale.in?(['it', 'en'])
      logger.debug "* Locale set to '#{I18n.locale}'"
    end
  end

  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end
end
