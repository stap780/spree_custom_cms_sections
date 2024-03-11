module Spree
    module CmsPageDecorator

      def self.prepended(base)


      end

    end
  end
::Spree::CmsPage.prepend Spree::CmsPageDecorator