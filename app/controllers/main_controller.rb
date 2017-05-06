class MainController < ApplicationController
  def index
    @requirement = Requirement.all
    @eventProgress = Event.all.sum("requirement_progress").to_f

    @checkPointReqIDs = Checkpoint.all.pluck(:requirement_id)
    @checkpointProgress = Requirement.where(id: [@checkPointReqIDs]).pluck(:amt_goal).sum

    @progress = @eventProgress + @checkpointProgress
    if @progress < 210
      @tier = 'Needs Improvement'
      @pointsToNext = 210 - @progress
    elsif @progress < 238
      @tier = 'Bronze'
      @pointsToNext = 238 - @progress
    elsif @progress < 260
      @tier = 'Silver'
      @pointsToNext = 260 - @progress
    else
      @tier = 'Gold'
    end

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
