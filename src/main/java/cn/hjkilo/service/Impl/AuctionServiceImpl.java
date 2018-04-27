package cn.hjkilo.service.Impl;

import cn.hjkilo.dao.AuctionMapper;
import cn.hjkilo.dao.UserMapper;
import cn.hjkilo.pojo.Auction;
import cn.hjkilo.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuctionServiceImpl implements AuctionService {

    @Autowired
    private AuctionMapper auctionMapper;

    @Override
    public List<Auction> pagingQuery(int pagesize, int currpage) {
        return auctionMapper.getAllpage(pagesize,currpage);//功能暂未实现
    }

    @Override
    public int getAuctionCount() {

        if (auctionMapper==null){
            System.out.println("auction is null!");
        }

        return auctionMapper.count();
    }

    @Override
    public Auction getAuctionInformation(int id){

        return auctionMapper.getAuctionById(id);
    }

    @Override
    public boolean delauction(int id) {

        return auctionMapper.delAuctionById(id);
    }

    @Override
    public List<Auction> getAAuction() {
        return auctionMapper.getAllAuction();
    }


}
