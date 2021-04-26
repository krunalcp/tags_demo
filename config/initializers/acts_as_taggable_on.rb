require "acts-as-taggable-on"

ActsAsTaggableOn.strict_case_match = true
ActsAsTaggableOn.force_lowercase = false

module ActsAsTaggableOn
  class Tag < ::ActiveRecord::Base
    Tag.class_eval do
      _validators.reject! { |key, _| key == :name }

      _validate_callbacks.each do |callback|
        callback.raw_filter.attributes.delete :name if callback.raw_filter
          .is_a?(ActiveRecord::Validations::UniquenessValidator)
      end
      validates_uniqueness_of :name, scope: [:site_id, :context]
    end
  end
end
