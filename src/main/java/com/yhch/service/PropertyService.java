package com.yhch.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * Created by zlren on 2017/2/28.
 */
@Service
public class PropertyService {

    @Value("${config.rows}")
    public int rows;
}
