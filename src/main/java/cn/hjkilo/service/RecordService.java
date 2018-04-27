package cn.hjkilo.service;

import cn.hjkilo.pojo.Record;

import java.util.List;

public interface RecordService {
    List<Record> getRecordByAuctionId(int auctionid);

    boolean doauction(Record record);

}
