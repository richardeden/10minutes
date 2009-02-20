class DevotionsController < ApplicationController
  before_filter :login_required, :except => [:show]
  
  # GET /devotions
  # GET /devotions.xml
  def index
    @devotions = Devotion.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @devotions }
    end
  end

  # GET /devotions/1
  # GET /devotions/1.xml
  def show
    @devotion = Devotion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @devotion }
    end
  end

  # GET /devotions/new
  # GET /devotions/new.xml
  def new
    @devotion = Devotion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @devotion }
    end
  end

  # GET /devotions/1/edit
  def edit
    @devotion = Devotion.find(params[:id])
  end

  # POST /devotions
  # POST /devotions.xml
  def create
    @devotion = Devotion.new(params[:devotion])

    respond_to do |format|
      if @devotion.save
        flash[:notice] = 'Devotion was successfully created.'
        format.html { redirect_to(@devotion) }
        format.xml  { render :xml => @devotion, :status => :created, :location => @devotion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @devotion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /devotions/1
  # PUT /devotions/1.xml
  def update
    @devotion = Devotion.find(params[:id])

    respond_to do |format|
      if @devotion.update_attributes(params[:devotion])
        flash[:notice] = 'Devotion was successfully updated.'
        format.html { redirect_to(@devotion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @devotion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /devotions/1
  # DELETE /devotions/1.xml
  def destroy
    @devotion = Devotion.find(params[:id])
    @devotion.destroy

    respond_to do |format|
      format.html { redirect_to(devotions_url) }
      format.xml  { head :ok }
    end
  end
end
