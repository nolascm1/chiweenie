class SuggestionsController < ApplicationController
    def index
        @suggestion = Suggestion.order("RANDOM()").first
    end

    def create
        Suggestion.create(suggestion_params)
        if suggestion.invalid?
            flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
        end
        redirect_to root_path
    end

    private


    def suggestion_params
        params.require(:suggestion).permit(:activity, :description)
    end
end
