package com.fc.test.controller.admin;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fc.test.common.base.BaseController;
import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;

/**
 * 图片验证码
 * @author fc
 */
@Api(value = "验证码")
@Controller
@RequestMapping("/captcha")
public class CaptchaController extends BaseController
{
	@Autowired
    private Producer captchaProducer;
    
    @Autowired
    private Producer captchaProducerMath;

    /**
     * 生成验证码
     * @param request
     * @param response
     * @param type
     * @return
     * @author fuce
     * @Date 2020年5月22日 上午12:17:03
     */
    @ApiOperation(value = "验证码生成", notes = "验证码生成")
    @GetMapping("/captchaImage")
    public ModelAndView getKaptchaImage(HttpServletRequest request, HttpServletResponse response,String type)
    {
        ServletOutputStream out = null;
        try
        {
            HttpSession session = request.getSession();
            response.setDateHeader("Expires", 0);
            //Set standard HTTP/1.1 no-cache headers. 
            response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
            //Set IE extended HTTP/1.1 no-cache headers (use addHeader). 
            response.addHeader("Cache-Control", "post-check=0, pre-check=0");
            //Set standard HTTP/1.0 no-cache header. 
            response.setHeader("Pragma", "no-cache");
            //return a jpeg 
            response.setContentType("image/jpeg");
            ///验证码字符串
            String captStr = null;
            //答案
            String answer = null;
            BufferedImage images = null;
            if ("math".equals(type))//验证码为算数 8*9 类型
            {
            	//验证码加答案8-3=?@5
                String captText = captchaProducerMath.createText();
                //验证码8-3=?
                captStr = captText.substring(0, captText.lastIndexOf("@"));
                answer = captText.substring(captText.lastIndexOf("@") + 1);
                //生成图片
                images = captchaProducerMath.createImage(captStr);
            }
            else if ("char".equals(type))//验证码为 abcd类型
            {
            	captStr = answer = captchaProducer.createText();
                images = captchaProducer.createImage(captStr);
            }
            session.setAttribute(Constants.KAPTCHA_SESSION_KEY, answer);
            out = response.getOutputStream();
            ImageIO.write(images, "jpg", out);
            out.flush();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            try
            {
                if (out != null)
                {
                    out.close();
                }
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }
        return null;
    }
    
    /**
     * 滚动条验证码
     * @param datas
     * @return
     * @author fuce
     * @Date 2019年11月23日 下午6:12:27
     */
    @ApiOperation(value = "滚动条验证码", notes = "滚动条验证码")
    @PostMapping("/isVerify")
    @ResponseBody
	public boolean isVerify(@RequestBody List<Integer> datas) {
		int sum = 0;  
		for (Integer data : datas) {
			sum += data;
		}
		double avg = sum * 1.0 / datas.size();
		
		double sum2 = 0.0;
		for (Integer data : datas) {
			sum2 += Math.pow(data - avg, 2);
		}
		
		double stddev = sum2 / datas.size();
		return stddev != 0;
	}
	
}