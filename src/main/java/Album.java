import java.io.Serializable;
import java.sql.Date;

public class Album implements Serializable {
    private String artistName;
    private String albumName;
    private Date releaseDate;
    private long sales;
    private String genre;

    public Album(){}

    public String getArtistName() {
        return artistName;
    }

    public void setArtistName(String artistName) {
        this.artistName = artistName;
    }

    public String getAlbumName() {
        return albumName;
    }

    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public long getSales() {
        return sales;
    }

    public void setSales(long sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}


//    CREATE TABLE albums (
//        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
//        artist_name VARCHAR(50) DEFAULT 'NONE',
//        album_name  VARCHAR(100) NOT NULL,
//        release_date int,
//        sales FLOAT,
//        genre VARCHAR(50),
//        PRIMARY KEY (id)
//        );

//    INSERT INTO albums (artist_name, album_name, release_date, sales, genre)
