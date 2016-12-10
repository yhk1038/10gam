Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '996081407170811', '90a20ecbaca8ede8515179d2f7692b99'
end