package com.ruoyi.common.utils.pinyin;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

/**
 * 拼音工具类
 */
public class PinyinUtils {
    /**
     * 获取名称首字符的首字母
     * @param cyclingName 中文名称
     * @return
     * @throws BadHanyuPinyinOutputFormatCombination
     */
    public static String getFirstLetter(String cyclingName) {
        char[] charArray = cyclingName.toCharArray();
        StringBuilder pinyin = new StringBuilder();
        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
        // 设置大小写格式
        defaultFormat.setCaseType(HanyuPinyinCaseType.UPPERCASE);
        // 设置声调格式：
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        try {
            for (int i = 0; i < charArray.length; i++) {
                // 匹配中文,非中文转换会转换成null
                if (Character.toString(charArray[i]).matches("[\\u4E00-\\u9FA5]+")) {
                    String[] hanyuPinyinStringArray = new String[0];
                        hanyuPinyinStringArray = PinyinHelper
                                .toHanyuPinyinStringArray(charArray[i], defaultFormat);
                    if (hanyuPinyinStringArray != null) {
                        pinyin.append(hanyuPinyinStringArray[0].charAt(0));
                        break;
                    }
                }
            }
        } catch (BadHanyuPinyinOutputFormatCombination badHanyuPinyinOutputFormatCombination) {
            badHanyuPinyinOutputFormatCombination.printStackTrace();
        }
        return pinyin.toString();
    }
}
