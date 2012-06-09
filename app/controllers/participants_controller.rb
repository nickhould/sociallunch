
class ParticipantsController < ApplicationController
  before_filter :initialize_event
  # GET /participants
  # GET /participants.json
  def index
    @participants = @event.participants.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @participants }
    end
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
    @participant = @event.participants.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /participants/new
  # GET /participants/new.json
  def new
    @participant = @event.participants.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /participants/1/edit
  def edit
    @participant = @event.participants.find(params[:id])
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = @event.participants.build(params[:participant])

    respond_to do |format|
      if @participant.save
        format.html { redirect_to event_path(@event), notice: 'Participant was successfully created.' }
        format.json { render json: @participant, status: :created, location: @participant }
      else
        format.html { render action: "new" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /participants/1
  # PUT /participants/1.json
  def update
    @participant = @event.participants.find(params[:id])

    respond_to do |format|
      if @participant.update_attributes(params[:participant])
        format.html { redirect_to event_participants_path(@event), notice: 'Participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant = @event.participants.find(params[:id])
    @participant.destroy

    respond_to do |format|
      format.html { redirect_to event_participants_path(@event)}
      format.json { head :no_content }
    end
  end

  private 
    def initialize_event
      @event = Event.find(params[:event_id])
    end
end
