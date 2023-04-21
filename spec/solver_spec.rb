require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#factorial' do
    context 'returns correct factorial for a non-negative numbers' do
      it 'returns 1 when given 0' do
        expect(@solver.factorial(0)).to eql(1)
      end

      it 'returns the correct factorial for positive integers' do
        expect(@solver.factorial(5)).to eq(120)
        expect(@solver.factorial(10)).to eq(3_628_800)
        expect(@solver.factorial(15)).to eq(1_307_674_368_000)
      end
    end

    it 'raises an exception when given a negative integer' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
      expect { @solver.factorial(-10) }.to raise_error(ArgumentError)
    end
  end
end
