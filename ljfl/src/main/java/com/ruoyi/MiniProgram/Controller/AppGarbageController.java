package com.ruoyi.MiniProgram.Controller;

import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.garbage.domain.Garbage;
import com.ruoyi.project.garbage.service.IGarbageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AppGarbageController {

    @Autowired
    private IGarbageService garbageService;

    /**
     * 获取垃圾分类集合
     * @return
     */
    @GetMapping("/app/garbageList")
    public AjaxResult getGarbageList(){
       return AjaxResult.success(garbageService.getGarbageList());
    }
}
