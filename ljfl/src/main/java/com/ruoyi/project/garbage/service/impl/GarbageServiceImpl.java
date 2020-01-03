package com.ruoyi.project.garbage.service.impl;

import java.util.List;
import java.util.UUID;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.IdUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.pinyin.PinyinUtils;
import com.ruoyi.project.garbage.domain.Garbage;
import com.ruoyi.project.garbage.mapper.GarbageMapper;
import com.ruoyi.project.garbage.service.IGarbageService;
import com.ruoyi.project.letter.domain.Letter;
import com.ruoyi.project.letter.service.ILetterService;
import com.ruoyi.project.letter.service.impl.LetterServiceImpl;
import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 垃圾分类Service业务层处理
 * 
 * @author zhao
 * @date 2019-12-18
 */
@Service
public class GarbageServiceImpl implements IGarbageService
{
    @Autowired
    private GarbageMapper garbageMapper;

    @Autowired
    private ILetterService letterService;

    /**
     * 查询垃圾分类
     * 
     * @param id 垃圾分类ID
     * @return 垃圾分类
     */
    @Override
    public Garbage selectGarbageById(String id)
    {
        return garbageMapper.selectGarbageById(id);
    }

    /**
     * 查询垃圾分类列表
     * 
     * @param garbage 垃圾分类
     * @return 垃圾分类
     */
    @Override
    public List<Garbage> selectGarbageList(Garbage garbage)
    {
        return garbageMapper.selectGarbageList(garbage);
    }

    /**
     * 新增垃圾分类
     * 
     * @param garbage 垃圾分类
     * @return 结果
     */
    @Override
    public int insertGarbage(Garbage garbage)
    {
        garbage.setCreateTime(DateUtils.getNowDate());
        garbage.setCreateBy(SecurityUtils.getUsername());
        garbage.setId(IdUtils.simpleUUID());
        // 获取名称首字母
        String firstLetter = PinyinUtils.getFirstLetter(garbage.getName());
        // 根据首字母获取字母表id

        return garbageMapper.insertGarbage(garbage);
    }

    /**
     * 修改垃圾分类
     * 
     * @param garbage 垃圾分类
     * @return 结果
     */
    @Override
    public int updateGarbage(Garbage garbage)
    {
        garbage.setUpdateTime(DateUtils.getNowDate());
        garbage.setUpdateBy(SecurityUtils.getUsername());
        return garbageMapper.updateGarbage(garbage);
    }

    /**
     * 批量删除垃圾分类
     * 
     * @param ids 需要删除的垃圾分类ID
     * @return 结果
     */
    @Override
    public int deleteGarbageByIds(String[] ids)
    {
        return garbageMapper.deleteGarbageByIds(ids);
    }

    /**
     * 删除垃圾分类信息
     * 
     * @param id 垃圾分类ID
     * @return 结果
     */
    @Override
    public int deleteGarbageById(String id)
    {
        return garbageMapper.deleteGarbageById(id);
    }
}
