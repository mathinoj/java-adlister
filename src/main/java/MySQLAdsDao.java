import java.sql.*;

//import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class MySQLAdsDao implements Ads{
    private Connection connection;
    private Config config = new Config();

    public MySQLAdsDao() throws SQLException{
        this.connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
        );
    }

    public List <Ad> all() throws SQLException{
        String selectQuery = "SELECT * FROM Ad";
        Statement statement = null;
        ResultSet resultSet = null;
        List<Ad> adList = new ArrayList<>();

        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(selectQuery);
            while (resultSet.next()) {
                Ad currentAd = new Ad(resultSet.getInt("id"), resultSet.getInt("user_id"), resultSet.getString("title"), resultSet.getString("description"));
                adList.add(currentAd);
            }
        } catch (SQLException e){
                e.printStackTrace();
            }
        return adList;
        }


    @Override
    public void insert(Ad ad) {
    }


public static void main(String[] args) throws SQLException{
        MySQLAdsDao mySQLAdsDao = new MySQLAdsDao();
        List<Ad> liveCodeAds = mySQLAdsDao.all();

//        Config getUsername = new Config();
//        List<Ad> liveCodeAdsAgain = getUsername.config;

        for (Ad singleAd : liveCodeAds){
        System.out.println(singleAd.getUserId() + " " + singleAd.getTitle() + "the description is: " + singleAd.getDescription());
    }

//        for(Ad singleAd : liveCodeAds){
//            System.out.println(singleAd.getUserId() + " " + singleAd.getTitle() + "the description is: " + singleAd.getDescription());
//        }

}




}




