class User < ApplicationRecord
  has_one_attached :avatar do |attachable|
    # docs https://edgeguides.rubyonrails.org/active_storage_overview.html#has-one-attached rely on resize_to_limit
    # there is a way to do preprocessing with
    # flag `preprocessed: true`(available in 7.1 https://github.com/rails/rails/pull/47473).
    # Also https://github.com/rails/rails/pull/51951
    attachable.variant :small, resize_to_limit: [100, 100]
  end
end
ActiveJob::Base.queue_adapter = :inline