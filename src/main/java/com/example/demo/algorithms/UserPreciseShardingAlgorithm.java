//package com.example.demo.algorithms;
//
//import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
//import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;
//import org.springframework.stereotype.Component;
//
//import java.text.SimpleDateFormat;
//import java.util.Collection;
//import java.util.Date;
//
//@Component
//public class UserPreciseShardingAlgorithm implements PreciseShardingAlgorithm<Date> {
//
//    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMM");
//
//
//    @Override
//    public String doSharding(Collection<String> collection, PreciseShardingValue<Date> preciseShardingValue) {
//        // 基本的表名_年份月份  t_user_202107
//        Date date = preciseShardingValue.getValue();
//        String targetTable = preciseShardingValue.getLogicTableName() + "_" + simpleDateFormat.format(date);
//        if (collection.contains(targetTable)){
//            return targetTable;
//        }
//        throw new UnsupportedOperationException("无效的表名称: " + targetTable);
//    }
//}
