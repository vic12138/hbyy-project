package com.ruoyi.project.garbage.service;

import com.ruoyi.project.garbage.domain.Garbage;
import java.util.List;

/**
 * 垃圾分类Service接口
 * 
 * @author zhao
 * @date 2019-12-18
 */
public interface IGarbageService 
{
    /**
     * 查询垃圾分类
     * 
     * @param id 垃圾分类ID
     * @return 垃圾分类
     */
    public Garbage selectGarbageById(String id);

    /**
     * 查询垃圾分类列表
     * 
     * @param garbage 垃圾分类
     * @return 垃圾分类集合
     */
    public List<Garbage> selectGarbageList(Garbage garbage);

    /**
     * 新增垃圾分类
     * 
     * @param garbage 垃圾分类
     * @return 结果
     */
    public int insertGarbage(Garbage garbage);

    /**
     * 修改垃圾分类
     * 
     * @param garbage 垃圾分类
     * @return 结果
     */
    public int updateGarbage(Garbage garbage);

    /**
     * 批量删除垃圾分类
     * 
     * @param ids 需要删除的垃圾分类ID
     * @return 结果
     */
    public int deleteGarbageByIds(String[] ids);

    /**
     * 删除垃圾分类信息
     * 
     * @param id 垃圾分类ID
     * @return 结果
     */
    public int deleteGarbageById(String id);
}
