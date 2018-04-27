package cn.hjkilo.dao;

import cn.hjkilo.pojo.Record;

import java.util.List;

public interface RecordMapper {
    boolean insert(Record record);

    int insertSelective(Record record);

    List<Record> getRecordByAuctionId(int id);
}