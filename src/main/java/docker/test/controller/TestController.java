package docker.test.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by wrs on 2020/6/20.
 */
@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping("/get")
    public String get(){
        return "docker test";
    }
}
