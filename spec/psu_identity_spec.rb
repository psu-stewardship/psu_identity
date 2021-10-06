# frozen_string_literal: true

RSpec.describe PsuIdentity do
  it 'has a version number' do
    expect(PsuIdentity::VERSION).not_to be nil
  end
end
