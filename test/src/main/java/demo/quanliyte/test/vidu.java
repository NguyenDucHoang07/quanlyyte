package demo.quanliyte.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class vidu {

    @GetMapping("/Hello")
    public String index() {
        return "Hello";
    }

}
