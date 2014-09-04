/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2014-09-04 07:09:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.bookert;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bookert.*;
import java.util.*;

public final class cartListForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
request.setCharacterEncoding("utf-8");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style/default.css\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function update(cart_name,mode){\r\n");
      out.write("\t\r\n");
      out.write("\tvar cart_num = document.getElementById(cart_name).cart_num.value;\r\n");
      out.write("\tvar ea = document.getElementById(cart_name).ea.value;\r\n");
      out.write("\tif(mode==\"-1\"){\r\n");
      out.write("\t\tif (confirm(\"정말 삭제하시겠습니까??\") == true){ \r\n");
      out.write("\t\t\tlocation.href(\"cartUpdatePro.jsp?cart_num=\"+cart_num+\"&ea=\"+ea+\"&mode=\"+mode);\r\n");
      out.write("\t\t}else{   \r\n");
      out.write("\t\t    return;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}else if(mode==\"1\"){\r\n");
      out.write("\t\tlocation.href(\"cartUpdatePro.jsp?cart_num=\"+cart_num+\"&ea=\"+ea+\"&mode=\"+mode);\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

	String loginId = (String)session.getAttribute("loginId");
	if(loginId==null){
	
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\talert(\"로그인 필요!!\");\r\n");
      out.write("\tlocation.href(\"index.jsp\");\r\n");
      out.write("\t</script>\r\n");
      out.write("\t");

	}
	int member_num = (Integer)session.getAttribute("loginMember_num");
	BookertDBBean bookert = BookertDBBean.getInstance();
	List<CartBean> result = bookert.cartList(member_num);

      out.write("\r\n");
      out.write("<h3><a href=\"index.jsp\">메인으로</a></h2>\r\n");
      out.write("<h2 align=\"center\">");
      out.print(loginId);
      out.write("님의 장바구니</h2>\r\n");

	for(int i=0;i<result.size();i++){
		int cart_num = result.get(i).getCart_num();
		int book_num = result.get(i).getBook_num();
		String name = result.get(i).getName();
		int price = result.get(i).getPrice();
		int ea = result.get(i).getEa();
		String cart_name = "cart_"+i;

      out.write("\r\n");
      out.write("<form action=\"\" method=\"post\" id=\"");
      out.print(cart_name);
      out.write("\">\r\n");
      out.write("<table border=\"1\" width=\"785px\" align=\"center\" style=\"text-align:center;\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"3%\"><input type=\"checkbox\" name=\"cart_num\" value=\"");
      out.print(cart_num);
      out.write("\"></td>\r\n");
      out.write("\t\t<td width=\"80px\"><img src=\"book_image/");
      out.print(book_num);
      out.write(".jpg\" style=\"width: 80px; height: 110px;\"></td>\r\n");
      out.write("\t\t<td>");
      out.print(name);
      out.write("</td>\r\n");
      out.write("\t\t<td width=\"8%\">수량</td>\r\n");
      out.write("\t\t<td width=\"8%\"><input type=\"number\" name=\"ea\" value=\"");
      out.print(ea);
      out.write("\" maxlength=\"2\" size=\"2\" max=\"99\"></td>\r\n");
      out.write("\t\t<td width=\"8%\"><input type=\"button\" value=\"수정\" onclick=\"javascript:update('");
      out.print(cart_name);
      out.write("','1')\"></td>\r\n");
      out.write("\t\t<td width=\"8%\">");
      out.print(price);
      out.write("원</td>\r\n");
      out.write("\t\t<td width=\"15%\">\r\n");
      out.write("\t\t\t<a href=\"#\">주문하기</a><br><br>\r\n");
      out.write("\t\t\t<a href=\"#\" onclick=\"javascript:update('");
      out.print(cart_name);
      out.write("','-1')\">삭제하기</a>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("\t");
}
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}