shared_examples_for 'metadata' do |factory: described_class.name.demodulize.downcase.to_sym|
  subject(:instance) { FactoryBot.build(factory) }

  it { expect(instance.has_attribute?(:public_metadata)).to be_truthy }
  it { expect(instance.has_attribute?(:private_metadata)).to be_truthy }

  it { expect(instance.public_metadata.class).to eq(HashWithIndifferentAccess) }
  it { expect(instance.private_metadata.class).to eq(HashWithIndifferentAccess) }
end
