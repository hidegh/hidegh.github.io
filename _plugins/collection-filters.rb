# Based on: https://github.com/MichaelCurrin/jekyll-keys-filter

# Copyright (c) 2021, hidegh

# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.

# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

module Jekyll
  module CollectionFilters

    # Usage: {{ hash | keys | jsonify }}
    def keys(input)
      input.keys
    end

    # Usage: {{ array | skip: 2 | jsonify }}
    def skip(input, count)
      input[Range.new(count, input.size - 1)]
    end

    # Usage: {{ array | take: 2 | jsonify }}
    def take(input, count)
      input.take(count)
    end

  end
end

Liquid::Template.register_filter(Jekyll::CollectionFilters)
