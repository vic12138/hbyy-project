package com.ruoyi.project.appImg.service;

import com.ruoyi.project.appImg.domain.AppImg;

import java.util.List;

/**
 * 图片轮播图Service接口
 * 
 * @author zhao
 * @date 2020-01-13
 */
public interface IAppImgService 
{
    /**
     * 查询图片轮播图
     * 
     * @param id 图片轮播图ID
     * @return 图片轮播图
     */
    public AppImg selectAppImgById(String id);

    /**
     * 查询图片轮播图列表
     * 
     * @param appImg 图片轮播图
     * @return 图片轮播图集合
     */
    public List<AppImg> selectAppImgList(AppImg appImg);

    /**
     * 新增图片轮播图
     * 
     * @param appImg 图片轮播图
     * @return 结果
     */
    public int insertAppImg(AppImg appImg);

    /**
     * 修改图片轮播图
     * 
     * @param appImg 图片轮播图
     * @return 结果
     */
    public int updateAppImg(AppImg appImg);

    /**
     * 批量删除图片轮播图
     * 
     * @param ids 需要删除的图片轮播图ID
     * @return 结果
     */
    public int deleteAppImgByIds(String[] ids);

    /**
     * 删除图片轮播图信息
     * 
     * @param id 图片轮播图ID
     * @return 结果
     */
    public int deleteAppImgById(String id);
}
