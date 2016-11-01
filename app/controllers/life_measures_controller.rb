class LifeMeasuresController < ApplicationController
  def index
    @life_measures = LifeMeasure.page(params[:page])
  end

  def show
    @life_measure = LifeMeasure.find(params[:id])
  end

  def new
    @life_measure = LifeMeasure.new
  end

  def create
    @life_measure = LifeMeasure.new
    @life_measure.goal_name = params[:goal_name]
    @life_measure.target_frequency = params[:target_frequency]
    @life_measure.time_span = params[:time_span]
    @life_measure.start_date = params[:start_date]
    @life_measure.user_id = params[:user_id]
    @life_measure.times_completed = params[:times_completed]
    @life_measure.category_id = params[:category_id]

    if @life_measure.save
      redirect_to "/life_measures", :notice => "Life measure created successfully."
    else
      render 'new'
    end
  end

  def edit
    @life_measure = LifeMeasure.find(params[:id])
  end

  def update
    @life_measure = LifeMeasure.find(params[:id])

    @life_measure.goal_name = params[:goal_name]
    @life_measure.target_frequency = params[:target_frequency]
    @life_measure.time_span = params[:time_span]
    @life_measure.start_date = params[:start_date]
    @life_measure.user_id = params[:user_id]
    @life_measure.times_completed = params[:times_completed]
    @life_measure.category_id = params[:category_id]

    if @life_measure.save
      redirect_to "/life_measures", :notice => "Life measure updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @life_measure = LifeMeasure.find(params[:id])

    @life_measure.destroy

    redirect_to "/life_measures", :notice => "Life measure deleted."
  end
end
