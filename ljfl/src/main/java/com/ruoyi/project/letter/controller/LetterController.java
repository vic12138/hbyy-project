package com.ruoyi.project.letter.controller;

import java.util.List;
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
import com.ruoyi.project.letter.domain.Letter;
import com.ruoyi.project.letter.service.ILetterService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 字母表Controller
 * 
 * @author zhao
 * @date 2019-12-18
 */
@RestController
@RequestMapping("/letter")
public class LetterController extends BaseController
{
    @Autowired
    private ILetterService letterService;

    /**
     * 查询字母表列表
     */
    @PreAuthorize("@ss.hasPermi('letter:letter:list')")
    @GetMapping("/list")
    public TableDataInfo list(Letter letter)
    {
        startPage();
        List<Letter> list = letterService.selectLetterList(letter);
        return getDataTable(list);
    }

    /**
     * 导出字母表列表
     */
    @PreAuthorize("@ss.hasPermi('letter:letter:export')")
    @Log(title = "字母表", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(Letter letter)
    {
        List<Letter> list = letterService.selectLetterList(letter);
        ExcelUtil<Letter> util = new ExcelUtil<Letter>(Letter.class);
        return util.exportExcel(list, "letter");
    }

    /**
     * 获取字母表详细信息
     */
    @PreAuthorize("@ss.hasPermi('letter:letter:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(letterService.selectLetterById(id));
    }

    /**
     * 新增字母表
     */
    @PreAuthorize("@ss.hasPermi('letter:letter:add')")
    @Log(title = "字母表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Letter letter)
    {
        return toAjax(letterService.insertLetter(letter));
    }

    /**
     * 修改字母表
     */
    @PreAuthorize("@ss.hasPermi('letter:letter:edit')")
    @Log(title = "字母表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Letter letter)
    {
        return toAjax(letterService.updateLetter(letter));
    }

    /**
     * 删除字母表
     */
    @PreAuthorize("@ss.hasPermi('letter:letter:remove')")
    @Log(title = "字母表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(letterService.deleteLetterByIds(ids));
    }

    /**
     * 查询字母表列表(不分页)
     */
    @GetMapping("/getLetterList")
    public AjaxResult getLetterList()
    {
        return AjaxResult.success(letterService.selectLetterList(new Letter()));
    }
}
