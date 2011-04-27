class RentalsController < ApplicationController
  # GET /rentals
  # GET /rentals.xml
  def index
    @rentals = Rental.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rentals }
    end
  end

  # GET /rentals/1
  # GET /rentals/1.xml
  def show
    @rental = Rental.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rental }
    end
  end

  # GET /rentals/new
  # GET /rentals/new.xml
  def new
    @rental = Rental.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rental }
    end
  end

  # GET /rentals/1/edit
  def edit
    @rental = Rental.find(params[:id])
  end

  # POST /rentals
  # POST /rentals.xml
  def create
    @rental = Rental.new(params[:rental])

    respond_to do |format|
      if @rental.save
        format.html { redirect_to(@rental, :notice => 'Rental was successfully created.') }
        format.xml  { render :xml => @rental, :status => :created, :location => @rental }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rental.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rentals/1
  # PUT /rentals/1.xml
  def update
    @rental = Rental.find(params[:id])

    respond_to do |format|
      if @rental.update_attributes(params[:rental])
        format.html { redirect_to(@rental, :notice => 'Rental was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rental.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rentals/1
  # DELETE /rentals/1.xml
  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy

    respond_to do |format|
      format.html { redirect_to(rentals_url) }
      format.xml  { head :ok }
    end
  end
end
