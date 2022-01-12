class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def markdown_to_html(markdown_text)
    renderer = Redcarpet::Render::HTML
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(markdown_text).html_safe #html_safe est une vérification rails pour afficher un string contenant du markdown en html
  end

  # app/controllers/application_controller.rb

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
