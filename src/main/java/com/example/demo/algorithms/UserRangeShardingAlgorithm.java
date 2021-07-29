//package com.example.demo.algorithms;
//
//import com.google.common.collect.Range;
//import org.apache.shardingsphere.api.sharding.standard.RangeShardingAlgorithm;
//import org.apache.shardingsphere.api.sharding.standard.RangeShardingValue;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Component;
//
//import java.text.SimpleDateFormat;
//import java.util.Calendar;
//import java.util.Collection;
//import java.util.Date;
//import java.util.HashSet;
//
//@Component
//public class UserRangeShardingAlgorithm implements RangeShardingAlgorithm<Date> {
//
//    private static Logger logger = LoggerFactory.getLogger(UserRangeShardingAlgorithm.class);
//
//    private static SimpleDateFormat formatter = new SimpleDateFormat("yyyyMM");
//
//    @Override
//    public Collection<String> doSharding(Collection<String> availableTargetNames, RangeShardingValue<Date> rangeShardingValue) {
//        Collection<String> targetTables = new HashSet<>();
//        String prefixTargetTable = rangeShardingValue.getLogicTableName() + "_";
//        Range<Date> range = rangeShardingValue.getValueRange();
//        Date today = new Date();
//        Date startDate = range.lowerEndpoint();
//        Date endDate = range.upperEndpoint().after(today) ? today : range.upperEndpoint();
//
//        // 定义日期实例
//        Calendar rangDate = Calendar.getInstance();
//        // 设置日期起始时间
//        rangDate.setTime(startDate);
//        String endDateStr = formatter.format(endDate);
//        while (endDateStr.compareTo(formatter.format(rangDate.getTime())) >= 0) {
//            String table = prefixTargetTable + formatter.format(rangDate.getTime());
//            if (availableTargetNames.contains(table)) {
//                targetTables.add(table);
//            }
//            // 进行当前日期月份加1
//            rangDate.add(Calendar.MONTH, 1);
//        }
//        return targetTables;
//
//    }
//}
