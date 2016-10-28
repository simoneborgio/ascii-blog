class WelcomeController < ApplicationController

  def index

    redirect_to articles_path

  end

  def test
    filename = "#{Rails.root}/public/example.adoc"

    contents = File.read(filename)

    @text = convert_adoc(contents, 'Test header')

    render layout: 'empty'
  end

end
