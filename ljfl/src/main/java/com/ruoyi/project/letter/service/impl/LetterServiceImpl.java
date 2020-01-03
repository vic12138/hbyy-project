package com.ruoyi.project.letter.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.letter.mapper.LetterMapper;
import com.ruoyi.project.letter.domain.Letter;
import com.ruoyi.project.letter.service.ILetterService;

/**
 * 字母表Service业务层处理
 * 
 * @author zhao
 * @date 2019-12-18
 */
@Service
public class LetterServiceImpl implements ILetterService 
{
    @Autowired
    private LetterMapper letterMapper;

    /**
     * 查询字母表
     * 
     * @param id 字母表ID
     * @return 字母表
     */
    @Override
    public Letter selectLetterById(Long id)
    {
        return letterMapper.selectLetterById(id);
    }

    /**
     * 查询字母表列表
     * 
     * @param letter 字母表
     * @return 字母表
     */
    @Override
    public List<Letter> selectLetterList(Letter letter)
    {
        return letterMapper.selectLetterList(letter);
    }

    /**
     * 新增字母表
     * 
     * @param letter 字母表
     * @return 结果
     */
    @Override
    public int insertLetter(Letter letter)
    {
        return letterMapper.insertLetter(letter);
    }

    /**
     * 修改字母表
     * 
     * @param letter 字母表
     * @return 结果
     */
    @Override
    public int updateLetter(Letter letter)
    {
        return letterMapper.updateLetter(letter);
    }

    /**
     * 批量删除字母表
     * 
     * @param ids 需要删除的字母表ID
     * @return 结果
     */
    @Override
    public int deleteLetterByIds(Long[] ids)
    {
        return letterMapper.deleteLetterByIds(ids);
    }

    /**
     * 删除字母表信息
     * 
     * @param id 字母表ID
     * @return 结果
     */
    @Override
    public int deleteLetterById(Long id)
    {
        return letterMapper.deleteLetterById(id);
    }
}
