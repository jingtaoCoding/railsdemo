class ArchivesController < ApplicationController
  def index
    @entries = Entry.all.group_by(&:day)
    # .where(features: true ).order()
  end
end
