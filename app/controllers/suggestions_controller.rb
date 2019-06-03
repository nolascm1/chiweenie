class SuggestionsController < ApplicationController
    def index
        @suggestion = Suggestion.order("RANDOM()").first
    end

end
