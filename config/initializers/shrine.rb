require "shrine"
require "shrine/storage/file_system"

require "shrine/storage/sql"
require "sequel"

DB = Sequel.connect(ActiveRecord::Base.connection_config)
Shrine.storages = {
 cache: Shrine::Storage::Sql.new(database: DB, table: :files),
 store: Shrine::Storage::Sql.new(database: DB, table: :files)
}

# Shrine.storages = {
#   cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
#   store: Shrine::Storage::FileSystem.new("public", prefix: "uploads")
# }

Shrine.plugin :download_endpoint, storages: [:store], prefix: "attachments"

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data
# Shrine.plugin :upload_endpoint
# Shrine.plugin :restore_cached_data
Shrine.plugin :derivatives, versions_compatibility: true
