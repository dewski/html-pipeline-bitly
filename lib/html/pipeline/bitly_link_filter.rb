require 'html/pipeline/filter'
require 'cached_bitly'

module HTML
  class Pipeline
    # HTML Filter for replacing non-whitelisted urls with bit.ly
    # shortened URLs.
    #
    # Useful if you need to mask HTTP referer headers.
    class BitlyLinkFilter < Filter
      def call
        CachedBitly.clean_doc(doc)
      end
    end
  end
end
