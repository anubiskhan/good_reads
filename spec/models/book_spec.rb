require 'rails_helper'

describe Book do
  describe 'validations' do
    context 'validates book attributes' do
      it {should validate_presence_of(:title)}
    end
  end
end
