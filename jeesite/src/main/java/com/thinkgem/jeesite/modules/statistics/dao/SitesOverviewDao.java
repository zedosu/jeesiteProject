/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.statistics.dao;

import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 网站概述DAO接口
 *
 * @author 张航
 * @version 2017-01-17
 */
@MyBatisDao
public interface SitesOverviewDao {

	/*List<Map<String, String>> indexCount2();*/

    List<Map<String, String>> siteDetails(@Param(value = "siteId") String siteId, @Param(value = "currentDate") String currentDate);

    List<Map<String, String>> overviewByDay(@Param(value = "siteId") String siteId);

    List<Map<String, String>> chartByDay(@Param(value = "siteId") String siteId,
                                         @Param(value = "currentDate") String currentDate,
                                         @Param(value = "day") Integer day);

    List<Map<String, String>> chartByDayAllSite(@Param(value = "currentDate") String currentDate,
                                                @Param(value = "day") Integer day);
}