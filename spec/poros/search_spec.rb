require 'rails_helper'

RSpec.describe Search do
  it 'exists' do
    attrs = { data:
    [{ _id: '5cf5679a915ecad153ab68cc',
       allies: ['Fire Nation'],
       enemies: ['Aang'],
       photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128',
       name: 'Afiko',
       affiliation: 'Fire Nation' },
     { _id: '5cf5679a915ecad153ab68da',
       allies: ['Ozai', 'Zuko '],
       enemies: ['Iroh', 'Zuko', 'Kuei', 'Long Feng', 'Mai', 'Ty Lee', 'Ursa '],
       photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941',
       name: 'Azula',
       affiliation: " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)" }] }

    search = Search.new(attrs)
    expect(search).to be_a Search
    expect(search).to have_attributes(total_members: 2,
                                      data: [{ _id: '5cf5679a915ecad153ab68cc',
                                               allies: ['Fire Nation'],
                                               enemies: ['Aang'],
                                               photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128',
                                               name: 'Afiko',
                                               affiliation: 'Fire Nation' },
                                             { _id: '5cf5679a915ecad153ab68da',
                                               allies: ['Ozai', 'Zuko '],
                                               enemies: ['Iroh', 'Zuko', 'Kuei', 'Long Feng', 'Mai', 'Ty Lee', 'Ursa '],
                                               photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941',
                                               name: 'Azula',
                                               affiliation: " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)" }])
  end
end
