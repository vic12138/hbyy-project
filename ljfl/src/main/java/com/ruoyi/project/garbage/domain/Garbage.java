package com.ruoyi.project.garbage.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;


import java.util.Date;

/**
 * 垃圾分类对象 garbage
 * 
 * @author zhao
 * @date 2019-12-18
 */
public class Garbage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 垃圾分类id */

    private String id;

    /** 垃圾分类名称 */
    @Excel(name = "垃圾分类名称")
    private String name;

    /** 垃圾分类类型（0-可回收垃圾，1-有害垃圾，2-厨余（湿）垃圾，3-其他（干）垃圾） */
    @Excel(name = "垃圾分类类型", readConverterExp = "0=-可回收垃圾，1-有害垃圾，2-厨余（湿")
    private String type;

    /** 解释 */
    @Excel(name = "解释")
    private String gExplain;

    /** 包含物品 */
    @Excel(name = "包含物品")
    private String contain;

    /** 投放提示 */
    @Excel(name = "投放提示")
    private String tip;

    /** 字母表id */
    @Excel(name = "字母表id")
    private Long letterId;

    /** 创建者 */
    @Excel(name = "创建者")
    private String createBy;

    /** 创建日期 */
    @Excel(name = "创建日期")
    private Date createTime;

    /** 更新者 */
    @Excel(name = "更新者")
    private String updateBy;

    /** 更新日期 */
    @Excel(name = "更新日期")
    private Date updateTime;

    /** 字母 */
    private String region;

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
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setType(String type)
    {
        this.type = type;
    }

    public String getType()
    {
        return type;
    }
    public void setgExplain(String gExplain)
    {
        this.gExplain = gExplain;
    }

    public String getgExplain()
    {
        return gExplain;
    }
    public void setContain(String contain)
    {
        this.contain = contain;
    }

    public String getContain()
    {
        return contain;
    }
    public void setTip(String tip)
    {
        this.tip = tip;
    }

    public String getTip()
    {
        return tip;
    }
    public void setLetterId(Long letterId)
    {
        this.letterId = letterId;
    }

    public Long getLetterId()
    {
        return letterId;
    }

    @Override
    public String getCreateBy() {
        return createBy;
    }

    @Override
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    @Override
    public Date getCreateTime() {
        return createTime;
    }

    @Override
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String getUpdateBy() {
        return updateBy;
    }

    @Override
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    @Override
    public Date getUpdateTime() {
        return updateTime;
    }

    @Override
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("type", getType())
            .append("gExplain", getgExplain())
            .append("contain", getContain())
            .append("tip", getTip())
            .append("letterId", getLetterId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
