package com.ruoyi.project.cycling.service;

import com.ruoyi.project.cycling.domain.Cycling;
import java.util.List;

/**
 * 回收站管理Service接口
 * 
 * @author zhao
 * @date 2019-12-22
 */
public interface ICyclingService 
{
    /**
     * 查询回收站管理
     * 
     * @param id 回收站管理ID
     * @return 回收站管理
     */
    public Cycling  selectCyclingById(String id);

    /**
     * 查询回收站管理列表
     * 
     * @param cycling 回收站管理
     * @return 回收站管理集合
     */
    public List<Cycling> selectCyclingList(Cycling cycling);

    /**
     * 新增回收站管理
     * 
     * @param cycling 回收站管理
     * @return 结果
     */
    public int insertCycling(Cycling cycling);

    /**
     * 修改回收站管理
     * 
     * @param cycling 回收站管理
     * @return 结果
     */
    public int updateCycling(Cycling cycling);

    /**
     * 批量删除回收站管理
     * 
     * @param ids 需要删除的回收站管理ID
     * @return 结果
     */
    public int deleteCyclingByIds(String[] ids);

    /**
     * 删除回收站管理信息
     * 
     * @param id 回收站管理ID
     * @return 结果
     */
    public int deleteCyclingById(String id);

    /**
     * 获取回收站list
     * @return
     */
    public List<Cycling> getCyclingList();
}
