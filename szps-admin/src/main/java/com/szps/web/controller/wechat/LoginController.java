package com.szps.web.controller.wechat;


import com.szps.common.config.Global;
import com.szps.framework.util.ShiroUtils;
import com.szps.framework.web.domain.server.Sys;
import com.szps.system.domain.*;
import com.szps.system.service.*;
import com.szps.web.domain.mine.mine;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/admin/login")
public class LoginController {

    @Autowired
    private ISysDeptService iSysDeptService;

    @Autowired
    private ISysRoleService roleService;

    @Autowired
    private ISysUserService iSysUserService;

    @Autowired
    private ISysUserRoleService iSysUserRoleService;

    @Autowired
    private ISysAreaService iSysAreaService;


    @PostMapping(value = "getSysRole")
    @ResponseBody
    public Object getSysRole() {

        String str = "";
        SysUser sysUser = ShiroUtils.getSysUser();


        if (sysUser.getUserName().equals("admin")) {
            str = "市水务局人员";
        } else {
            SysUserRole sysUserRole = new SysUserRole();
            sysUserRole.setUserId(sysUser.getUserId());

            List<SysUserRole> sysUserRole1 = iSysUserRoleService.getSysUserRole(sysUserRole);


            if (getSysRole1(sysUserRole1) == -1) {

                if(getSysRole2(sysUserRole1)==-1){
                    str="业务操作员";
                }else {
                    str="运营单位";
                }

            }else {
                if(getSysRole1(sysUserRole1)==1){
                    str="市水务局人员";
                }else {
                    str="区水务局人员";
                }
            }


        }


        return str;

    }

    /**
     * 获取用户所属区域
     *
     * @param sysArea
     * @return
     */
    @PostMapping(value = "getSysDept")
    @ResponseBody
    public Object getSysDept(SysArea sysArea) {

        return getUserArea(sysArea);
    }


    /**
     * 获取用户的所有信息
     *
     * @param sysArea
     * @return
     */
    @PostMapping(value = "mine")
    @ResponseBody
    public mine getMine(SysArea sysArea) {


        SysUser sysUser = ShiroUtils.getSysUser();


        SysDept sysDept = iSysDeptService.selectDeptById(sysUser.getDeptId());

        List<String> strings = new ArrayList<>();
        strings.add(sysDept.getDeptName());

        while (true) {
            if (sysDept.getParentId() == 0) {
                break;
            } else {
                sysDept = iSysDeptService.getSysDeptParent(sysDept);
                strings.add(sysDept.getDeptName());
            }
        }

        StringBuffer stringBuffer = new StringBuffer();
        for (int i = strings.size() - 1; i >= 0; i--) {
            stringBuffer.append(strings.get(i));
            if (i != 0) {
                stringBuffer.append("-");
            }

        }

        mine mine = new mine();

        mine.setUserId(sysUser.getUserId());
        mine.setUserName(sysUser.getUserName());
        mine.setUserDept(stringBuffer);
        mine.setUserPosition("科长");
        mine.setUserPhone(sysUser.getPhonenumber());
        mine.setUserEmail(sysUser.getEmail());
        mine.setUserArea(getUserArea(sysArea));


        return mine;
    }


    protected String getUserArea(SysArea sysArea) {
        SysUser sysUser = ShiroUtils.getSysUser();

        SysDept sysDept = iSysDeptService.selectDeptById(sysUser.getDeptId());


        List<SysArea> areas = iSysAreaService.selectAreaList(sysArea);

        String userArea = "深圳市";
        for (SysArea sysArea1 : areas) {
            if (sysDept.getParentName().contains(sysArea1.getAreaName())) {
                userArea = sysArea1.getAreaName();
            }
        }
        return userArea;

    }


    @PostMapping(value = "picture")
    @ResponseBody
    public Object getPicture() {
        return Global.getUploadPath();
    }


    protected int getSysRole1(List<SysUserRole> sysUserRole1) {

        int str = -1;
        for (SysUserRole sysUserRole2 : sysUserRole1) {
            SysRole sysRole = roleService.selectRoleById(sysUserRole2.getRoleId());

            System.out.println(sysRole.getRoleName());
            if (sysRole.getRoleName().contains("水务局人员")) {
                SysArea sysArea = new SysArea();
                if (getUserArea(sysArea).equals("深圳市")) {
                    str = 1;

                } else {
                    str = 2;

                }
            }

        }
        return str;
    }


    protected int getSysRole2(List<SysUserRole> sysUserRole1) {

        int str = -1;
        for (SysUserRole sysUserRole2 : sysUserRole1) {
            SysRole sysRole = roleService.selectRoleById(sysUserRole2.getRoleId());

            System.out.println(sysRole.getRoleName());
            if (sysRole.getRoleName().contains("运营单位")) {
                str = 3;
            }

        }
        return str;
    }

    protected int getSysRole3(List<SysUserRole> sysUserRole1) {

        int str = -1;
        for (SysUserRole sysUserRole2 : sysUserRole1) {
            SysRole sysRole = roleService.selectRoleById(sysUserRole2.getRoleId());

            System.out.println(sysRole.getRoleName());
            if (sysRole.getRoleName().contains("业务操作员")) {
                str = 4;
            }

        }
        return str;
    }
}
