package com.schoolMall.task;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * 定时任务
 */
@Component
public class MyTask {

    @Scheduled(cron = "0 34 15 * * ?")
    public void testTask(){
        System.out.println(System.currentTimeMillis());
        System.out.println("=========myTask==========");
        System.out.println(System.currentTimeMillis());
    }
}
