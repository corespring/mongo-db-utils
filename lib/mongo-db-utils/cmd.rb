require 'mongo-db-utils/cmd/mongodump'

module MongoDbUtils
  class Cmd

    def self.backup(db, path)
      t = Time.new
      timestamp = t.strftime("%Y.%m.%d__%H.%M")
      out_path = "#{path}/#{db.host}_#{db.port}/#{db.name}/#{timestamp}"
      full_path = File.expand_path(out_path)
      
      FileUtils.mkdir_p(full_path)
      MongoDbUtils::Commands::MongoDump.dump(db.host,db.port,db.name,full_path,db.username,db.password)
      `tar cvf #{full_path}/#{db.name}.tar.gz #{full_path}/#{db.name}`
      `rm -fr #{full_path}/#{db.name}`
    end
=begin
    def self.list_dbs(servers)
      result = []
      servers.each do |server|
        server_dbs = Hash.new
        server_dbs[:server] = server
        uri = self.make_uri(server)
        puts "uri: #{uri}"
        connection = Mongo::Connection.from_uri( uri )
        server_dbs[:names] = connection.database_names
        result << server_dbs
        connection.close
      end
      result
    end
=end
  end
end
