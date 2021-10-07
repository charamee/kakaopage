<%@ Page Title="로그인" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Account.Login" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>페이지</h2>
    <h4>아이디와 비밀번호를 입력하세요.</h4>
    <hr />
    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group" style="margin-left: 50%; margin-right: -50%;text-align:center;">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">아이디</asp:Label>
                        <div class="col-md-10" style="text-align:left;">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="아이디를 입력하세요." />
                        </div>
                    </div>
                    <div class="form-group" style="margin-left: 50%; margin-right: -50%;text-align:center;">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">비밀번호</asp:Label>
                        <div class="col-md-10" style="text-align:left;">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="비밀번호를 입력하세요." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox" style="margin-left: 50%; margin-right: -50%;">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">사용자 이름 및 암호 저장</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" >
                        <div class="col-md-offset-2 col-md-10" style="margin-left: 40%; margin-right: -60%;text-align:center;">
                            <asp:Button runat="server" OnClick="LogIn" Text="로그인" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p style="margin-left: 50%; margin-right: -50%;text-align:left;">
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">회원가입</asp:HyperLink>
                </p>
                <p>
                    <%-- 암호 재설정 기능에 대해 계정 확인을 사용하도록 설정한 경우 이 항목 사용
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">암호를 잊으셨습니까?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>
    </div>
</asp:Content>
