RailsAdmin.config do |config|
  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  config.model Admin do
    visible false
  end

  config.model Education do
    list do
      field :title
      field :description
      field :date
    end
    edit do
      field :title
      field :description
      field :date
    end
  end

  config.model Experience do
    list do
      field :title
      field :company
      field :description
      field :date
    end
    edit do
      field :title
      field :company
      field :description
      field :date
    end
  end

  config.model Project do
    list do
      field :title
      field :description
      field :live_url
      field :source_code_link
      field :background_image_url
    end
    edit do
      field :title
      field :description
      field :live_url
      field :source_code_link
      field :background_image_url
    end
  end

  config.model Contact do
    list do
      field :name
      field :email
      field :message
    end
    edit do
      field :name
      field :email
      field :message
    end
  end

  config.total_columns_width = 1000

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    # export
    bulk_delete
    show
    edit
    delete
    # show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
