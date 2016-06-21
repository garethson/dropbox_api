module DropboxApiV2::Metadata
  # NOTE: We should have a test to cover the initialization of this object.
  # Sample:
  # {
  #   ".tag": "file",
  #   "url": "https://www.dropbox.com/s/2sn712vy1ovegw8/Prime_Numbers.txt?dl=0",
  #   "name": "Prime_Numbers.txt",
  #   "link_permissions": {
  #     "can_revoke": false,
  #     "resolved_visibility": {
  #       ".tag": "public"
  #     },
  #     "revoke_failure_reason": {
  #       ".tag": "owner_only"
  #     }
  #   },
  #   "client_modified": "2015-05-12T15:50:38Z",
  #   "server_modified": "2015-05-12T15:50:38Z",
  #   "rev": "a1c10ce0dd78",
  #   "size": 7212,
  #   "id": "id:a4ayc_80_OEAAAAAAAAAXw",
  #   "path_lower": "/homework/math/prime_numbers.txt",
  #   "team_member_info": {
  #     "team_info": {
  #       "id": "dbtid:AAFdgehTzw7WlXhZJsbGCLePe8RvQGYDr-I",
  #       "name": "Acme, Inc."
  #     },
  #     "display_name": "Roger Rabbit",
  #     "member_id": "dbmid:abcd1234"
  #   }
  # }
  class FileLink < Base
    field :url, String
    field :name, String
    field :link_permissions, DropboxApiV2::Metadata::LinkPermissions
    field :client_modified, Time
    field :server_modified, Time
    field :size, Integer
    field :id, String
    field :path_lower, String
    field :team_member_info, 
  end
end
