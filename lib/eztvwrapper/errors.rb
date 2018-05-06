module EZTVWrapper
  class EpisodeNotFound < StandardError ; end
  class HTTPError       < StandardError ; end
  class ParsingError    < StandardError ; end
  class ShowNotFound    < StandardError ; end
end
