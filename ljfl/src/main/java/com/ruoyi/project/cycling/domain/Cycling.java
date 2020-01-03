package com.ruoyi.project.cycling.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 回收站管理对象 cycling
 * 
 * @author zhao
 * @date 2019-12-22
 */
public class Cycling extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 回收站id */
    private String id;

    /** 回收站名称 */
    @Excel(name = "回收站名称")
    private String cyclingName;

    /** 回收站名称 */
    @Excel(name = "回收站图片")
    private String cyclingImg;

    /** 回收站联系方式 */
    @Excel(name = "回收站联系方式")
    private String cyclingMobile;

    /** 回收站负责人 */
    @Excel(name = "回收站负责人")
    private String cyclingMan;

    /** 回收站介绍 */
    @Excel(name = "回收站介绍")
    private String cyclingIntroduce;

    /** 回收站详情 */
    @Excel(name = "回收站详情")
    private String cyclingDetail;

    /** 回收站具体地址 */
    @Excel(name = "回收站具体地址")
    private String cyclingAddress;

    /** 地址x轴 */
    @Excel(name = "地址x轴")
    private String addressX;

    /** 地址y轴 */
    @Excel(name = "地址y轴")
    private String addressY;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setCyclingName(String cyclingName) 
    {
        this.cyclingName = cyclingName;
    }

    public String getCyclingName() 
    {
        return cyclingName;
    }

    public void setCyclingImg(String cyclingImg)
    {
        this.cyclingImg = cyclingImg;
    }

    public String getCyclingImg()
    {
        return cyclingImg;
    }

    public void setCyclingMobile(String cyclingMobile) 
    {
        this.cyclingMobile = cyclingMobile;
    }

    public String getCyclingMobile() 
    {
        return cyclingMobile;
    }
    public void setCyclingMan(String cyclingMan) 
    {
        this.cyclingMan = cyclingMan;
    }

    public String getCyclingMan() 
    {
        return cyclingMan;
    }
    public void setCyclingIntroduce(String cyclingIntroduce) 
    {
        this.cyclingIntroduce = cyclingIntroduce;
    }

    public String getCyclingIntroduce() 
    {
        return cyclingIntroduce;
    }
    public void setCyclingDetail(String cyclingDetail) 
    {
        this.cyclingDetail = cyclingDetail;
    }

    public String getCyclingDetail() 
    {
        return cyclingDetail;
    }
    public void setCyclingAddress(String cyclingAddress) 
    {
        this.cyclingAddress = cyclingAddress;
    }

    public String getCyclingAddress() 
    {
        return cyclingAddress;
    }

    public String getAddressX() {
        return addressX;
    }

    public void setAddressX(String addressX) {
        this.addressX = addressX;
    }

    public String getAddressY() {
        return addressY;
    }

    public void setAddressY(String addressY) {
        this.addressY = addressY;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("cyclingName", getCyclingName())
            .append("cyclingMobile", getCyclingMobile())
            .append("cyclingMan", getCyclingMan())
            .append("cyclingIntroduce", getCyclingIntroduce())
            .append("cyclingDetail", getCyclingDetail())
            .append("cyclingAddress", getCyclingAddress())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
