package cn.hjkilo.controller;

import cn.hjkilo.pojo.Auction;
import cn.hjkilo.pojo.Record;
import cn.hjkilo.pojo.User;
import cn.hjkilo.service.Impl.RecordServiceImp;
import cn.hjkilo.service.RecordService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;


@Controller
@RequestMapping("/")
public class RecordAction {

    @RequestMapping("/doauction")
public String doauction(HttpServletRequest request, HttpSession session, HttpServletResponse response){
        int price = Integer.parseInt(request.getParameter("sale"));
//        System.out.println(price);
        //方法一：通过遍历的方法进行遍历
        String FileName="";
          session=request.getSession();//获取session
        Auction auction = (Auction)session.getAttribute("auctioninfor");

//        int auctionid =  auction.getAuctioid();

        User user = (User)session.getAttribute("userInfo");

//        String username = user.getUsername();
//        int userid =user.getUserid();

        Record record = new Record();
        java.util.Date date  =new java.util.Date();
        RecordService recordService= new RecordServiceImp();

        record.setUser(user);
        record.setAuction(auction);
//        record.setAuctiontime((Timestamp) date);
        record.setAuctionprice(price);
        recordService.doauction(record);
        JOptionPane.showMessageDialog(null, "竞拍成功！", "消息", JOptionPane.INFORMATION_MESSAGE);
        return "/showlist/1.action";



    }
}
