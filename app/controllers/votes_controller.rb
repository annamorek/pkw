class VotesController < InheritedResources::Base

  private

    def vote_params
      params.require(:vote).permit(:vote, :valid_vote, :invalid_vote, :empty, :other, :card)
    end
end

