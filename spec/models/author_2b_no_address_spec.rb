require 'rails_helper'

RSpec.describe Author, type: :model do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:age).of_type(:integer) }
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:bio).of_type(:text) }

  it { should_not have_db_column(:address) }
end
