import java.sql.SQLException;

public class DaoFactory {
    private static Ads adsDao;

    public static Ads getAdsDao() throws SQLException {
        if (adsDao == null) {
//            adsDao = new ListAdsDao(); //commented out and replaced below then made change in CreateAdServlet
            adsDao = new MySQLAdsDao();

        }
        return adsDao;
    }
}
