class IdeasController < ApplicationController
  def index
    matching_ideas = Idea.all

    @list_of_ideas = matching_ideas.order({ :created_at => :desc })

    render({ :template => "ideas/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_ideas = Idea.where({ :id => the_id })

    @the_idea = matching_ideas.at(0)

    render({ :template => "ideas/show" })
  end

  def create
    the_idea = Idea.new
    the_idea.idea_name = params.fetch("query_idea_name")
    the_idea.description = params.fetch("query_description")
    the_idea.idea_image = params.fetch("query_idea_image")
    the_idea.post_status = params.fetch("query_post_status", false)
    the_idea.likes_count = params.fetch("query_likes_count")

    if the_idea.valid?
      the_idea.save
      redirect_to("/ideas", { :notice => "Idea created successfully." })
    else
      redirect_to("/ideas", { :alert => the_idea.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_idea = Idea.where({ :id => the_id }).at(0)

    the_idea.idea_name = params.fetch("query_idea_name")
    the_idea.description = params.fetch("query_description")
    the_idea.idea_image = params.fetch("query_idea_image")
    the_idea.post_status = params.fetch("query_post_status", false)
    the_idea.likes_count = params.fetch("query_likes_count")

    if the_idea.valid?
      the_idea.save
      redirect_to("/ideas/#{the_idea.id}", { :notice => "Idea updated successfully."} )
    else
      redirect_to("/ideas/#{the_idea.id}", { :alert => the_idea.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_idea = Idea.where({ :id => the_id }).at(0)

    the_idea.destroy

    redirect_to("/ideas", { :notice => "Idea deleted successfully."} )
  end
end
