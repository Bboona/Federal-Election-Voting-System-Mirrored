class VotesController < ApplicationController
  before_action :set_vote, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  @ballotID_Counter = 0

  # GET /votes or /votes.json
  def index
    @votes = Vote.all
  end

  def ballots
    @ballots = []
    for i in 0..( Vote.all.order('ballotID DESC').first.ballotID )
      @ballot = Vote.where(:ballotID => i)
      @ballots.push(@ballot)
    end
    puts @ballots
  end

  def voter
    @candidates = Candidate.all.order(:associated_party)
    # @parties = %i[ labour liberal nick greens libdems weed ]
    @parties = Candidate.distinct.pluck(:associated_party)
    @candidateIDS = []

    @parties.each_with_index do |party, i|
      @candidateIDS.push( @candidates.where(associated_party: party).first.id )
    end

    puts @parties, @candidateIDS

    @letter = '@'

    # create x empty votes for party votes
    @party_votes_empty = []
    @parties.each do
      @party_votes_empty << Vote.new
    end

    # create x empty votes for each candidate
    @candidate_votes_empty = []
    @candidates.all.each do
      @candidate_votes_empty << Vote.new
    end

  end


  def submit_votes
    puts params["party_preferences"]
    # puts params["candidate_preferences"]
    if Vote.all.order('ballotID DESC').first == nil
      ballotCounter = 0
    else
      ballotCounter = Vote.all.order('ballotID DESC').first.ballotID + 1
    end

    params["party_preferences"].each do |key, value|
      if value["preference"] != ""
        @ballot_vote_params = ["preference" => value["preference"], "candidateID" => value["candidateID"], "ballotID" => ballotCounter ]
        Vote.create(@ballot_vote_params)
        puts "preference: " + value["preference"] + " candidate: " + value["candidateID"] + " ballotID: " + ballotCounter.to_s
      end
    end

    params["candidate_preferences"].each do |key, value|
      if value["preference"] != ""
        @ballot_vote_params = ["preference" => value["preference"], "candidateID" => value["candidateID"], "ballotID" => ballotCounter ]
        Vote.create(@ballot_vote_params)
        # puts "preference: " + value["preference"] + " candidate: " + value["candidateID"] + " ballotID: " + ballotCounter.to_s
      end
    end

    # redirect_to root_path
    redirect_to voter_path, :flash => { :success => "Vote successful"}
  end

  # GET /votes/1 or /votes/1.json
  def show
  end

  # GET /votes/new
  def new
    @vote = Vote.new
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes or /votes.json
  def create
    @vote = Vote.new(vote_params)

    respond_to do |format|
      if @vote.save
        format.html { redirect_to @vote, notice: "Vote was successfully created." }
        format.json { render :show, status: :created, location: @vote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /votes/1 or /votes/1.json
  def update
    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to @vote, notice: "Vote was successfully updated." }
        format.json { render :show, status: :ok, location: @vote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1 or /votes/1.json
  def destroy
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to votes_url, notice: "Vote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vote_params
      params.require(:vote).permit(:preference, :candidateID, :ballotID, :party_preferences, :candidate_preferencess)
    end
end
