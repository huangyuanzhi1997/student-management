layui.config({
	base: 'plugins/layui/modules/'
});

layui.use(['icheck', 'laypage'], function() {
	var $ = layui.jquery,
		laypage = layui.laypage;
	$('input').iCheck({
		checkboxClass: 'icheckbox_flat-green'
	});

	//page
	laypage({
		cont: 'page',
		pages: 25 ,//总页数
		groups: 5 ,//连续显示分页数
		jump: function(obj, first) {
			//得到了当前页，用于向服务端请求对应数据
			var curr = obj.curr;
			if(!first) {
				//layer.msg('第 '+ obj.curr +' 页');
			}
		}
	});
	
	$('#delete').on('click',function(){					
		parent.layer.alert('请选择一项')
	});
	$('#selected-all').on('ifChanged', function(event) {
		var $input = $('.site-table tbody tr td').find('input');
		$input.iCheck(event.currentTarget.checked ? 'check' : 'uncheck');
	});
});