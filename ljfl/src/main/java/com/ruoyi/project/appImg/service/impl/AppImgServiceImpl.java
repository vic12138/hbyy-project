package com.ruoyi.project.appImg.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.IdUtils;
import com.ruoyi.project.appImg.domain.AppImg;
import com.ruoyi.project.appImg.mapper.AppImgMapper;
import com.ruoyi.project.appImg.service.IAppImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 图片轮播图Service业务层处理
 * 
 * @author zhao
 * @date 2020-01-13
 */
@Service
public class AppImgServiceImpl implements IAppImgService
{
    @Autowired
    private AppImgMapper appImgMapper;

    /**
     * 查询图片轮播图
     * 
     * @param id 图片轮播图ID
     * @return 图片轮播图
     */
    @Override
    public AppImg selectAppImgById(String id)
    {
        return appImgMapper.selectAppImgById(id);
    }

    /**
     * 查询图片轮播图列表
     * 
     * @param appImg 图片轮播图
     * @return 图片轮播图
     */
    @Override
    public List<AppImg> selectAppImgList(AppImg appImg)
    {
        return appImgMapper.selectAppImgList(appImg);
    }

    /**
     * 新增图片轮播图
     * 
     * @param appImg 图片轮播图
     * @return 结果
     */
    @Override
    public int insertAppImg(AppImg appImg)
    {
        appImg.setId(IdUtils.simpleUUID());
        appImg.setCreateTime(DateUtils.getNowDate());
        return appImgMapper.insertAppImg(appImg);
    }

    /**
     * 修改图片轮播图
     * 
     * @param appImg 图片轮播图
     * @return 结果
     */
    @Override
    public int updateAppImg(AppImg appImg)
    {
        appImg.setUpdateTime(DateUtils.getNowDate());
        return appImgMapper.updateAppImg(appImg);
    }

    /**
     * 批量删除图片轮播图
     * 
     * @param ids 需要删除的图片轮播图ID
     * @return 结果
     */
    @Override
    public int deleteAppImgByIds(String[] ids)
    {
        return appImgMapper.deleteAppImgByIds(ids);
    }

    /**
     * 删除图片轮播图信息
     * 
     * @param id 图片轮播图ID
     * @return 结果
     */
    @Override
    public int deleteAppImgById(String id)
    {
        return appImgMapper.deleteAppImgById(id);
    }
}
