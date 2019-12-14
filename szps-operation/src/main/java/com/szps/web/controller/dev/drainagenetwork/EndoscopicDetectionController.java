package com.szps.web.controller.dev.drainagenetwork;

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
import com.szps.system.domain.SysUser;
import com.szps.web.domain.dev.EndoscopicDetection;
import com.szps.web.service.dev.IEndoscopicDetectionService;

@Controller
@RequestMapping("/op/dev/ed")
public class EndoscopicDetectionController extends BaseController {
	 @Autowired
	private IEndoscopicDetectionService service;
	
	private String prefix = "/dev/drainagenetwork/maintenance/ed";
	
    @RequiresPermissions("dev:ed:view")
    @GetMapping()
    public String view()
    {
        return prefix + "/view";
    }
    
    /**
     */
    @RequiresPermissions("dev:ed:view")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(EndoscopicDetection obj)
    {
        startPage();
        List<EndoscopicDetection> list = service.selectList(obj);
        return getDataTable(list);
    }

    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }
    

    @RequiresPermissions("dev:ed:add")
    @Log(title = "添加", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave( EndoscopicDetection obj)
    {
    	SysUser user = ShiroUtils.getSysUser();
    	obj.setCreateBy(user.getLoginName());
        return toAjax(service.insert(obj));
    }
    
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
    	EndoscopicDetection obj = service.selectById(id);
        
        mmap.put("obj", obj);
        return prefix + "/edit";
    }
    
    
    /**
     * 保存
     */
    @Log(title = "修改", businessType = BusinessType.UPDATE)
    @RequiresPermissions("dev:ed:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@Validated EndoscopicDetection obj)
    {
    	obj.setUpdateBy(ShiroUtils.getLoginName());
        return toAjax(service.update(obj));
    }

    @RequiresPermissions("dev:ed:delete")
    @Log(title = "删除", businessType = BusinessType.DELETE)
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