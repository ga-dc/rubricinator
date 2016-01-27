RSpec.configure do |config|
  config.include JSON::SchemaMatchers

  #schema file
  Dir.glob("config/schemas/*.json") do |schema_file|
    schema_name = File.basename(schema_file, ".json")

    config.json_schemas[schema_name.to_sym] = schema_file
  end
  # config.json_schemas[:rubrics] = "config/schemas/rubrics.json"
  # config.json_schemas[:rubric] = "config/schemas/rubric.json"
  #inline
  config.json_schemas[:inline_schema] = '{"type": "string"}'
end
