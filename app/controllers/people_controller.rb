class PeopleController < ApplicationController
  autocomplete :city, :name
  before_action :set_person, only: [:show, :edit, :update, :destroy]


  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
    @document_types = DocumentType.all
  end

  # GET /people/1/edit
  def edit
    @document_types = DocumentType.all
  end

  # POST /people
  # POST /people.json
  def create
    puts ('LOG: ' +params[:city])
    puts ('LOG: ' +params[:address])
    @person = Person.new(person_params)


    respond_to do |format|
      if @person.save
        @location =Location.new(person_id: @person.id,city_id: params[:id_city], address: params[:address])
        @location.save
        @phone_number = PhoneNumber.new(person_id: @person.id, number_type: params[:number_type], number: params[:phone_number] )
        @phone_number.save
        puts 'after location create'
        #if @location.save
        format.html { redirect_to @person, notice: 'Tercero fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @person }

        else
          format.html { render :new }
          format.json { render json: @location.errors, status: :unprocessable_entity }
        end
      #else
      #  format.html { render :new }
      ##  format.json { render json: @person.errors, status: :unprocessable_entity }
      #end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Tercero fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Tercero fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:document_type_id, :document_number, :verification_digit, :first_name, :middle_name, :surname, :second_surname, :business_name, :email)
    end

end
