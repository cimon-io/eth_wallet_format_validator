# frozen_string_literal: true

RSpec.describe 'EthereumWalletValidator' do
  context 'with valid Ethereum wallets' do
    %w[
      0xAbcF2745fbC5969E5A791c9AC3435F81C41800Ff
      0xCE18E8fc50B37313381033D20838577Cf04BC6D6
      0xB006b67448425bf0871e36B0D4Bb90B0e9472Af4
      0xcee9311e15822387b1784FFC0e000adFFc5647B5
      0x018A600ff69AA839cF5c3CC755c565b0Ef5eA80F
      0xE925516d8987fF5b3d7DE4341713F6aB4AF13305
      0xE4D01bC0151aD503AE0e40fA651199b08d302Ca9
      0x104ee58ceA0f87DfC0cED0eE7615Be4b8Be88b9c
      0x8759Cba5622fC54EA3bA9D175943d0e4e50d6Fb4
      0x7C5C30Aab797AA5BEea5fbf27CE1351A83AEC1A4
      0xcC065677BE2b539267f850834366Fabe2722eE3C
      0x8D7b9432f91814Cec10Dff81D5748dA80eAe06a2
      0xEf4b6413b450E73C9b89C9b0CB99e5ffD707dcE7
      0xBB1c20cF434B16e8E210eb0516A8C55db9FD26e6
      0x50DB5b474007eAA76B331ab3D43879136a218fb8
      0xbC81eD2fECB7D6e5D39553A992F1c6d81378B224
      0x354039c9Ac7C19e1d1bB2dA431568D8ef65797D9
      0x0bfFEE9d8Be5EA2a5a914Bc29C7AE83F5D71a0F4
      0x65ca7dbB24F363Ff0CbC2CdD0A40d3778Af302Ec
      0xB7B6bBb6940F356731E80BAA5DffadB9aB35466c
      0x52908400098527886E0F7030069857D2E4169EE7
      0x8617E340B3D01FA5F11F306F4090FD50E238070D
      0xde709f2102306220921060314715629080e2fb77
      0x27b1fdb04752bbc536007a920d24acb045561c26
      0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed
      0xfB6916095ca1df60bB79Ce92cE3Ea74c37c5d359
      0xdbF03B407c01E7cD3CBea99509d93f8DDDC8C6FB
      0xD1220A0cf47c7B9Be7A2E6BA89F429762e7b9aDb
    ].each do |value|
      model = Model.new
      model.field = value

      it(%("#{value}" should be valid)) { expect(model).to be_valid }
    end
  end
end
