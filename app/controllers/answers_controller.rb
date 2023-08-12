class AnswersController < ApplicationController
    def index
        @answers = Answer.all
    end

    def input
    end

    def output
        @param = params[:input]
        @answer = Answer.find_by(name:@param)
        if @answer.present?
            redirect_to correct_path(@answer.id)
        else
            redirect_to incorrect_path(@param)
        end
    end

    def correct
        @param = params[:input]
        @correctAnswer = Answer.find_by(id:@param)
    end

    def incorrect
        @incorrectAnswer = params[:input]
    end

    private

    def answer_params
        params.require(:answer).permit(:name)
    end
end
