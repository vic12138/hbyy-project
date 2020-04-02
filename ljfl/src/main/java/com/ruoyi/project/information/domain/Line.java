package com.ruoyi.project.information.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@ToString
public class Line {
    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    private Date time;

    private String pushNumber;
}
