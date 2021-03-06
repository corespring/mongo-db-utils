require 'mongo-db-utils/models/config'
require 'mongo-db-utils/console'
require 'highline/string_extensions'
require 'yaml'

describe MongoDbUtils::ConfigProxy do

  class MockWriter
    attr_accessor :instance
    def save(instance)
      @instance = instance
    end

    def flush
    end
  end

  before(:each) do
    config = MongoDbUtils::Model::Config.new
    config.writer = MockWriter.new
    @config = MongoDbUtils::ConfigProxy.new(config)
  end

  it "should add a single db" do
    db = HighLine::String.new("mongodb://localhost:27017/db   ")
    @config.add_single_db(db)
    @config.dbs.length.should == 1
    @config.dbs[0].uri.should == "mongodb://localhost:27017/db"
    @config.dbs[0].uri.class.to_s.should == "String"
  end


end
