# frozen_string_literal: true
require_relative '../lib/06_pig_latin'

describe '#translate' do
  it 'translates a word beginning with a vowel' do
    s = translate('apple')
    expect(s).to eq('appleay')
  end

  it 'translates a word beginning with a consonant' do
    s = translate('banana')
    expect(s).to eq('ananabay')
  end

  it 'translates a word beginning with two consonants' do
    s = translate('cherry')
    expect(s).to eq('errychay')
  end

  it 'translates two words' do
    s = translate('eat pie')
    expect(s).to eq('eatay iepay')
  end

  it 'translates a word beginning with three consonants' do
    expect(translate('three')).to eq('eethray')
  end

  it "counts 'sch' as a single phoneme" do
    s = translate('school')
    expect(s).to eq('oolschay')
  end

  it "counts 'qu' as a single phoneme" do
    s = translate('quiet')
    expect(s).to eq('ietquay')
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate('square')
    expect(s).to eq('aresquay')
  end

  it 'translates many words' do
    s = translate('the quick brown fox')
    expect(s).to eq('ethay ickquay ownbray oxfay')
  end

  it 'translates words starting with just a q' do
    s = translate('the qabc')
    expect(s).to eq('ethay abcqay')
  end

  it 'translates capitalization' do
    s = translate('the Quick brown Fox')
    expect(s).to eq('ethay Ickquay ownbray Oxfay')
  end

  it 'translates puntuation is kept' do
    s = translate('the, quick : brown fox !Lol')
    expect(s).to eq('ethay, ickquay : ownbray oxfay !Ollay')
  end
end
