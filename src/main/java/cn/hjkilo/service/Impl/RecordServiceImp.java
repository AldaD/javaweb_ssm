package cn.hjkilo.service.Impl;

import cn.hjkilo.dao.RecordMapper;
import cn.hjkilo.pojo.Record;
import cn.hjkilo.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
public class RecordServiceImp implements RecordService {
    @Autowired
    private RecordMapper recordMapper;

    @Override
    public List<Record> getRecordByAuctionId(int auctionid) {
        if (recordMapper==null){
            System.out.println("recordMapper is null!");
        }else{
            System.out.println("recordMapper is injected!");
        }
        return recordMapper.getRecordByAuctionId(auctionid);
    }

    public boolean doauction(Record record){


        return  recordMapper.insert(record);

    }

}
