package dao;

import com.mongodb.MongoClient;

public class BaseDao {
    public MongoClient getMongoClientConnection(){
        return new MongoClient( "localhost" , 27017 );
    }
}
