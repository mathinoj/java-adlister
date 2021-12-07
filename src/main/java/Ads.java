import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all() throws SQLException;
//    List<Ad> all(){
//        return null;
//    }

    // insert a new ad and return the new ad's id
    void insert(Ad ad);
//    Long insert(Ad ad){
//        return null;
//    }

}


//    @Override
//    public List<Ad> all() {
//        return null;
//    }
//
//    @Override
//    public Long insert(Ad ad) {
//        return null;
//    }