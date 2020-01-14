package com.ruoyi.project.appImg.controller;

import java.io.IOException;
import java.util.List;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.framework.config.RuoYiConfig;
import com.ruoyi.project.appImg.domain.AppImg;
import com.ruoyi.project.appImg.service.IAppImgService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 图片轮播图Controller
 * 
 * @author zhao
 * @date 2020-01-13
 */
@RestController
@RequestMapping("/system/img")
public class AppImgController extends BaseController
{
    @Autowired
    private IAppImgService appImgService;

    /**
     * 查询图片轮播图列表
     */
    @PreAuthorize("@ss.hasPermi('system:img:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppImg appImg)
    {
        startPage();
        List<AppImg> list = appImgService.selectAppImgList(appImg);
        return getDataTable(list);
    }

    /**
     * 导出图片轮播图列表
     */
    @PreAuthorize("@ss.hasPermi('system:img:export')")
    @Log(title = "图片轮播图", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(AppImg appImg)
    {
        List<AppImg> list = appImgService.selectAppImgList(appImg);
        ExcelUtil<AppImg> util = new ExcelUtil<AppImg>(AppImg.class);
        return util.exportExcel(list, "img");
    }

    /**
     * 获取图片轮播图详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:img:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(appImgService.selectAppImgById(id));
    }

    /**
     * 新增图片轮播图
     */
    @PreAuthorize("@ss.hasPermi('system:img:add')")
    @Log(title = "图片轮播图", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppImg appImg)
    {
        return toAjax(appImgService.insertAppImg(appImg));
    }

    /**
     * 修改图片轮播图
     */
    @PreAuthorize("@ss.hasPermi('system:img:edit')")
    @Log(title = "图片轮播图", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppImg appImg)
    {
        return toAjax(appImgService.updateAppImg(appImg));
    }

    /**
     * 删除图片轮播图
     */
    @PreAuthorize("@ss.hasPermi('system:img:remove')")
    @Log(title = "图片轮播图", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(appImgService.deleteAppImgByIds(ids));
    }

    /*
     * 首页图片上传
     */
    @Log(title = "首页图片上传", businessType = BusinessType.UPDATE)
    @PostMapping("/uploadIndexImg")
    public AjaxResult uploadCyclingImg(@RequestParam("file") MultipartFile file) throws IOException
    {
        if (!file.isEmpty())
        {
            String fileImg = FileUploadUtils.upload(RuoYiConfig.getUploadImgPath(),file);
            AjaxResult ajax = AjaxResult.success();
            ajax.put("imageUrl", fileImg);
            return ajax;
        }
        return AjaxResult.error("上传图片异常，请联系管理员");
    }


    /**
     * 图片状态修改
     */
    @PreAuthorize("@ss.hasPermi('system:img:edit')")
    @Log(title = "图片状态修改", businessType = BusinessType.UPDATE)
    @PutMapping("/changeImgStatus")
    public AjaxResult changeStatus(@RequestBody AppImg appImg)
    {
        appImg.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(appImgService.updateAppImg(appImg));
    }
}
