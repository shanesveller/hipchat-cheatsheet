require 'json'

BASE_URL = "https://dujrsrsgsd3nh.cloudfront.net/img/emoticons/"

cheatsheet do
  title 'Hipchat Emoticons'
  docset_file_name 'Hipchat'
  keyword 'hipchat'

  introduction 'Based on https://github.com/henrik/hipchat-emoticons'

  category do
    id 'Current'

    JSON.parse(File.read('emoticons.json')).each do |emoticon|
      url = "#{BASE_URL}#{emoticon['file']}"
      entry do
        command emoticon['shortcut']
        name emoticon['shortcut']
        notes "![#{emoticon['shortcut']}](#{url})"
      end
    end
  end
end
