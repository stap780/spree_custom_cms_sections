module SpreeCustomCmsSections
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_custom_cms_sections'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    # initializer 'spree_custom_cms_sections.environment', before: :load_config_initializers do |_app|
    #   SpreeCustomCmsSections::Config = SpreeCustomCmsSections::Configuration.new
    # end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      Spree::CmsSection::TYPES << 'Spree::Cms::Sections::SideBySideImagesTwoProduct'
      Spree::CmsSection::TYPES << 'Spree::Cms::Sections::ProductMosaic'
      Spree::CmsSection::TYPES << 'Spree::Cms::Sections::Title'
      Spree::CmsSection::TYPES << 'Spree::Cms::Sections::ImageGallery2'
      Spree::CmsSection::TYPES << 'Spree::Cms::Sections::ImageText'
      Spree::CmsSection::TYPES << 'Spree::Cms::Sections::SliderTwoProduct'
      Spree::CmsSection::TYPES << 'Spree::Cms::Sections::TextWithBackground'
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
