package dao;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import model.Song;
import org.bson.Document;

import java.util.ArrayList;
import java.util.List;

public class MongoDao extends BaseDao{

    public List<Song> getCommentRanking(int start,int stop){
        try{
            // 连接到 mongodb 服务
            MongoClient mongoClient = new MongoClient( "localhost" , 27017 );

            // 连接到数据库
            MongoDatabase mongoDatabase = mongoClient.getDatabase("music");
            System.out.println("Connect to database successfully");
            MongoCollection<Document> collection = mongoDatabase.getCollection("comment");
            System.out.println("集合 test 选择成功");
            //检索所有文档
            /**
             * 1. 获取迭代器FindIterable<Document>
             * 2. 获取游标MongoCursor<Document>
             * 3. 通过游标遍历检索出的文档集合
             * */
            BasicDBObject field = new BasicDBObject();//要查的哪些字段
            field.put("m_name", true);
            field.put("artists", true);
            field.put("total", true);
            field.put("_id", false);
            field.put("m_id", true);
            FindIterable<Document> findIterable = collection.find().projection(field).sort(new BasicDBObject("total",-1)).skip(start).limit(10);
            MongoCursor<Document> mongoCursor = findIterable.iterator();
            List<Song> commentRanking = new ArrayList<>();
            while(mongoCursor.hasNext()){
                Document currentDocument = mongoCursor.next();
                currentDocument.get("m_name");
                Song song = new Song();
                song.setArtists((String)currentDocument.get("artists").toString());
                song.setM_name((String)currentDocument.get("m_name"));
                song.setTotal((int)currentDocument.get("total"));
                song.setM_id((int)currentDocument.get("m_id"));

                commentRanking.add(song);
            }
            return commentRanking;
        }catch(Exception e){
            throw e;
        }
    }
    public long findTotalMusicNum(){
        try {
            MongoClient mongoClient = new MongoClient( "localhost" , 27017 );

            // 连接到数据库
            MongoDatabase mongoDatabase = mongoClient.getDatabase("music");
            System.out.println("Connect to database successfully");
            MongoCollection<Document> collection = mongoDatabase.getCollection("comment");
            System.out.println("集合 test 选择成功");
            return collection.count();
        }catch (Exception e){
            throw e;
        }
    }
    public List<String> getComments(int id){
        try {
            MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
            List<String> comments = new ArrayList<>() ;
            // 连接到数据库
            MongoDatabase mongoDatabase = mongoClient.getDatabase("music");
            MongoCollection<Document> collection = mongoDatabase.getCollection("comment");

            System.out.println("集合 test 选择成功");
            BasicDBObject query = new BasicDBObject("m_id", id);
            System.out.println(id);
            FindIterable<Document> findIterable = collection.find(query).limit(1);
            MongoCursor<Document> mongoCursor = findIterable.iterator();
            Document currentDocument = mongoCursor.next();
            for (Document document:
                    (List<Document>)currentDocument.get("comments") ) {
                comments.add((String)document.get("content"));
            }
            return comments;
        }catch (Exception e){
            throw e;
        }
    }
    }