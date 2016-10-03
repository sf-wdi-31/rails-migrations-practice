# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :integer
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  describe "unchanged columns" do # note: this is an unusual use of describe, we're doing it here to help students out.
    it { should have_db_column(:name).of_type(:string) }
  end

  describe "altered and new columns" do
    it { should have_db_column(:phone).of_type(:string) }
    it { should have_db_column(:street_address).of_type(:string) }
    it { should have_db_column(:street_address2).of_type(:string) }
    it { should have_db_column(:state).of_type(:string) }
    it { should have_db_column(:country).of_type(:string) }
    it { should have_db_column(:zip).of_type(:integer) }
  end


  # this is also an unsual spec - for this exercise all changes should be done in one migration
  it "only has one additional migration file added" do
    migration_files = Dir.glob("db/migrate/*.rb") # an array of all the files in db/migrate
    expect(migration_files.length).to eq 3
  end
end
