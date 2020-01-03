package com.ruoyi.project.information.controller;

import java.io.IOException;
import java.util.List;

import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.framework.config.RuoYiConfig;
import com.ruoyi.project.information.domain.Information;
import com.ruoyi.project.information.service.IInformationService;
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
 * 资讯管理Controller
 * 
 * @author zhao
 * @date 2019-12-22
 */
@RestController
@RequestMapping("/information")
public class InformationController extends BaseController
{
    @Autowired
    private IInformationService informationService;

    /**
     * 查询资讯管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:information:list')")
    @GetMapping("/list")
    public TableDataInfo list(Information information)
    {
        startPage();
        List<Information> list = informationService.selectInformationList(information);
        return getDataTable(list);
    }

    /**
     * 导出资讯管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:information:export')")
    @Log(title = "资讯管理", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(Information information)
    {
        List<Information> list = informationService.selectInformationList(information);
        ExcelUtil<Information> util = new ExcelUtil<Information>(Information.class);
        return util.exportExcel(list, "information");
    }

    /**
     * 获取资讯管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:information:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(informationService.selectInformationById(id));
    }

    /**
     * 新增资讯管理
     */
    @PreAuthorize("@ss.hasPermi('system:information:add')")
    @Log(title = "资讯管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Information information)
    {
        return toAjax(informationService.insertInformation(information));
    }

    /**
     * 修改资讯管理
     */
    @PreAuthorize("@ss.hasPermi('system:information:edit')")
    @Log(title = "资讯管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Information information)
    {
        return toAjax(informationService.updateInformation(information));
    }

    /**
     * 删除资讯管理
     */
    @PreAuthorize("@ss.hasPermi('system:information:remove')")
    @Log(title = "资讯管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(informationService.deleteInformationByIds(ids));
    }

    /*
     * 资讯图片上传
     */
    @Log(title = "资讯图片上传", businessType = BusinessType.UPDATE)
    @PostMapping("/uploadInfoImg")
    public AjaxResult uploadCyclingImg(@RequestParam("file") MultipartFile file) throws IOException
    {
        if (!file.isEmpty())
        {
            String fileImg = FileUploadUtils.upload(RuoYiConfig.getUploadInfoPath(),file);
            AjaxResult ajax = AjaxResult.success();
            ajax.put("imageUrl", fileImg);
            return ajax;
        }
        return AjaxResult.error("上传图片异常，请联系管理员");
    }
}
