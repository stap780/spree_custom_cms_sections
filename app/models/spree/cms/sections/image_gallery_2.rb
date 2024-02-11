module Spree::Cms::Sections
    class ImageGallery2 < Spree::CmsSection

        after_initialize :default_values
        validate :reset_multiple_link_attributes
    
        LINKED_RESOURCE_TYPE = ['Spree::Taxon', 'Spree::Product'].freeze
    
        LAYOUT_OPTIONS = ['Default', 'Reversed'].freeze
        LABEL_OPTIONS = ['Show', 'Hide'].freeze
        NAME_ARRAY = ['one','two','three','four','five','six','seven','eight','nine' ]
    
        store :content, accessors: [ :title, :title_link,
                                    :link_type_one, :link_one, :title_one,
                                    :link_type_two, :link_two, :title_two,
                                    :link_type_three, :link_three, :title_three,
                                    :link_type_four, :link_four, :title_four,
                                    :link_type_five, :link_five, :title_five,
                                    :link_type_six, :link_six, :title_six,
                                    :link_type_seven, :link_seven, :title_seven,
                                    :link_type_eight, :link_eight, :title_eight,
                                    :link_type_nine, :link_nine, :title_nine
                                    ], coder: JSON
    
        store :settings, accessors: [:layout_style, :display_labels, :gutters, :padding_top, :padding_bottom,:margin_top, :margin_bottom], coder: JSON
    
        
        def gutters?
            gutters == 'Gutters'
        end


        # img_one sizing
        def img_one_md(dimensions = '270x195>')
          super
        end
    
        def img_one_lg(dimensions = '540x390>')
          super
        end
    
        def img_one_xl(dimensions = '1080x780>')
          super
        end
    
        #
        # img_two sizing
        def img_two_md(dimensions = '270x400>')
          super
        end
    
        def img_two_lg(dimensions = '540x800>')
          super
        end
    
        def img_two_xl(dimensions = '1080x1600>')
          super
        end
    
        #
        # img_three sizing
        def img_three_md(dimensions = '270x195>')
          super
        end
    
        def img_three_lg(dimensions = '540x390>')
          super
        end
    
        def img_three_xl(dimensions = '1080x780>')
          super
        end
    
        def default_layout?
          layout_style == 'Default'
        end
    
        def show_labels?
          display_labels == 'Show'
        end
    
        private
    
        def reset_multiple_link_attributes

          if link_type_one_changed?
            return if link_type_one_was.nil?
    
            self.link_one = nil
          end
    
          if link_type_two_changed?
            return if link_type_two_was.nil?
    
            self.link_two = nil
          end
    
          if link_type_three_changed?
            return if link_type_three_was.nil?
    
            self.link_three = nil
          end

          if link_type_four_changed?
            return if link_type_four_was.nil?
    
            self.link_four = nil
          end
    
          if link_type_five_changed?
            return if link_type_five_was.nil?
    
            self.link_five = nil
          end
    
          if link_type_six_changed?
            return if link_type_six_was.nil?
    
            self.link_six = nil
          end

          if link_type_seven_changed?
            return if link_type_seven_was.nil?
    
            self.link_seven = nil
          end
    
          if link_type_eight_changed?
            return if link_type_eight_was.nil?
    
            self.link_eight = nil
          end
    
          if link_type_nine_changed?
            return if link_type_nine_was.nil?
    
            self.link_nine = nil
          end
        end
    
        def default_values
          self.layout_style ||= 'Default'
          self.fit ||= 'Container'
          self.gutters ||= 'Gutters'
          self.padding_top ||= '0'
          self.padding_bottom ||= '0'
          self.link_type_one ||= 'Spree::Taxon'
          self.link_type_two ||= 'Spree::Taxon'
          self.link_type_three ||= 'Spree::Taxon'
          self.link_type_four ||= 'Spree::Taxon'
          self.link_type_five ||= 'Spree::Taxon'
          self.link_type_six ||= 'Spree::Taxon'
          self.link_type_seven ||= 'Spree::Taxon'
          self.link_type_eight ||= 'Spree::Taxon'
          self.link_type_nine ||= 'Spree::Taxon'
        end

    end
  end