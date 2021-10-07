<%@ Page Title="회원가입" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>페이지</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    
    <div class="form-horizontal">
        <h4>새 계정 만들기</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserId" CssClass="col-md-2 control-label">아이디</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserId" CssClass="form-control" TextMode="SingleLine" OnTextChanged="Id_TextChanged" />
                <asp:RequiredFieldValidator runat="server"
                    CssClass="text-danger" ErrorMessage="아이디 필드는 필수입니다." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserPassword" CssClass="col-md-2 control-label">비밀번호</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="비밀번호 필드는 필수입니다." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">비밀번호 확인</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="비밀번호 확인 필드는 필수입니다." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="비밀번호가 일치하지 않습니다." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">이름</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" 
                    CssClass="text-danger" ErrorMessage="이름 필드는 필수입니다." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserPhone" CssClass="col-md-2 control-label">휴대폰번호</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserPhone" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" 
                    CssClass="text-danger" ErrorMessage="휴대폰번호 필드는 필수입니다." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserEmail" CssClass="col-md-2 control-label">이메일</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserEmail" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="이메일 필드는 필수입니다." />
            </div>
        </div>



        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="등록" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
