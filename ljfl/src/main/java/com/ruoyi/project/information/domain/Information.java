package com.ruoyi.project.information.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 资讯管理对象 information
 * 
 * @author zhao
 * @date 2019-12-22
 */
public class Information extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 资讯id */
    private String id;

    /** 资讯标题 */
    @Excel(name = "资讯标题")
    private String title;

    /** 资讯内容 */
    @Excel(name = "资讯内容")
    private String content;

    /** 资讯图片 */
    @Excel(name = "资讯图片")
    private String infoImg;

    /** 观看数 */
    @Excel(name = "观看数")
    private String viewCount;

    public void setId(String id)
    {
        this.id = id;
    }

    public String getId()
    {
        return id;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setInfoImg(String infoImg) 
    {
        this.infoImg = infoImg;
    }

    public String getInfoImg() 
    {
        return infoImg;
    }
    public void setViewCount(String viewCount) 
    {
        this.viewCount = viewCount;
    }

    public String getViewCount() 
    {
        return viewCount;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("content", getContent())
            .append("infoImg", getInfoImg())
            .append("viewCount", getViewCount())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
