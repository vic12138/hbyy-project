package com.ruoyi.project.letter.service;

import com.ruoyi.project.letter.domain.Letter;
import java.util.List;

/**
 * 字母表Service接口
 * 
 * @author zhao
 * @date 2019-12-18
 */
public interface ILetterService 
{
    /**
     * 查询字母表
     * 
     * @param id 字母表ID
     * @return 字母表
     */
    public Letter selectLetterById(Long id);

    /**
     * 查询字母表列表
     * 
     * @param letter 字母表
     * @return 字母表集合
     */
    public List<Letter> selectLetterList(Letter letter);

    /**
     * 新增字母表
     * 
     * @param letter 字母表
     * @return 结果
     */
    public int insertLetter(Letter letter);

    /**
     * 修改字母表
     * 
     * @param letter 字母表
     * @return 结果
     */
    public int updateLetter(Letter letter);

    /**
     * 批量删除字母表
     * 
     * @param ids 需要删除的字母表ID
     * @return 结果
     */
    public int deleteLetterByIds(Long[] ids);

    /**
     * 删除字母表信息
     * 
     * @param id 字母表ID
     * @return 结果
     */
    public int deleteLetterById(Long id);
}
