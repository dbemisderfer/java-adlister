import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;
    private List<Ad> ads = new ArrayList<>();


    public MySQLAdsDao(Config config) {

        try {
            DriverManager.registerDriver(new Driver()); //drivermanager manages drivers, such as a new mysql driver here
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
    }

    // get a list of all the ads
    public List<Ad> all() {
//        List<Ad> ads = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
            while (rs.next()) {
                Ad newAd = new Ad(
                                rs.getLong("id"),
                                rs.getLong("user_id"),
                                rs.getString("title"),
                                rs.getString("description")
                        );
                ads.add(newAd);

            }
//////////////// Alternate method //////////////
//            while (rs.next()) {
//                ads.add(
//                        new Ad(
//                            rs.getLong("id"),
//                            rs.getLong("user_id"),
//                            rs.getString("title"),
//                            rs.getString("description")
//                            )
//                    );
//
//            }
        } catch (SQLException sqle) {
            throw new RuntimeException("Error connecting to the database!", sqle);
        } catch (NullPointerException npe) {
            throw new RuntimeException("Error initializing the MySQL driver.", npe);
        }

        return ads;
    }

    // insert a new ad and return the new ad's id
    public Long insert(Ad ad) {
        Long longNum = -1L;
        try {
            String query = String.format("INSERT INTO ads (user_id, title, description) VALUES ('%d', '%s', '%s')",
                    ad.getUserId(),
                    ad.getTitle(),
                    ad.getDescription());
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                longNum = rs.getLong(1);
            }

        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
        return longNum;
    }


}
