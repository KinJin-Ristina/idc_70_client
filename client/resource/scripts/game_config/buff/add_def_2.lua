----------------------- Auto Genrate Begin --------------------

-- 定义状态继承类型
local clsBuffBase = require("module/battleAttrs/buff_base")

cls_add_def_2 = class("cls_add_def_2", clsBuffBase);

-- 属性段
---------------------------------------------------------------

-- 状态ID 
cls_add_def_2.get_status_id = function(self)
	return "add_def_2";
end


-- 状态名 
cls_add_def_2.get_status_name = function(self)
	return T("加防_2");
end

-- 增减益 
cls_add_def_2.get_status_type = function(self)
	return T("增益");
end

-- 描述 
cls_add_def_2.get_status_desc = function(self)
	return T("略");
end

---------------------------------------------------------------

-- 关系属性


----------------------- Auto Genrate End   --------------------
cls_add_def_2.deal_result = function(self, tbResult)
	self.super.deal_result(self, tbResult)
	if tbResult.add_defend then 
		self.target:addDefense(tbResult.add_defend)
	end
end

cls_add_def_2.un_deal_result = function(self, tbResult)
	self.super.un_deal_result(self, tbResult)
	
	if tbResult.add_defend then 
		self.target:addDefense(-tbResult.add_defend)	
	end
end