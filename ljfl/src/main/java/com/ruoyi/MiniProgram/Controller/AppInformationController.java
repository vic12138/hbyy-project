package com.ruoyi.MiniProgram.Controller;

import com.ruoyi.common.utils.base64.Base64Utils;
import com.ruoyi.framework.config.RuoYiConfig;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.information.domain.Information;
import com.ruoyi.project.information.service.IInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 小程序资讯列表
 */
@RestController
public class AppInformationController {

    @Autowired
    private IInformationService informationService;

    /**
     * 获取资讯列表
     * @return
     */
    @GetMapping("/app/informationList")
    public AjaxResult informationList(){
        List<Information> infomationList = informationService.getInfomationList();
        for(Information info : infomationList){
            String imgFilePath = info.getInfoImg().substring(info.getInfoImg().indexOf("/",info.getInfoImg().indexOf("/")+1));
            String imgPath = RuoYiConfig.getProfile() + imgFilePath;
            String img = Base64Utils.GetImageStr(imgPath);
            info.setInfoImg(img);
        }
        return AjaxResult.success(infomationList);
    }

    /**
     * 根据id获取资讯详情
     * @return
     */
    @GetMapping("/app/informationById/{id}")
    public AjaxResult informationById(@PathVariable("id")String id){
        Information info = informationService.selectInformationById(id);
        // 图片转为base64
        String imgFilePath = info.getInfoImg().substring(info.getInfoImg().indexOf("/",info.getInfoImg().indexOf("/")+1));
        String imgPath = RuoYiConfig.getProfile() + imgFilePath;
        String img = Base64Utils.GetImageStr(imgPath);
        info.setInfoImg(img);
        return AjaxResult.success(info);
    }
}
