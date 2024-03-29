/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2014-09-05 08:40:08 UTC
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

public final class buyForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
request.setCharacterEncoding("utf-8");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style/default.css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function orderCancel(){\r\n");
      out.write("\thistory.go(-1);\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

	BookertDBBean bookert = BookertDBBean.getInstance();
	int book_num = Integer.parseInt(request.getParameter("book_num"));
	String book_name = request.getParameter("name");
	int ea = Integer.parseInt(request.getParameter("ea"));
	int price = Integer.parseInt(request.getParameter("price"))*ea;
	
	int member_num = (Integer)session.getAttribute("loginMember_num");
	MemberBean member = bookert.memberInfo(member_num);
	
	String member_name = member.getName();
	String hp = member.getHp();
	String address = member.getAddress();

      out.write("\r\n");
      out.write("<h2 align=\"center\">주문정보 입력</h2>\r\n");
      out.write("<form action=\"\" method=\"post\" name=\"order_info\">\r\n");
      out.write("<table border=\"1\" width=\"785px\" align=\"center\" style=\"text-align:center;\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"80px\"><img src=\"book_image/");
      out.print(book_num);
      out.write(".jpg\" style=\"width: 80px; height: 110px;\"></td>\r\n");
      out.write("\t\t<td>");
      out.print(book_name);
      out.write("</td>\r\n");
      out.write("\t\t<td width=\"8%\">수량</td>\r\n");
      out.write("\t\t<td width=\"8%\"><input type=\"number\" name=\"ea\" value=\"");
      out.print(ea);
      out.write("\" maxlength=\"2\" size=\"2\" max=\"99\"></td>\r\n");
      out.write("\t\t<td width=\"8%\"><input type=\"button\" value=\"수정\"></td>\r\n");
      out.write("\t\t<td width=\"8%\"><label id=\"price\">");
      out.print(price);
      out.write("</label></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<hr style=\"border: 1px dashed gray;\">\r\n");
      out.write("<h3>보내는분</h3>\r\n");
      out.write("<table border=\"1\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>이름</td><td><input type=\"text\" name=\"name_from\" size=\"10\" value=\"");
      out.print(member_name);
      out.write("\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>연락처</td>\r\n");
      out.write("\t\t<td><input type=\"text\" name=\"hp_from\" size=\"17\" value=\"");
      out.print(hp);
      out.write("\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>주소</td><td><input type=\"text\" name=\"address_from\" size=\"40\" value=\"");
      out.print(address);
      out.write("\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<hr style=\"border: 1px dashed gray;\">\r\n");
      out.write("<h3>받는분</h3>\r\n");
      out.write("<table border=\"1\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>이름</td><td><input type=\"text\" name=\"name_to\" size=\"10\" value=\"");
      out.print(member_name);
      out.write("\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>연락처</td>\r\n");
      out.write("\t\t<td><input type=\"text\" name=\"hp_to\" size=\"17\" value=\"");
      out.print(hp);
      out.write("\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>주소</td><td><input type=\"text\" name=\"address_to\" size=\"40\" value=\"");
      out.print(address);
      out.write("\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<br><br><br>\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<a href=\"#\" onclick=\"javascript:orderCancel()\" style=\"color: red; font-size: 20pt;\">취소</a>&nbsp;\r\n");
      out.write("<a href=\"#\" style=\"color: blue; font-size: 20pt;\">주문하기</a>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
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
