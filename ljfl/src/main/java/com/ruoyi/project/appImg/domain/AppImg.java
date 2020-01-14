package com.ruoyi.project.appImg.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 图片轮播图对象 app_img
 * 
 * @author zhao
 * @date 2020-01-13
 */
public class AppImg extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private String id;

    /** 图片路径 */
    @Excel(name = "图片路径")
    private String imgPath;

    /** 图片标记（0-首页，1-资讯页） */
    @Excel(name = "图片标记", readConverterExp = "0=-首页，1-资讯页")
    private String imgTab;

    /** 开启标志（0代表开启 1代表关闭） */
    private String openFlag;

    /** 删除标志（0代表存在 1代表删除） */
    private String delFlag;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setImgPath(String imgPath) 
    {
        this.imgPath = imgPath;
    }

    public String getImgPath() 
    {
        return imgPath;
    }
    public void setImgTab(String imgTab) 
    {
        this.imgTab = imgTab;
    }

    public String getImgTab() 
    {
        return imgTab;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    public String getOpenFlag() {
        return openFlag;
    }

    public void setOpenFlag(String openFlag) {
        this.openFlag = openFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("imgPath", getImgPath())
            .append("imgTab", getImgTab())
            .append("delFlag", getDelFlag())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
