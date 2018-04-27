package cn.hjkilo.dao;

import cn.hjkilo.pojo.Auction;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface AuctionMapper {
    int deleteByPrimaryKey(Integer auctioid);

    int insert(Auction record);

    int insertSelective(Auction record);

    Auction selectByPrimaryKey(Integer auctioid);

    int updateByPrimaryKeySelective(Auction record);

    int updateByPrimaryKey(Auction record);

    List<Auction> getAllpage(int pagesize, int currpage);

    int count();

    Auction getAuctionById(int id);

    boolean delAuctionById(int id);

    List<Auction> getAllAuction();
}