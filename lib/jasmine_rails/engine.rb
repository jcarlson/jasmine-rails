require 'jasmine-core'

module JasmineRails
  class Engine < Rails::Engine
    isolate_namespace JasmineRails

    initializer :assets do |config|
      Rails.application.config.assets.paths << Jasmine::Core.path
      Rails.application.config.assets.paths << JasmineRails.spec_dir
      Rails.application.config.assets.precompile += %w(jasmine.css boot.js jasmine-boot.js json2.js jasmine.js jasmine-html.js jasmine-console-shims.js jasmine-console-reporter.js jasmine-specs.js)
    end
  end
end
