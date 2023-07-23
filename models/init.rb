require 'sequel'


# init logging
require 'logger'
logger = Logger.new(STDOUT)
logger.level = Logger::DEBUG
set :logger, logger

# Sequel plugin
Sequel::Model.plugin(:json_serializer)
Sequel::Model.plugin(:validation_helpers)

DB = Sequel.connect("sqlite://./db/app.sqlite3")
DB.loggers << logger


