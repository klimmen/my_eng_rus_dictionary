class MyDictionariesController < ApplicationController
 before_action :set_my_dictionary, only: [:edit, :update, :destroy]


  # GET /my_dictionaries
  # GET /my_dictionaries.json
  def index
    @lesson = Lesson.find(params[:lesson_id])

  end 

  # GET /my_dictionaries/new
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @my_dictionary = MyDictionary.new
  end

  # GET /my_dictionaries/1/edit
  def edit
    @lesson = Lesson.find(params[:lesson_id])
  end

  # POST /my_dictionaries
  # POST /my_dictionaries.json
  def create
    @my_dictionary = MyDictionary.new(my_dictionary_params)
    @lesson = Lesson.find(params[:lesson_id])
    @lesson.my_dictionaries << @my_dictionary
    respond_to do |format|
      if @lesson.save
        format.html { redirect_to new_lesson_my_dictionary_path, notice: 'My dictionary was successfully created.' }
        format.json { render :new, status: :created}
      else
        format.html { render :new }
        format.json { render json: @my_dictionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_dictionaries/1
  # PATCH/PUT /my_dictionaries/1.json
  def update
    respond_to do |format|
      if @my_dictionary.update(my_dictionary_params)
        format.html { redirect_to lesson_my_dictionaries_path, notice: 'My dictionary was successfully updated.' }
        format.json { render :index, status: :ok}
      else
        format.html { render :index }
        format.json { render json: @my_dictionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_dictionaries/1
  # DELETE /my_dictionaries/1.json
  def destroy
    @my_dictionary.destroy
    respond_to do |format|
      format.html { redirect_to lesson_my_dictionaries_url, notice: 'My dictionary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def rus_eng
     @my_dictionary = Lesson.find(params[:lesson_id]).my_dictionaries.order("RANDOM()").first
    #@my_dictionary = MyDictionary.order("RANDOM()").first
  end

  def eng_rus
       @my_dictionary = Lesson.find(params[:lesson_id]).my_dictionaries.order("RANDOM()").first
      #@my_dictionary = MyDictionary.order("RANDOM()").first
  end
  
  private
    def set_my_dictionary
      @my_dictionary = MyDictionary.find(params[:id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def my_dictionary_params
      params.require(:my_dictionary).permit(:eng, :rus) 
    end
end
