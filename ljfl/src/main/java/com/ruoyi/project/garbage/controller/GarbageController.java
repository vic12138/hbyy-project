package com.ruoyi.project.garbage.controller;

import java.util.List;

import com.ruoyi.project.garbage.domain.Garbage;
import com.ruoyi.project.garbage.service.IGarbageService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 垃圾分类Controller
 * 
 * @author zhao
 * @date 2019-12-18
 */
@RestController
@RequestMapping("/garbage")
public class GarbageController extends BaseController
{
    @Autowired
    private IGarbageService garbageService;

    /**
     * 查询垃圾分类列表
     */
    @PreAuthorize("@ss.hasPermi('system:garbage:list')")
    @GetMapping("/list")
    public TableDataInfo list(Garbage garbage)
    {
        startPage();
        List<Garbage> list = garbageService.selectGarbageList(garbage);
        return getDataTable(list);
    }

    /**
     * 导出垃圾分类列表
     */
    @PreAuthorize("@ss.hasPermi('system:garbage:export')")
    @Log(title = "垃圾分类", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(Garbage garbage)
    {
        List<Garbage> list = garbageService.selectGarbageList(garbage);
        ExcelUtil<Garbage> util = new ExcelUtil<Garbage>(Garbage.class);
        return util.exportExcel(list, "garbage");
    }

    /**
     * 获取垃圾分类详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:garbage:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(garbageService.selectGarbageById(id));
    }

    /**
     * 新增垃圾分类
     */
    @PreAuthorize("@ss.hasPermi('system:garbage:add')")
    @Log(title = "垃圾分类", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Garbage garbage)
    {
        return toAjax(garbageService.insertGarbage(garbage));
    }

    /**
     * 修改垃圾分类
     */
    @PreAuthorize("@ss.hasPermi('system:garbage:edit')")
    @Log(title = "垃圾分类", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Garbage garbage)
    {
        return toAjax(garbageService.updateGarbage(garbage));
    }

    /**
     * 删除垃圾分类
     */
    @PreAuthorize("@ss.hasPermi('system:garbage:remove')")
    @Log(title = "垃圾分类", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(garbageService.deleteGarbageByIds(ids));
    }

}
