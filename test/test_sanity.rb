describe 'sanity' do
  it 'is minimally capable' do
    true.must_be :==, true
  end

  it 'must know true from false' do
    true.wont_be :==, false
  end
end
