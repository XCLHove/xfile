package com.xclhove.xfile;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = {"com.xclhove.xfile.mapper"})
public class XfileApplication {

    public static void main(String[] args) {
        SpringApplication.run(XfileApplication.class, args);
    }

}
