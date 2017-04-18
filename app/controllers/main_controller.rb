class MainController < ApplicationController
  def index
    @requirement = Requirement.all
  end

  def academics
    @cat_id = Category.find_by(name: 'Academics')
    @sections = Section.where(category_id: @cat_id)
    @section_ids = @sections.ids
    @requirement = Requirement.where(section: [@section_ids])
  end

  def chapter_management
    @cat_id = Category.find_by(name: 'Chapter Management')
    @sections = Section.where(category_id: @cat_id)
    @section_ids = @sections.ids
    @requirement = Requirement.where(section: [@section_ids])
  end

  def member_development
    @cat_id = Category.where(:name => 'Member Development')
    @sections = Section.where(category_id: @cat_id)
    @section_ids = @sections.ids
    @requirement = Requirement.where(section: [@section_ids])
  end

  def community_involvement
    @cat_id = Category.where(:name => 'Community Involvement')
    @sections = Section.where(category_id: @cat_id)
    @section_ids = @sections.ids
    @requirement = Requirement.where(section: [@section_ids])
  end

  def presentation
    @cat_id = Category.where(:name => 'Presentation')
    @sections = Section.where(category_id: @cat_id)
    @section_ids = @sections.ids
    @requirement = Requirement.where(section: [@section_ids])
  end

end
