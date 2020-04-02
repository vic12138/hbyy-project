package com.ruoyi.MiniProgram.Controller;

import com.ruoyi.MiniProgram.common.ImgConstant;
import com.ruoyi.common.utils.base64.Base64Utils;
import com.ruoyi.framework.config.RuoYiConfig;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.appImg.domain.AppImg;
import com.ruoyi.project.appImg.service.IAppImgService;
import com.ruoyi.project.information.domain.Information;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class AppImageController {

    @Autowired
    private IAppImgService appImgService;

    /**
     * 将图片路径转为base64
     * @param image
     * @return
     */
    @GetMapping("/app/imageToBase64")
    public AjaxResult getImageToBase64(@RequestParam("image")String image){
        // 截取路径
        String imgFilePath = image.substring(image.indexOf("/",image.indexOf("/")+1));
        String imgPath = RuoYiConfig.getProfile() + imgFilePath;
        // 将图片转为base64
        String imgBase64 = Base64Utils.GetImageStr(imgPath);
        return AjaxResult.success(imgBase64);
    }


    /**
     * 获取首页图片
     * @return
     */
    @GetMapping("/app/imgOfIndex")
    public AjaxResult imgOfIndex(){
        AppImg appImg = new AppImg();
        appImg.setImgTab(ImgConstant.INDEXTAB);
        appImg.setOpenFlag(ImgConstant.IMG_OPNE);
        List<AppImg> appImgs = appImgService.selectAppImgList(appImg);
//        for(AppImg img : appImgs){
//            String imgFilePath = img.getImgPath().substring(img.getImgPath().indexOf("/",img.getImgPath().indexOf("/")+1));
//            String imgPath = RuoYiConfig.getProfile() + imgFilePath;
//            String imgFile = Base64Utils.GetImageStr(imgPath);
//            img.setImgPath(imgFile);
//        }
        // 添加图片前缀
        appImgs.stream().forEach(img ->{
            img.setImgPath(ImgConstant.PREFIX + img.getImgPath());
        });
        return AjaxResult.success(appImgs);
    }

    /**
     * 获取资讯图片
     * @return
     */
    @GetMapping("/app/imgOfInfo")
    public AjaxResult imgOfInfo(){
        AppImg appImg = new AppImg();
        appImg.setImgTab(ImgConstant.INFOTAB);
        appImg.setOpenFlag(ImgConstant.IMG_OPNE);
        List<AppImg> appImgs = appImgService.selectAppImgList(appImg);
//        for(AppImg img : appImgs){
//            String imgFilePath = img.getImgPath().substring(img.getImgPath().indexOf("/",img.getImgPath().indexOf("/")+1));
//            String imgPath = RuoYiConfig.getProfile() + imgFilePath;
//            String imgFile = Base64Utils.GetImageStr(imgPath);
//            img.setImgPath(imgFile);
//        }
        // 添加图片前缀
        appImgs.stream().forEach(img ->{
            img.setImgPath(ImgConstant.PREFIX + img.getImgPath());
        });
        return AjaxResult.success(appImgs);
    }
}
