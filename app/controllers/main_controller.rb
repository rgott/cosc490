class MainController < ApplicationController
  def index

    @requirement = Requirement.all
  end

  def academics
    @cat_id = Category.where(:name => 'Academics')
    @section = Section.where(:category =>  @cat_id)
    @requirement = Requirement.where(:section => @section)
  end

  def chapter_management
    @cat_id = Category.where(:name => 'Chapter Management')
    @section = Section.where(:category =>  @cat_id)
    @requirement = Requirement.where(:section => @section)
  end

  def member_development
    @cat_id = Category.where(:name => 'Member Development')
    @section = Section.where(:category =>  @cat_id)
    @requirement = Requirement.where(:section => @section)
  end

  def community_involvement
    @cat_id = Category.where(:name => 'Community Involvement')
    @section = Section.where(:category =>  @cat_id)
    @requirement = Requirement.where(:section => @section)
  end

  def presentation
    @cat_id = Category.where(:name => 'Presentation')
    @section = Section.where(:category =>  @cat_id)
    @requirement = Requirement.where(:section => @section)
  end

end
