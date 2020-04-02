package com.ruoyi.project.information.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.IdUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.project.information.domain.Information;
import com.ruoyi.project.information.domain.Line;
import com.ruoyi.project.information.mapper.InformationMapper;
import com.ruoyi.project.information.service.IInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 资讯管理Service业务层处理
 * 
 * @author zhao
 * @date 2019-12-22
 */
@Service
public class InformationServiceImpl implements IInformationService
{
    @Autowired
    private InformationMapper informationMapper;

    /**
     * 查询资讯管理
     * 
     * @param id 资讯管理ID
     * @return 资讯管理
     */
    @Override
    public Information selectInformationById(String id)
    {
        return informationMapper.selectInformationById(id);
    }

    /**
     * 查询资讯管理列表
     * 
     * @param information 资讯管理
     * @return 资讯管理
     */
    @Override
    public List<Information> selectInformationList(Information information)
    {
        return informationMapper.selectInformationList(information);
    }

    /**
     * 新增资讯管理
     * 
     * @param information 资讯管理
     * @return 结果
     */
    @Override
    public int insertInformation(Information information)
    {
        information.setId(IdUtils.simpleUUID());
        information.setCreateTime(DateUtils.getNowDate());
        information.setCreateBy(SecurityUtils.getUsername());
        return informationMapper.insertInformation(information);
    }

    /**
     * 修改资讯管理
     * 
     * @param information 资讯管理
     * @return 结果
     */
    @Override
    public int updateInformation(Information information)
    {
        information.setUpdateTime(DateUtils.getNowDate());
        information.setUpdateBy(SecurityUtils.getUsername());
        return informationMapper.updateInformation(information);
    }

    /**
     * 批量删除资讯管理
     * 
     * @param ids 需要删除的资讯管理ID
     * @return 结果
     */
    @Override
    public int deleteInformationByIds(String[] ids)
    {
        return informationMapper.deleteInformationByIds(ids);
    }

    /**
     * 删除资讯管理信息
     * 
     * @param id 资讯管理ID
     * @return 结果
     */
    @Override
    public int deleteInformationById(String id)
    {
        return informationMapper.deleteInformationById(id);
    }

    /**
     * 获取资讯list
     * @return
     */
    @Override
    public List<Information> getInfomationList() {
        return informationMapper.selectInformationList(new Information());
    }

    /**
     * 增加点击量
     *
     * @param information 资讯管理
     * @return 结果
     */
    @Override
    public int addViewCount(Information information)
    {
        Integer viewCount = Integer.parseInt(information.getViewCount()) + 1;
        information.setViewCount(viewCount.toString());
        return informationMapper.updateInformation(information);
    }

    /**
     * 获取资讯总条数
     *
     * @return
     */
    @Override
    public int getTotalCount() {
        return informationMapper.selectTotalCount();
    }

    /**
     * 获取资讯观看总数
     *
     * @return
     */
    @Override
    public int getViewCount() {
        return informationMapper.selectViewCount();
    }

    /**
     * 获取线形图数据
     *
     * @return
     */
    @Override
    public Line[] getInformationLine() {
        return informationMapper.selectLine();
    }
}
