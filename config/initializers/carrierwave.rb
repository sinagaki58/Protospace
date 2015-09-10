CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     'AKIAJCSYMYPPYCSL2IQA',
    aws_secret_access_key: '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',
    region:                'ap-northeast-1',
    path_style:             true
  }

  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}

  case Rails.env
    when 'production'
      config.fog_directory = 'iprotospace'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/iprotospace'
    when 'staging'
      config.fog_directory = 'stg.iprotospace'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/stg.iprotospace'
    when 'development'
      config.fog_directory = 'dev.iprotospace'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/dev.iprotospace'
    when 'test'
      config.fog_directory = 'test.iprotospace'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.iprotospace'
  end
end
