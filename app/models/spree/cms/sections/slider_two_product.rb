module Spree::Cms::Sections
    class SliderTwoProduct < Spree::CmsSection
      after_initialize :default_values
      validate :reset_multiple_link_attributes
  
      LINKED_RESOURCE_TYPE = ['Spree::Taxon', 'Spree::Product'].freeze
  
      store :content, accessors: [:link_type_one, :link_one, :title_one, :subtitle_one, :position_x_one, :position_y_one,
                                  :link_type_two, :link_two, :title_two, :subtitle_two, :position_x_two, :position_y_two,
                                  :link_type_three, :link_three, :title_three, :subtitle_three, :position_x_three, :position_y_three,
                                  :link_type_four, :link_four, :title_four, :subtitle_four, :position_x_four, :position_y_four,
                                  :link_type_five, :link_five, :title_five, :subtitle_five, :position_x_five, :position_y_five,
                                  :link_type_six, :link_six, :title_six, :subtitle_six, :position_x_six, :position_y_six,], coder: JSON
  
      store :settings, accessors: [:gutters, :indicators, :controls, :intervals], coder: JSON
  
        def gutters?
            gutters == 'Gutters'
        end

        def indicators?
            indicators == 'Indicators'
        end

        def controls?
            controls == 'Controls'
        end

        def intervals?
            intervals != 'No intervals'
        end
  
      #
      # img_one sizing
      def img_one_md(dimensions = '387x250>')
        super
      end
  
      def img_one_lg(dimensions = '540x390>')
        super
      end
  
      def img_one_xl(dimensions = '1468x952>')
        super
      end
  
      #
      # img_two sizing
      def img_two_md(dimensions = '387x250>')
        super
      end
  
      def img_two_lg(dimensions = '734x476>')
        super
      end
  
      def img_two_xl(dimensions = '1468x952>')
        super
      end

      #
      # img_one sizing
      def img_three_md(dimensions = '387x250>')
        super
      end
  
      def img_three_lg(dimensions = '540x390>')
        super
      end
  
      def img_three_xl(dimensions = '1468x952>')
        super
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

      end
  
      def default_values
        self.gutters ||= 'Gutters'
        self.indicators ||= 'Indicators'
        self.controls ||= 'Controls'
        self.intervals ||= 'No intervals'
        self.fit ||= 'Container'
        self.link_type_one ||= 'Spree::Product'
        self.link_type_two ||= 'Spree::Product'
        self.link_type_three ||= 'Spree::Product'
        self.link_type_four ||= 'Spree::Product'
        self.link_type_five ||= 'Spree::Product'
        self.link_type_six ||= 'Spree::Product'
      end
      
    end
  end