//package com.szps.web.controller.wechat;
//
//import com.szps.common.core.controller.BaseController;
//import com.szps.common.core.domain.AjaxResult;
//import com.szps.common.utils.EncryptUtil;
//import com.szps.common.utils.ServletUtils;
//import com.szps.common.utils.StringUtils;
//import org.apache.shiro.SecurityUtils;
//import org.apache.shiro.authc.AuthenticationException;
//import org.apache.shiro.authc.UsernamePasswordToken;
//import org.apache.shiro.subject.Subject;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@Controller
//public class WechatLoginController extends BaseController {
//    @GetMapping("/login")
//    public String login(HttpServletRequest request, HttpServletResponse response, String username, String password, String access_token, String refresh_token)
//    {
//        // 如果是Ajax请求，返回Json字符串。
//        if (ServletUtils.isAjaxRequest(request))
//        {
//            return ServletUtils.renderString(response, "{\"code\":\"1\",\"msg\":\"未登录或登录超时。请重新登录\"}");
//        }
//        if (username!=null && !username.equals("") && password!=null && !password.equals("")) {
//            try
//            {
//                Boolean rememberMe = true;
//                String pwd = EncryptUtil.decrypt(password);
//                UsernamePasswordToken token = new UsernamePasswordToken(username, pwd, rememberMe);
//                Subject subject = SecurityUtils.getSubject();
//                subject.login(token);
//                return "forward:/index";
//            }
//            catch (Exception e)
//            {
//                return "login";
//            }
//        }
//        return "login";
//        //return "forward:/xxx?username=admin&password=a123b456&rememberMe=true";
//    }
//
//    @PostMapping("login")
//    @ResponseBody
//    public AjaxResult ajaxLogin(String username, String password, Boolean rememberMe)
//    {
//        UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
//        Subject subject = SecurityUtils.getSubject();
//        try
//        {
//            subject.login(token);
//            return success();
//        }
//        catch (AuthenticationException e)
//        {
//            String msg = "用户或密码错误";
//            if (StringUtils.isNotEmpty(e.getMessage()))
//            {
//                msg = e.getMessage();
//            }
//            return error(msg);
//        }
//    }
//
//}
