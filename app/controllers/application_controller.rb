class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  # app/controllers/application_controller.rb
  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample
    
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome =  "lost"
    else
      @outcome = "won"
    end 
    render({ :template => "game_templates/user_rock.html.erb",:layout=>"wrapper.html.erb"  })
  end  
  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome =  "lost"
    else
      @outcome = "won"
    end 
    render({ :template => "game_templates/user_paper.html.erb", :layout=>"wrapper.html.erb" })
  end 
   def play_scissors
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome =  "lost"
    else
      @outcome = "won"
    end 
    render({ :template => "game_templates/user_scissors.html.erb",:layout=>"wrapper.html.erb"  })
  end 
  def homepage
    render({ :template => "game_templates/rules.html.erb", :layout=>"wrapper.html.erb" })
  end 
end

