package com.ruoyi.project.cycling.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.IdUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.project.cycling.domain.Cycling;
import com.ruoyi.project.cycling.mapper.CyclingMapper;
import com.ruoyi.project.cycling.service.ICyclingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 回收站管理Service业务层处理
 * 
 * @author zhao
 * @date 2019-12-22
 */
@Service
public class CyclingServiceImpl implements ICyclingService
{
    @Autowired
    private CyclingMapper cyclingMapper;

    /**
     * 查询回收站管理
     * 
     * @param id 回收站管理ID
     * @return 回收站管理
     */
    @Override
    public Cycling selectCyclingById(String id)
    {
        return cyclingMapper.selectCyclingById(id);
    }

    /**
     * 查询回收站管理列表
     * 
     * @param cycling 回收站管理
     * @return 回收站管理
     */
    @Override
    public List<Cycling> selectCyclingList(Cycling cycling)
    {
        return cyclingMapper.selectCyclingList(cycling);
    }

    /**
     * 新增回收站管理
     * 
     * @param cycling 回收站管理
     * @return 结果
     */
    @Override
    public int insertCycling(Cycling cycling)
    {
        cycling.setCreateTime(DateUtils.getNowDate());
        cycling.setCreateBy(SecurityUtils.getUsername());
        cycling.setId(IdUtils.simpleUUID());
        return cyclingMapper.insertCycling(cycling);
    }

    /**
     * 修改回收站管理
     * 
     * @param cycling 回收站管理
     * @return 结果
     */
    @Override
    public int updateCycling(Cycling cycling)
    {
        cycling.setUpdateTime(DateUtils.getNowDate());
        cycling.setUpdateBy(SecurityUtils.getUsername());
        return cyclingMapper.updateCycling(cycling);
    }

    /**
     * 批量删除回收站管理
     * 
     * @param ids 需要删除的回收站管理ID
     * @return 结果
     */
    @Override
    public int deleteCyclingByIds(String[] ids)
    {
        return cyclingMapper.deleteCyclingByIds(ids);
    }

    /**
     * 删除回收站管理信息
     * 
     * @param id 回收站管理ID
     * @return 结果
     */
    @Override
    public int deleteCyclingById(String id)
    {
        return cyclingMapper.deleteCyclingById(id);
    }

    /**
     * 获取回收站list
     * @return
     */
    @Override
    public List<Cycling> getCyclingList() {
        return cyclingMapper.selectCyclingList(new Cycling());
    }
}
