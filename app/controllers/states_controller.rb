class StatesController < ApplicationController
  before_filter :find_country

  # GET /states
  # GET /states.xml
  def index
    @states = @country.states.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @states }
    end
  end

  # GET /states/1
  # GET /states/1.xml
  def show
    @state = @country.states.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @state }
    end
  end

  # GET /states/new
  # GET /states/new.xml
  def new
    @state = @country.states.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @state }
    end
  end

  # GET /states/1/edit
  def edit
    @state = @country.states.find(params[:id])
  end

  # POST /states
  # POST /states.xml
  def create
    @state = @country.states.build(params[:state])

    respond_to do |format|
      if @state.save
        format.html { redirect_to([@country, @state], :notice => 'State was successfully created.') }
        format.xml  { render :xml => @state, :status => :created, :location => [@country, @state] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @state.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /states/1
  # PUT /states/1.xml
  def update
    @state = @country.states.find(params[:id])

    respond_to do |format|
      if @state.update_attributes(params[:state])
        format.html { redirect_to([@country, @state], :notice => 'State was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @state.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.xml
  def destroy
    @state = @country.states.find(params[:id])
    @state.destroy

    respond_to do |format|
      format.html { redirect_to(country_states_url(@country)) }
      format.xml  { head :ok }
    end
  end

  protected

  def find_country
    @country = Country.find(params[:country_id])
  end


end

