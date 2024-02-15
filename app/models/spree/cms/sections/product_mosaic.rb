module Spree::Cms::Sections
    class ProductMosaic < Spree::CmsSection
      after_initialize :default_values
  
      LINKED_RESOURCE_TYPE = ['Spree::Taxon'].freeze
      store :content, accessors: [:title], coder: JSON
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
        self.viewports ||= 'All'
        self.linked_resource_type ||= 'Spree::Taxon'
      end
    end

  end