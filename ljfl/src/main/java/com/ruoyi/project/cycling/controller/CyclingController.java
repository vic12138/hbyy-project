package com.ruoyi.project.cycling.controller;

import java.io.IOException;
import java.util.List;

import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.framework.config.RuoYiConfig;
import com.ruoyi.project.cycling.domain.Cycling;
import com.ruoyi.project.cycling.service.ICyclingService;
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
 * 回收站管理Controller
 * 
 * @author zhao
 * @date 2019-12-22
 */
@RestController
@RequestMapping("/cycling")
public class CyclingController extends BaseController
{
    @Autowired
    private ICyclingService cyclingService;

    /**
     * 查询回收站管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:cycling:list')")
    @GetMapping("/list")
    public TableDataInfo list(Cycling cycling)
    {
        startPage();
        List<Cycling> list = cyclingService.selectCyclingList(cycling);
        return getDataTable(list);
    }

    /**
     * 导出回收站管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:cycling:export')")
    @Log(title = "回收站管理", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(Cycling cycling)
    {
        List<Cycling> list = cyclingService.selectCyclingList(cycling);
        ExcelUtil<Cycling> util = new ExcelUtil<Cycling>(Cycling.class);
        return util.exportExcel(list, "cycling");
    }

    /**
     * 获取回收站管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:cycling:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(cyclingService.selectCyclingById(id));
    }

    /**
     * 新增回收站管理
     */
    @PreAuthorize("@ss.hasPermi('system:cycling:add')")
    @Log(title = "回收站管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Cycling cycling)
    {
        return toAjax(cyclingService.insertCycling(cycling));
    }

    /**
     * 修改回收站管理
     */
    @PreAuthorize("@ss.hasPermi('system:cycling:edit')")
    @Log(title = "回收站管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Cycling cycling)
    {
        return toAjax(cyclingService.updateCycling(cycling));
    }

    /**
     * 删除回收站管理
     */
    @PreAuthorize("@ss.hasPermi('system:cycling:remove')")
    @Log(title = "回收站管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(cyclingService.deleteCyclingByIds(ids));
    }

    /**
     * 回收站图片上传
     */
    @Log(title = "回收站图片", businessType = BusinessType.UPDATE)
    @PostMapping("/uploadCyclingImg")
    public AjaxResult uploadCyclingImg(@RequestParam("file") MultipartFile file) throws IOException
    {
        if (!file.isEmpty())
        {
            String fileImg = FileUploadUtils.upload(RuoYiConfig.getUploadCycPath(),file);
            AjaxResult ajax = AjaxResult.success();
            ajax.put("imageUrl", fileImg);
            return ajax;
        }
        return AjaxResult.error("上传图片异常，请联系管理员");
    }

    /**
     * 获取回收站总数
     */
    @GetMapping("/getCount")
    public AjaxResult GetCount()
    {
        return AjaxResult.success(cyclingService.getCyclingList(new Cycling()).size());
    }
}
