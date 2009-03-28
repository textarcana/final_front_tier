  # Safe text truncation, for generating clean UI copy

module TruncateWordsHelper

  # Truncate string to a certain number of words (rather than characters)
  #
  # Author: ianlotinsky
  #
  # See <http://snippets.dzone.com/posts/show/804>

  def truncate_words(text='', length=30, end_string='&hellip;')
    return if text == nil
    words = text.split()
    words[0..(length-1)].join(' ') + (words.length > length ? end_string : '')
  end


end
