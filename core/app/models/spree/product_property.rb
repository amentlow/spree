module Spree
  class ProductProperty < Spree::Base
    acts_as_list scope: :product

    with_options inverse_of: :product_properties do
      belongs_to :product, touch: true, class_name: 'Spree::Product'
      belongs_to :property, class_name: 'Spree::Property'
    end

    validates :property, presence: true

    default_scope { order(:position) }

    self.whitelisted_ransackable_attributes = ['value']
    self.whitelisted_ransackable_associations = ['property']

    # virtual attributes for use with AJAX completion stuff
    delegate :name, :presentation, to: :property, prefix: true, allow_nil: true

    before_save :trim_value

    def property_name=(name)
      if name.present?
        # don't use `find_by :name` to workaround globalize/globalize#423 bug
        self.property = Property.where(name: name).first_or_create(presentation: name)
      end
    end

    def trim_value
      return if value.nil?

      value.strip!
    end
  end
end
