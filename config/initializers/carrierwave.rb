require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: ENV['AKIAS6JWV4IFFCGOAA66'],
        aws_secret_access_key: ENV['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'],
        region: 'ap-northeast-1'
    }
    config.fog_directory  = ENV['hairsnspost']
  end
end