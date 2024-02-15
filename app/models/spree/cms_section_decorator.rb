    module Spree
      module CmsSectionDecorator

        def self.prepended(base)

            base.has_one :image_four, class_name: 'Spree::CmsSectionImageFour', dependent: :destroy, as: :viewable
            base.accepts_nested_attributes_for :image_four, reject_if: :all_blank
            base.has_one :image_five, class_name: 'Spree::CmsSectionImageFive', dependent: :destroy, as: :viewable
            base.accepts_nested_attributes_for :image_five, reject_if: :all_blank
            base.has_one :image_six, class_name: 'Spree::CmsSectionImageSix', dependent: :destroy, as: :viewable
            base.accepts_nested_attributes_for :image_six, reject_if: :all_blank
            base.has_one :image_seven, class_name: 'Spree::CmsSectionImageSeven', dependent: :destroy, as: :viewable
            base.accepts_nested_attributes_for :image_seven, reject_if: :all_blank
            base.has_one :image_eight, class_name: 'Spree::CmsSectionImageEight', dependent: :destroy, as: :viewable
            base.accepts_nested_attributes_for :image_eight, reject_if: :all_blank
            base.has_one :image_nine, class_name: 'Spree::CmsSectionImageNine', dependent: :destroy, as: :viewable
            base.accepts_nested_attributes_for :image_nine, reject_if: :all_blank

        end

        def indicators_sizes
          ['Indicators', 'No Indicators']
        end

        def controls_sizes
          ['Controls', 'No Controls']
        end

        def viewports_sizes
          ['All','Mobile', 'Desktop']
        end

        def intervals_sizes
          ['No intervals','5000','6000','7000','8000','9000','10000','11000','12000','13000','14000','15000','16000','17000','18000','19000','20000','21000','22000','23000','24000','25000','26000','27000','28000','29000','30000']
        end

        def padding_top_sizes
          [0,1,2,3,4,5,6,7,8,9,10,11,12]
        end

        def padding_bottom_sizes
          [0,1,2,3,4,5,6,7,8,9,10,11,12]
        end

        def margin_top_sizes
          [0,1,2,3,4,5,6,7,8,9,10,11,12]
        end

        def margin_bottom_sizes
          [0,1,2,3,4,5,6,7,8,9,10,11,12]
        end


      end
    end
  ::Spree::CmsSection.prepend Spree::CmsSectionDecorator