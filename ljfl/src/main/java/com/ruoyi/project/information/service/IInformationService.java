package com.ruoyi.project.information.service;

import com.ruoyi.project.information.domain.Information;
import java.util.List;

/**
 * 资讯管理Service接口
 * 
 * @author zhao
 * @date 2019-12-22
 */
public interface IInformationService 
{
    /**
     * 查询资讯管理
     * 
     * @param id 资讯管理ID
     * @return 资讯管理
     */
    public Information selectInformationById(String id);

    /**
     * 查询资讯管理列表
     * 
     * @param information 资讯管理
     * @return 资讯管理集合
     */
    public List<Information> selectInformationList(Information information);

    /**
     * 新增资讯管理
     * 
     * @param information 资讯管理
     * @return 结果
     */
    public int insertInformation(Information information);

    /**
     * 修改资讯管理
     * 
     * @param information 资讯管理
     * @return 结果
     */
    public int updateInformation(Information information);

    /**
     * 批量删除资讯管理
     * 
     * @param ids 需要删除的资讯管理ID
     * @return 结果
     */
    public int deleteInformationByIds(String[] ids);

    /**
     * 删除资讯管理信息
     * 
     * @param id 资讯管理ID
     * @return 结果
     */
    public int deleteInformationById(String id);
}
