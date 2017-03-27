require 'rails_helper'

feature 'user visits home page' do
  scenario 'successfully' do
    #setup
    post = Post.create(name: 'Quer ser um Líder?',
                       content: 'Os líderes buscam sempre a oportunidade,
                       a sua vó já dizia “Deus ajuda quem cedo madruga” e essa
                       é uma das maiores verdades que já te contaram, os líderes
                       não ficam sentados esperando ou dependendo de terceiros.
                       Estar pronto para ação é primordial e os próximos passos
                       vão te levar mais longe.')
    #execution
    visit root_path
    #expectation
    expect(page).to have_css('h1', text: 'Innove.me')
    expect(page).to have_content('Os melhores Posts de transformação digital')
    expect(page).to have_link post.name
    expect(page).to have_content('Os líderes buscam sempre a oportunidade,
    a sua vó já dizia “Deus ajuda quem cedo madruga')

  end

end
