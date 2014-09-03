require 'spec_helper'

describe "memo" do

  subject { Memo.new }

  it 'says hello' do
    expect(subject).to receive(:puts).with('Hallo')
    subject.run
  end

end
