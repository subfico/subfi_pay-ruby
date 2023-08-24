# frozen_string_literal: true

module Bckbn
  module CoreExt
    module StringExt
      refine String do
        def underscore
          copy = dup
          copy.gsub("::", "/")
          copy.gsub!(/([A-Z])(?=[A-Z][a-z])|([a-z\d])(?=[A-Z])/) do
            (::Regexp.last_match(1) || ::Regexp.last_match(2)) << "_"
          end
          copy.tr!("-", "_")
          copy.downcase!
        end
      end
    end
  end
end
