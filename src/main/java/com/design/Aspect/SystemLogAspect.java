//package com.design.Aspect;
//
//
//import com.design.annotation.ControllerLog;
//import com.design.entity.Log;
////import com.design.entity.LogDetail;
//import com.design.entity.User;
//import com.design.service.LogServiceI;
//import org.apache.shiro.SecurityUtils;
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.annotation.After;
//import org.aspectj.lang.annotation.AfterReturning;
//import org.aspectj.lang.annotation.Before;
//import org.aspectj.lang.annotation.Pointcut;
//import org.aspectj.lang.reflect.MethodSignature;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.core.NamedThreadLocal;
//import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
//import org.springframework.stereotype.Component;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.xml.crypto.Data;
//import java.lang.reflect.Method;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.UUID;
//
//@Component
//public class SystemLogAspect {
//
//    //因为这里使用的线程，所以我使用了ThreadLocal来保存信息
//    //保存开始时间
//    private static final ThreadLocal<Date> beginTimeThreadLocal = new NamedThreadLocal<Date>("ThreadLocal beginTime");
//    //保存用户信息
//    private static final ThreadLocal<User> currentUser = new NamedThreadLocal<>("ThreadLocal userName");
//    //保存要新增的日志信息
//    private static final ThreadLocal<Log> logThreadLocal = new NamedThreadLocal<>("ThreadLocal log");
//    //保存新增的日志详情
////    private static final ThreadLocal<LogDetail> logDetailThreadLocal = new NamedThreadLocal<>("ThreadLocal logDetail");
//
//
//    @Autowired(required = false)
//    private HttpServletRequest request;
//
//    //导入线程池
//    @Autowired
//    private ThreadPoolTaskExecutor threadPoolTaskExecutor;
//
//    @Autowired
//    private LogServiceI logService;
//
//    /**
//     * Controller层切点 注解拦截
//     */
//    @Pointcut("@annotation(com.design.annotation.ControllerLog)")
//    public void controllerAspect() {
//    }
//
//
//    /**
//     * 前置通知 用于拦截Controller层记录用户的操作的开始时间
//     *
//     * @param joinPoint 切点
//     * @throws InterruptedException
//     */
//    @Before("controllerAspect()")
//    public void doBefore(JoinPoint joinPoint) throws InterruptedException {
//        Date beginTime = new Date();
//        beginTimeThreadLocal.set(beginTime);
//        //因为项目里面是shiro，所以这里获取用户信息是这样子的
//        //如果没有使用，这里可以直接使用session来获取
//        User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");
//        currentUser.set(loginUser);
//    }
//
//    /**
//     * 后置通知 用于拦截Controller层记录用户的操作
//     *
//     * @param joinPoint 切点
//     */
//    @SuppressWarnings("unchecked")
//    @After("controllerAspect()")
//    public void doAfter(JoinPoint joinPoint) {
//        //获取当前用户的登录信息
//
//        if (loginUser == null) {
//            loginUser = (User) SecurityUtils.getSubject().getPrincipal();
//            if (loginUser == null) {
//                return;
//            }
//        }
//
//
//        HashMap<String, String> controllerMethodDescription = null;
//        String remoteAddr = request.getRemoteAddr();//请求的IP
//
////        try {
////            //调用方法，获取注解参数
////            controllerMethodDescription = getControllerMethodDescription(joinPoint);
////        } catch (Exception e) {
////            e.printStackTrace();
////        }
//
//        Log log = logThreadLocal.get();
//        if (log == null) {
//            log = new Log();
//        }
////        LogDetail logDetail = logDetailThreadLocal.get();
////        if (logDetail == null) {
////            logDetail = new LogDetail();
////        }
//        String id = UUID.randomUUID().toString().replace("-", "");
//
//        String requestUri = request.getRequestURI();//请求的Uri
//
//        User loginUser = (User) SecurityUtils.getSubject().getSession().getAttribute("user");
//
//        String userName = loginUser.getName();
//
//        log.setLid(id);
//        log.setLaction(requestUri);
//        log.setLcreator(userName);
////        log.setLip(remoteAddr);
////        log.setLmodule(controllerMethodDescription.get("module"));
//        log.setLremark(controllerMethodDescription.get("remark"));
////        System.out.print("controllerMethodDescription.get(\"module\"):"+controllerMethodDescription.get("module"));
////        System.out.print("controllerMethodDescription.get(\"remark\"):"+controllerMethodDescription.get("remark"));
////        Date operateDate = beginTimeThreadLocal.get();
//        log.setLcreatetime(new Date());
//
//        logService.insertSelective(log);
//
////        logDetail.setlId(id);
////        logDetail.setlKey("content");
////        logDetail.setlValue(userName + controllerMethodDescription.get("remark"));
//        logThreadLocal.set(log);
////        logDetailThreadLocal.set(logDetail);
//    }
//
//    @AfterReturning(value = "controllerAspect()", returning = "result")
//    public void doReturn(Object result) {
//        Log log = logThreadLocal.get();
//        if (log == null) {
//            log = new Log();
//        }
////        LogDetail logDetail = logDetailThreadLocal.get();
////        if (logDetail == null) {
////            logDetail = new LogDetail();
////        }
//        //通过线程池来执行日志保存
//        threadPoolTaskExecutor.execute(new SaveLogThread(log, logService));
//        currentUser.remove();
//        beginTimeThreadLocal.remove();
//    }
//
//
//    /**
//     * 获取注解中对方法的描述信息 用于Controller层注解
//     *
//     * @param joinPoint 切点
//     * @return 方法描述
//     */
//    public static HashMap<String, String> getControllerMethodDescription(JoinPoint joinPoint) {
//        HashMap<String, String> hashMap = new HashMap<>();
//        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
//        Method method = signature.getMethod();
//        ControllerLog controllerLog = method.getAnnotation(ControllerLog.class);
//        String module = controllerLog.Module();
//        hashMap.put("module", module);
//        String remark = controllerLog.Remark();
//        hashMap.put("remark", remark);
//        return hashMap;
//    }
//
//    /**
//     * 保存日志线程
//     *
//     * @author lin.r.x
//     */
//    private static class SaveLogThread implements Runnable {
//        private Log log;
//        private LogServiceI logService;
////        private LogDetail logDetail;
//
//        public SaveLogThread(Log log, LogServiceI logService) {
//            this.log = log;
//            this.logService = logService;
////            this.logDetail = logDetail;
//        }
//
//        @Override
//        public void run() {
//            //这里是两个新增的方法
//            logService.insertSelective(log);
////            logService.InsertLogDetail(logDetail);
//        }
//    }
//}
