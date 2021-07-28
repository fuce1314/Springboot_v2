package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.wf.captcha.GifCaptcha;
import com.wf.captcha.SpecCaptcha;
import com.wf.captcha.utils.CaptchaUtil;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Api(value = "验证码")
@RestController
@RequestMapping("/captcha")
public class CaptchaController extends BaseController {

    /**
     * 验证码生成
     * @param request 请求报文
     * @param response 响应报文
     * */
    @RequestMapping("/captchaImage")
    public void generate(HttpServletRequest request, HttpServletResponse response) throws Exception {
        GifCaptcha gifCaptcha = new GifCaptcha(130,48,4);
        //静态验证码
        //SpecCaptcha gifCaptcha=new SpecCaptcha(130,48,4);
        CaptchaUtil.out(gifCaptcha, request, response);
    }

    /**
     * 异步验证
     * @param request 请求报文
     * @param captcha 验证码
     * @return 验证结果
     * */
    @RequestMapping("verify")
    public AjaxResult verify(HttpServletRequest request, String captcha){
        if(CaptchaUtil.ver(captcha,request)){
            return success();
        }
        return error();
    }


}
