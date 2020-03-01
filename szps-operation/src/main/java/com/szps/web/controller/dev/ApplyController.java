package com.szps.web.controller.dev;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.szps.common.annotation.Log;
import com.szps.common.core.controller.BaseController;
import com.szps.common.core.domain.AjaxResult;
import com.szps.common.core.page.TableDataInfo;
import com.szps.common.enums.BusinessType;
import com.szps.framework.util.ShiroUtils;
import com.szps.system.domain.SysDept;
import com.szps.system.domain.SysUser;
import com.szps.web.domain.dev.Apply;
import com.szps.web.service.dev.IApplyService;

@Controller
@RequestMapping("/op/dev/apply")
public class ApplyController extends BaseController {
	 @Autowired
	private IApplyService service;
	
	private String prefix = "/dev/apply";
	
    @RequiresPermissions("dev:apply:view")
    @GetMapping()
    public String view()
    {
        return prefix + "/view";
    }
    
    /**
     */
    @RequiresPermissions("dev:apply:view")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Apply obj)
    {
        startPage();
        List<Apply> list = service.selectList(obj);
        return getDataTable(list);
    }
    /**
     * 新增参数配置
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
    	SysUser user = ShiroUtils.getSysUser();
    	SysDept sysDept = user.getDept();
    	mmap.put("sysDept",sysDept);
        return prefix + "/add";
    }
    

    /**
     * 新增保存日报
     */
    @RequiresPermissions("dev:apply:add")
    @Log(title = "添加日报", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave( Apply obj)
    {
    	SysUser user = ShiroUtils.getSysUser();
    	//SysDept sysDept = user.getDept();
    	//obj.setDeptId(sysDept.getDeptId());
    	
    	obj.setCreateBy(user.getLoginName());
    	obj.setDept_id(user.getDeptId());
    	obj.setDelFlag(Apply.DEL_FLAG_NORMAL);
        return toAjax(service.insert(obj));
    }
    
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
    	Apply obj = service.selectById(id);
        
        mmap.put("obj", obj);
        return prefix + "/edit";
    }
    
    
    /**
     * 保存
     */
    @Log(title = "日报修改", businessType = BusinessType.UPDATE)
    @RequiresPermissions("dev:apply:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@Validated Apply obj)
    {
    	obj.setUpdateBy(ShiroUtils.getLoginName());
        return toAjax(service.update(obj));
    }

    @RequiresPermissions("dev:apply:delete")
    @Log(title = "日报删除", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        try
        {
            return toAjax(service.deleteByIds(ids));
        }
        catch (Exception e)
        {
            return error(e.getMessage());
        }
    }
}
