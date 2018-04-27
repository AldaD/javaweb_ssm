package cn.hjkilo.pojo;

import java.util.Date;

public class Auction {
    private Integer auctioid;

    private String auctionname;

    private Integer auctionstartprice;

    private Date auctionstarttime;

    private Date auctionendtime;

    private String auctionpic;

    private String auctiondesc;

    public Integer getAuctioid() {
        return auctioid;
    }

    public void setAuctioid(Integer auctioid) {
        this.auctioid = auctioid;
    }

    public String getAuctionname() {
        return auctionname;
    }

    public void setAuctionname(String auctionname) {
        this.auctionname = auctionname == null ? null : auctionname.trim();
    }

    public Integer getAuctionstartprice() {
        return auctionstartprice;
    }

    public void setAuctionstartprice(Integer auctionstartprice) {
        this.auctionstartprice = auctionstartprice;
    }

    public Date getAuctionstarttime() {
        return auctionstarttime;
    }

    public void setAuctionstarttime(Date auctionstarttime) {
        this.auctionstarttime = auctionstarttime;
    }

    public Date getAuctionendtime() {
        return auctionendtime;
    }

    public void setAuctionendtime(Date auctionendtime) {
        this.auctionendtime = auctionendtime;
    }

    public String getAuctionpic() {
        return auctionpic;
    }

    public void setAuctionpic(String auctionpic) {
        this.auctionpic = auctionpic == null ? null : auctionpic.trim();
    }

    public String getAuctiondesc() {
        return auctiondesc;
    }

    public void setAuctiondesc(String auctiondesc) {
        this.auctiondesc = auctiondesc == null ? null : auctiondesc.trim();
    }
}