require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  def setup
    @genre = Genre.create!(name: 'Jazz')
  end

  test "associations" do
    assert_equal 0, @genre.user_genres.size
    assert_equal 0, @genre.users.size
  end

  test 'valid genre' do
    genre = Genre.new(name: 'Funk')
    assert genre.valid?
  end

  test 'invalid genre with name is nil' do
    genre = Genre.new(name: '')
    assert_not genre.valid?, 'genre name is empty string'
  end

  test 'invalid genre with name is same' do
    genre = Genre.new(name: 'Jazz')
    assert_not genre.valid?, 'genre name is already taken'
  end
end
