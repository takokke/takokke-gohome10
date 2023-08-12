# == Schema Information
#
# Table name: answers
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  rank       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Answer < ApplicationRecord
    def checkingAnswers
    end
end
