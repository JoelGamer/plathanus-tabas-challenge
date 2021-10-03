# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Property, type: :model do
  subject { build(:property) }

  it { is_expected.to validate_presence_of(:street) }
  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to validate_presence_of(:apartment) }

  it { is_expected.to have_many_attached(:images) }
end