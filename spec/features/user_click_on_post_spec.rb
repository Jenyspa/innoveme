require 'rails_helper'

feature 'user click on post' do

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

    click_on post.name

    #expectation
    expect(page).to have_content(post.name)
    expect(page).to have_content(post.content)
    expect(page).to have_field("Comentários:", placeholder: "Escreva seu comentário")
  end

end
