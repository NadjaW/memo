require 'spec_helper'
require 'fakefs/safe'

describe "memo" do

  subject { Memo.new }
  let(:test_string) { 'bla' }

  before(:each) { FakeFS.activate! }
  after(:each) { FakeFS.deactivate! }

  it 'writes memos to a file' do
    subject.store test_string
    expect(Dir.glob('memo_*')).to_not be_empty
  end

  it 'appends a sequence number to the used files' do
    2.times { subject.store test_string }
    expect(Dir.glob('*01').count).to eq(1)
    expect(Dir.glob('*02').count).to eq(1)
  end

  it 'creates a proper filename' do
    expect(subject.send :file_name).to eq('memo_00')
    subject.instance_variable_set(:@number, 1)
    expect(subject.send :file_name).to eq('memo_01')
  end

end
