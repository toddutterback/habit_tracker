class HabitsController < ApplicationController
  before_action :habit, except: [:index, :new, :create]

  def index
    @habits = Habit.all
  end

  def show
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = current_user.habits.new(habit_params)
    if @habit.save
      redirect_to habits_path
    else
      render :new
    end
  end

  def edit

  end
  
  def update
    if @habit.update(habit_params)
      redirect_to habit_path
    else
      render :edit
    end
  end

  def destroy
    @habit.destroy
    redirect_to habits_path
  end

  private

    def habit_params
      params.require(:habit).permit(:name, :completed, :user_id)
    end

    def habit
      @habit = Habit.find(params[:id])
    end

end
