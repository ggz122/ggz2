<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <script src="/demo1/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
        <style type="text/css">
            #table {
                width: 630px;
            }
        </style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div class="top">
            用户:<input type="text" id="username" /> 密码:
            <input type="text" id="passsword" /> 邮箱:
            <input type="text" id="email" />
            <input type="button" id="add" value="添加" />
            <input type="button" id="deleAll" value="批量删除" />
        </div>
        <table border="1px" cellspacing="0px" cellpadding="0px" id="table">
            <tr>
                <td><input type="checkbox" id="top_cb" /></td>
                <td>有户名</td>
                <td>密码</td>
                <td>邮箱</td>
                <td>操作</td>
            </tr>
        </table>

        <script type="text/javascript">
            $("#add").click(function() {
                //验证
                var username = $("#username").val();
                if(username == "") {
                    alert("用户名不能为空")
                    return;
                }

                var passsword = $("#passsword").val();
                if(passsword.length > 6) {
                    alert("密码长度不能大于6")
                    return;
                }

                var email = $("#email").val();
                if(email.indexOf("@") == -1) {
                    alert("邮箱格式不正确")
                    return;
                }
                //添加到表格
                var tr = "<tr><td><input type='checkbox' name='cb'/></td><td>" + username + "</td><td>" + passsword + "</td><td>" + email + "</td><td><input type = 'button' value = '删除'  onclick='dele(this)'/></td></tr>";
                $("#table").append(tr);
            })

            function dele(t) {
                t.parentNode.parentNode.remove();
            }

            $("#deleAll").click(function() {
                var cbs = $("input[type=checkbox]:checked"); 
                if(cbs.length == 0) {
                    alert("請至少選擇一個")
                    return
                }
                for(var i = 0; i < cbs.length; i++) {
                    var cb = cbs[i];
                    cb.parentNode.parentNode.remove();
                }

                if(cbs.length == 1) {
                    $("#table").empty();
                }

            })
            //全選/全不选
            var flag = true;
            $("#top_cb").click(function() {
                var cb = $("input[type=checkbox]");
                for(var i = 0; i < cb.length; i++) {
                    cb[i].checked = flag;
                }
                flag = !flag;
            })
        </script>

</body>
</html>