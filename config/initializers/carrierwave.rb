CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     Settings.AWS.aws_key,
    aws_secret_access_key: Settings.AWS.secret_access_key,
    region:                Settings.AWS.region,
    path_style:             true
  }

  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}

  case Rails.env
    when 'development'
      config.fog_directory =Settings.AWS.backet
      config.asset_host = Settings.AWS.asset_host
  end
end
