package com.ruoyi.project.letter.domain;

import com.ruoyi.project.garbage.domain.Garbage;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

import java.util.List;

/**
 * 字母表对象 letter
 * 
 * @author zhao
 * @date 2019-12-18
 */
public class Letter extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 字母表id */
    private Long id;

    /** 字母 */
    @Excel(name = "字母")
    private String region;

    /** 垃圾列表 */
    private List<Garbage> garbageList;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setRegion(String region) 
    {
        this.region = region;
    }

    public String getRegion() 
    {
        return region;
    }

    public List<Garbage> getGarbageList() {
        return garbageList;
    }

    public void setGarbageList(List<Garbage> garbageList) {
        this.garbageList = garbageList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("region", getRegion())
            .toString();
    }
}
