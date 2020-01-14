package com.ruoyi.MiniProgram.Controller;

import com.ruoyi.common.utils.base64.Base64Utils;
import com.ruoyi.framework.config.RuoYiConfig;
import com.ruoyi.framework.web.domain.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class AppImageController {
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
}
