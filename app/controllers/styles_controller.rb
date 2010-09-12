class StylesController < ApplicationController
  layout "admin"

  # GET /styles
  # GET /styles.xml
  def index
    @styles = Style.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @styles }
    end
  end

  # GET /styles/1
  # GET /styles/1.xml
  def show
    @style = Style.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @style }
    end
  end

  # GET /styles/new
  # GET /styles/new.xml
  def new
    @style = Style.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @style }
    end
  end

  # GET /styles/1/edit
  def edit
    @style = Style.find(params[:id])
    @style_types = StyleType.find :all
  end

  # POST /styles
  # POST /styles.xml
  def create
    @style = Style.create :name => 'NEW STYLE', :style_type => StyleType.find_by_name('CSS'), :data => ''
    redirect_to styles_url
  end

  # PUT /styles/1
  # PUT /styles/1.xml
  def update
    @style = Style.find(params[:id])

    respond_to do |format|
      if @style.update_attributes(params[:style])
        flash[:notice] = 'Style was successfully updated.'
        format.html { redirect_to styles_url }
        format.xml  { head :ok }
      else
        @style_types = StyleType.find :all
        format.html { render :action => "edit" }
        format.xml  { render :xml => @style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /styles/1
  # DELETE /styles/1.xml
  def destroy
    Style.find(params[:id]).destroy
    redirect_to styles_path
  end
end
