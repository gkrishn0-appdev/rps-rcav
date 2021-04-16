class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  # app/controllers/application_controller.rb
  def play_rock
    #write a ton of code in here
    #self.redirect_to("https://www.wikipedia.org")
    #render({ :plain => "Hello, World!" })
    #render({ :html => "<h1>Hello, World!</h1>".html_safe })
    render({ :template => "game_templates/user_rock.html.erb" })
  end 
end

