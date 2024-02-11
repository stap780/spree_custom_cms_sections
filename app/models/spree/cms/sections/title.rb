module Spree::Cms::Sections
    class Title < Spree::CmsSection
      after_initialize :default_values
  
      LINKED_RESOURCE_TYPE = ['Spree::Taxon'].freeze
      store :content, accessors: [:title], coder: JSON
      store :settings, accessors: [:gutters], coder: JSON
  
      def gutters?
          gutters == 'Gutters'
      end

      private
  
      def default_values
        self.gutters ||= 'Gutters'
        self.fit ||= 'Screen'
        self.linked_resource_type ||= 'Spree::Taxon'
      end
    end

  end