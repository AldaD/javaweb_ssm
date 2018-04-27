package cn.hjkilo.service;

import cn.hjkilo.pojo.Auction;

import java.util.List;

public interface AuctionService {

   List<Auction> pagingQuery(int pagesize, int currpage);

   int getAuctionCount();

   Auction getAuctionInformation(int id);

   boolean delauction(int id);

   List<Auction> getAAuction();
}
