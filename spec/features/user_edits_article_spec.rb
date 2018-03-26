require 'rails_helper'

describe 'user edits an article' do
  describe 'they link from the show page' do
    it 'displays the updated article with new information' do
      article_1 = Article.create!(title: 'Title 1', body: 'Body 1')

      visit article_path(article_1)
      click_link 'edit'

      fill_in 'article[title]', with: 'New Title!'
      fill_in 'article[body]', with: 'New Body!'
      click_on 'Update Article'

      expect(page).to have_content('New Title!')
      expect(page).to have_content('New Body!')
      expect(page).to have_content('Article \'New Title!\' was updated.')
    end
  end
end
