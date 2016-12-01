class EntriesController < ApplicationController
  load_and_authorize_resource
  def index
    if can? :manage, Entry
      @entries = Entry.where(:user_id => current_user.id)
    end
    if can? :manage, :all
      @entries = Entry.all
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = current_user.entries.build
  end

  def create
    @entry = current_user.entries.build(entry_params)

    if @entry.save
      redirect_to @entry
    else
      render 'new'
    end
  end

  def update
    @entry = Entry.find(params[:id])

    if @entry.update(entry_params)
      redirect_to @entry
    else
      render 'edit'
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to entries_path
  end

  def overview

  end

  private
  def entry_params
    params.require(:entry).permit(:course_id, :user_id)
  end
end