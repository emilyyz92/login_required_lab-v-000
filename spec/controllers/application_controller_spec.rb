require 'rails_helper'
require 'pry'

RSpec.describe ApplicationController do
  describe 'current_user' do
    it 'returns the name of the current user' do
      i_am = 'Kate Libby'
      @request.session[:name] = i_am
      binding.pry
      expect(subject.current_user).to eq i_am
    end

    it 'returns nil if nobody is logged in' do
      expect(subject.current_user).to be nil
    end
  end
end
