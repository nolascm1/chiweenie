class SuggestionsController < ApplicationController
    def index
        @suggestion = Suggestion.order("RANDOM()").first
    end

    def new
        @suggestion = suggestion.new
    end

    def create
        Suggestion.create(suggestion_params)
        redirect_to root_path
    end




    def suggestion_params
        params.require(:suggestion).permit(:activity, :description)
    end
end
