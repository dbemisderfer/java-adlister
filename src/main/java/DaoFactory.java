public class DaoFactory {
    private static Ads adsDao;
    private static Config config = new Config("jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false", "root", "");

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }
}
