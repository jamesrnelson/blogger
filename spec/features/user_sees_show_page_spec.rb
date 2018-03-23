require 'rails_helper'

describe 'user sees one article' do
  describe 'they link from the articles index' do
    it 'displays information for one article' do
      article = Article.create!(title: 'Title 5', body: 'body 5')

      visit articles_path

      click_link article.title

      expect(page).to have_content(article.title)
      expect(page).to have_content(article.body)
    end
  end
end
