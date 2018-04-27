package cn.hjkilo.pojo;

import java.util.Date;

public class Record {
    private User user;
    private Auction auction;

    private Integer userid;

    private Integer auctionid;

    private Date auctiontime;

    private Integer auctionprice;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getAuctionid() {
        return auctionid;
    }

    public void setAuctionid(Integer auctionid) {
        this.auctionid = auctionid;
    }

    public Date getAuctiontime() {
        return auctiontime;
    }

    public void setAuctiontime(Date auctiontime) {
        this.auctiontime = auctiontime;
    }

    public Integer getAuctionprice() {
        return auctionprice;
    }

    public void setAuctionprice(Integer auctionprice) {
        this.auctionprice = auctionprice;
    }


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Auction getAuction() {
        return auction;
    }

    public void setAuction(Auction auction) {
        this.auction = auction;
    }
}