package com.ruoyi.MiniProgram.Controller;

import com.ruoyi.common.utils.base64.Base64Utils;
import com.ruoyi.framework.config.RuoYiConfig;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.cycling.domain.Cycling;
import com.ruoyi.project.cycling.service.ICyclingService;
import com.ruoyi.project.information.domain.Information;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 小程序回收站
 */
@RestController
public class AppCyclingController {

    @Autowired
    private ICyclingService cyclingService;

    /**
     * 获取回收站列表
     * @return
     */
    @GetMapping("/app/cyclingList")
    public AjaxResult getCyclingList(){
        List<Cycling> cyclingList = cyclingService.getCyclingList();
        for(Cycling cycling : cyclingList){
            String imgFilePath = cycling.getCyclingImg().substring(cycling.getCyclingImg().indexOf("/",cycling.getCyclingImg().indexOf("/")+1));
            String imgPath = RuoYiConfig.getProfile() + imgFilePath;
            String img = Base64Utils.GetImageStr(imgPath);
            cycling.setCyclingImg(img);
        }
        return AjaxResult.success(cyclingList);
    }

    /**
     * 根据id获取回收站信息
     * @param id
     * @return
     */
    @GetMapping("/app/getCyclingById/{id}")
    public AjaxResult getCyclingById(@PathVariable("id") String id){
        Cycling cycling = cyclingService.selectCyclingById(id);
        String imgFilePath = cycling.getCyclingImg().substring(cycling.getCyclingImg().indexOf("/",cycling.getCyclingImg().indexOf("/")+1));
        String imgPath = RuoYiConfig.getProfile() + imgFilePath;
        String img = Base64Utils.GetImageStr(imgPath);
        cycling.setCyclingImg(img);
        return AjaxResult.success(cycling);
    }
}
