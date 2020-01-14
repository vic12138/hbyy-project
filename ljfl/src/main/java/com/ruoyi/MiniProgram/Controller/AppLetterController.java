package com.ruoyi.MiniProgram.Controller;

import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.letter.service.ILetterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 小程序分类列表
 */
@RestController
public class AppLetterController {

    @Autowired
    private ILetterService letterService;

    /**
     * 获取分类列表
     * @return
     */
    @GetMapping("/app/getRegion")
    public AjaxResult getRegion(){
        return AjaxResult.success(letterService.getAllLetterList());
    }
}
