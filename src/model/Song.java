package model;

public class Song {
    private String m_name;
    private String artists;
    private int total;
    private int m_id;
    public int getTotal() {
        return total;
    }

    public String getArtists() {
        return artists;
    }

    public String getM_name() {
        return m_name;
    }

    public void setArtists(String artists) {
        this.artists = artists;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getM_id() {
        return m_id;
    }

    public void setM_id(int m_id) {
        this.m_id = m_id;
    }
}
