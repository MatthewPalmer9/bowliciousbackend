if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: ""
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end 

# This file is used to allow communication no matter what front-end tool is being used (React, Angular, etc.)