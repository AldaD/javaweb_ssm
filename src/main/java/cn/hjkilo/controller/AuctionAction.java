package cn.hjkilo.controller;

import cn.hjkilo.pojo.Auction;
import cn.hjkilo.pojo.Record;
import cn.hjkilo.pojo.User;
import cn.hjkilo.service.AuctionService;
import cn.hjkilo.service.Impl.AuctionServiceImpl;
import cn.hjkilo.service.Impl.ExportExcle;
import cn.hjkilo.service.Impl.RecordServiceImp;
import cn.hjkilo.service.RecordService;
import cn.hjkilo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

@Controller
@RequestMapping("/")
public class AuctionAction {

    @Autowired
    private AuctionService auctionService;//关于auctionServiceImpl中的userMapper对象为Null的解决办法

    @Autowired
    private RecordService recordService;

    @Autowired
    private UserService userService;



    @RequestMapping(value ="/showlist/{curr}")
    public String showlist(@PathVariable("curr") String curr, HttpServletRequest request, HttpServletResponse response){

        System.out.println(curr);
        HttpSession session = request.getSession();
//        AuctionService auctionService = new AuctionServiceImpl(); //罪魁祸首
        //查出有多少条数据
        int sum = auctionService.getAuctionCount();
        System.out.println("总共有"+sum+"条数据");
        //设置每页显示五条数据
        int limit = 5;
        int pagesize = 0;
        if (sum%limit==0){
            pagesize = sum/limit;
        }else{
            pagesize = sum/limit+1;
        }
        System.out.println(pagesize);
        session.setAttribute("pagesize",pagesize);
//        String curr =  request.getParameter("curr");
        int currpage = Integer.parseInt(curr);
        System.out.println("当前页数"+curr);
        //分页查询
        List<Auction> auctionlist = auctionService.pagingQuery(currpage,limit);
        session.setAttribute("auctionlist", auctionlist);
        session.setAttribute("currpage", currpage);
        return "list";

    }

    @RequestMapping(value = "/auction/{id}")
    public String auction(@PathVariable("id") String id,HttpServletRequest request){

        Auction auction = new Auction();

//        AuctionService auctionService = new AuctionServiceImpl();
//        RecordService recordService = new RecordServiceImp();
        HttpSession session = request.getSession();

        int auctionid =Integer.parseInt(id);
        //获得拍品信息
        auction = auctionService.getAuctionInformation(auctionid);
        //获得拍卖纪录
        List<Record> records = recordService.getRecordByAuctionId(auctionid);

        for (Record record : records) {
               System.out.println("设置user"+record.getUserid());
               User user = userService.getUserByPrimaryKey(record.getUserid());
               System.out.println("username : "+user.getUsername());
               record.setUser(user);
               //setAuction
        }


        session.setAttribute("auctioninfor", auction);

        session.setAttribute("recordInfor",records);

        return "auction";
    }
    @RequestMapping(value ="/auctionmanage/{curr}")
    public String auctionmanage (@PathVariable("curr")String curr,HttpServletRequest request){

        System.out.println(curr);
        HttpSession session = request.getSession();
        AuctionService auctionService = new AuctionServiceImpl();
        //查出有多少条数据
        int sum = auctionService.getAuctionCount();
        //设置每页显示五条数据
        int limit = 5;
        int pagesize = 0;
        if (sum%limit==0){
            pagesize = sum/limit;
        }else{
            pagesize = sum/limit+1;
        }
        System.out.println(pagesize);
        session.setAttribute("pagesize",pagesize);
//        String curr =  request.getParameter("curr");
        int currpage = Integer.parseInt(curr);
        System.out.println("当前页数"+curr);
        //分页查询
        List<Auction> auctionlist = auctionService.pagingQuery(limit,currpage);
        session.setAttribute("auctionlist", auctionlist);
        session.setAttribute("currpage", currpage);
        return "/auctionmanage/1.action";


    }
    @RequestMapping("/update")
    public String update(){


        return "/auctionmanage/1.action";
    }
    @RequestMapping("/del/{id}")
    public  String delaction(@PathVariable("id") String id){

        AuctionService auctionService = new AuctionServiceImpl();
        if (auctionService.delauction(Integer.parseInt(id))){
            JOptionPane.showMessageDialog(null, "删除成功！", "消息", JOptionPane.INFORMATION_MESSAGE);

            return ("/auctionmanage/1.action");
        }else {

            JOptionPane.showMessageDialog(null, "删除失败！", "消息", JOptionPane.INFORMATION_MESSAGE);


        }

        return "auctionmanager";

    }
    @RequestMapping()
    public void exportExcel(HttpServletResponse response){

        ExportExcle<Auction> ex = new ExportExcle<Auction>();
        AuctionService auctionService = new AuctionServiceImpl();
        String[] headers ={"拍品ID","拍品名称","开始时间","结束时间","起拍价格","图片地址","拍品描述"};
        List<Auction> auctionList = auctionService.getAAuction();
        try {
            String  title = "拍品信息表";  //title需要自己指定 比如写Sheet
            OutputStream out = new FileOutputStream("/home/alda/Desktop/拍品信息表.xls");
            ex.exportExcel(title,headers, auctionList, out);
            out.close();
            JOptionPane.showMessageDialog(null, "导出成功!");
            System.out.println("excel导出成功！");
            response.sendRedirect("/auctionmanage/1.action");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
 }

