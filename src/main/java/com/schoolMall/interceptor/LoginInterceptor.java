package com.schoolMall.interceptor;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 烂机器
 */
public class LoginInterceptor implements HandlerInterceptor {
    private static final Logger logger= Logger.getLogger(LoginInterceptor.class);

    /**
     * 在调用controller之前，做的处理，一般的话可以做日志、登录、权限认真
     * @param request
     * @param response
     * @param handler
     * @return true：表示没有被拦截，可以继续执行，false：不执行controller的相关方法
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object data=request.getSession().getAttribute("userSession");
        logger.info("======preHandle: data========"+ data);
        if(null != data) return true;  //符合条件的 可以继续执行，不做拦截
        response.sendRedirect("/login");
        return false;  //被拦截，不能继续执行
    }

    /** 方法调用后，视图渲染之前执行的操作
     * @param request
     * @param response
     * @param handler
     * @param modelAndView
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        logger.info("======postHandle======");
    }

    /**
     * 调用完成之后可以执行，一般：作为资源关闭
     * @param request
     * @param response
     * @param handler
     * @param ex
     * @throws Exception
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        logger.info("======afterCompletion======");
    }
}
