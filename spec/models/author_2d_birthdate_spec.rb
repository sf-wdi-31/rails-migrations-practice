require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'pre-existing columns' do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:email).of_type(:string) }
    it { should have_db_column(:bio).of_type(:text) }
  end

  describe 'removed columns' do
    it { should_not have_db_column(:address) }

    it { should_not have_db_column(:age) }
  end

  describe 'added columns' do
    it { should have_db_column(:birthdate).of_type :date }
  end
end
