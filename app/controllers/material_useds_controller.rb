class MaterialUsedsController < ApplicationController
  def index
    matching_material_useds = MaterialUsed.all

    @list_of_material_useds = matching_material_useds.order({ :created_at => :desc })

    render({ :template => "material_useds/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_material_useds = MaterialUsed.where({ :id => the_id })

    @the_material_used = matching_material_useds.at(0)

    render({ :template => "material_useds/show" })
  end

  def create
    the_material_used = MaterialUsed.new
    the_material_used.idea_id = params.fetch("query_idea_id")
    the_material_used.material_id = params.fetch("query_material_id")

    if the_material_used.valid?
      the_material_used.save
      redirect_to("/material_useds", { :notice => "Material used created successfully." })
    else
      redirect_to("/material_useds", { :alert => the_material_used.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_material_used = MaterialUsed.where({ :id => the_id }).at(0)

    the_material_used.idea_id = params.fetch("query_idea_id")
    the_material_used.material_id = params.fetch("query_material_id")

    if the_material_used.valid?
      the_material_used.save
      redirect_to("/material_useds/#{the_material_used.id}", { :notice => "Material used updated successfully."} )
    else
      redirect_to("/material_useds/#{the_material_used.id}", { :alert => the_material_used.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_material_used = MaterialUsed.where({ :id => the_id }).at(0)

    the_material_used.destroy

    redirect_to("/material_useds", { :notice => "Material used deleted successfully."} )
  end
end
