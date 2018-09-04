class QuizzesController < InheritedResources::Base

  private

    def quiz_params
      params.require(:quiz).permit(:name, :difficulty,:question_ids => [])
    end
end

