module Spree::Cms::Sections
    class TextWithBackground < Spree::CmsSection
      after_initialize :default_values
  
      LINKED_RESOURCE_TYPE = ['Spree::Taxon'].freeze
      store :content, accessors: [:text, :background_color], coder: JSON
      store :settings, accessors: [:gutters, :viewports], coder: JSON
  
      def gutters?
          gutters == 'Gutters'
      end
      def view_mobile?
        viewports == 'Mobile'
      end

      def view_desktop?
        viewports == 'Desktop'
      end

      private
  
      def default_values
        self.gutters ||= 'Gutters'
        self.fit ||= 'Screen'
        self.linked_resource_type ||= 'Spree::Taxon'
        self.viewports ||= 'All'
      end
    end

end