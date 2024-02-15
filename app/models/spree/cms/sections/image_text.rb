module Spree::Cms::Sections
    class ImageText < Spree::CmsSection
      after_initialize :default_values
    
      store :content, accessors: [:text1, :text2, :text3, :text4], coder: JSON
  
      store :settings, accessors: [:gutters, :padding_top, :padding_bottom,:margin_top, :margin_bottom, :viewports], coder: JSON
  
        def gutters?
            gutters == 'Gutters'
        end
        def view_mobile?
          viewports == 'Mobile'
        end
  
        def view_desktop?
          viewports == 'Desktop'
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
  
      private
    
      def default_values
        self.gutters ||= 'Gutters'
        self.fit ||= 'Container'
        self.padding_top ||= '0'
        self.padding_bottom ||= '0'
        self.viewports ||= 'All'
      end
      
    end
  end