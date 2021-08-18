<%@ Page Title="Mymine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Mymine一下 隨心所欲</h2>
        <a href="Product/SearchProduct-second.aspx" class="btn btn-primary btn-lg">搜尋 &raquo;</a></p>
    </div>
    
    <div class="jumbotron">
        <h2>熱門活動</h2>
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-tp="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-tp="1" ></li>
                <li data-target="#carousel-example-generic" data-slide-tp="2" ></li>
                <li data-target="#carousel-example-generic" data-slide-tp="3" ></li>
                <li data-target="#carousel-example-generic" data-slide-tp="4" ></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img data-src="holder.js/1140x500/auto/#777:#555/text:First slide" alt="First slide 第一張投影片" src="images/act1.bmp">
                </div>
                <div class="item">
                    <img data-src="holder.js/1140x500/auto/#666:#444/text:Second slide" alt="Second slide 第二張投影片" src="images/act2.bmp">
                </div>
                <div class="item">
                    <img data-src="holder.js/1140x500/auto/#555:#333/text:Second slide" alt="Second slide 第二張投影片" src="images/act3.bmp">
                </div>
                <div class="item">
                    <img data-src="holder.js/1140x500/auto/#444:#222/text:Second slide" alt="Second slide 第二張投影片" src="images/act4.bmp">
                </div>
                <div class="item">
                    <img data-src="holder.js/1140x500/auto/#333:#111/text:Second slide" alt="Second slide 第二張投影片" src="images/act5.bmp">
                </div>
          </div>
     
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
    </div>

    <div class="jumbotron" style="width:100%">
        <img src="images/catetag.png" />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/homepagepicture/女森衣著.jpg" Height="100px" Width="100px" PostBackUrl="~/Product/女生衣著.aspx" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl="~/images/homepagepicture/男生衣著.jpg" Width="100px" PostBackUrl="~/Product/男生衣著.aspx" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="100px" ImageUrl="~/images/homepagepicture/3C相關.jpg" Width="100px" PostBackUrl="~/Product/3C相關.aspx" />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/女生包包、精品.jpg" PostBackUrl="~/Product/女生包包精品.aspx" />
        <asp:ImageButton ID="ImageButton5" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/女森配件.png" PostBackUrl="~/Product/女生配件.aspx" />
        <asp:ImageButton ID="ImageButton6" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/戶外與運動用品.jpg" PostBackUrl="~/Product/戶外與運動精品.aspx" />
        <asp:ImageButton ID="ImageButton7" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/手機平板與周邊.jpg" PostBackUrl="~/Product/手機平板與周邊.aspx" />
        <asp:ImageButton ID="ImageButton8" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/汽車零件百貨.jpg" PostBackUrl="~/Product/汽機車零件百貨.aspx" />
        <asp:ImageButton ID="ImageButton9" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/男森包包與配件.jpg" PostBackUrl="~/Product/男生配件.aspx" />
        <br />
        <asp:ImageButton ID="ImageButton10" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/居家生活.jpg" PostBackUrl="~/Product/家居生活.aspx" />
        <asp:ImageButton ID="ImageButton11" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/服務、票卷.jpg" PostBackUrl="~/Product/服務、票卷.aspx" />
        <asp:ImageButton ID="ImageButton12" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/美妝保健.jpg" PostBackUrl="~/Product/美妝保健.aspx" />
        <asp:ImageButton ID="ImageButton13" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/娛樂、收藏.jpg" PostBackUrl="~/Product/娛樂、收藏.aspx" />
        <asp:ImageButton ID="ImageButton14" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/家電影音.jpg" PostBackUrl="~/Product/家電影音.aspx" />
        <asp:ImageButton ID="ImageButton15" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/遊戲王.jpg" PostBackUrl="~/Product/遊戲王.aspx" />
        <asp:ImageButton ID="ImageButton16" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/嬰幼童與母親.jpg" PostBackUrl="~/Product/嬰幼童與母親.aspx" />
        <asp:ImageButton ID="ImageButton17" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/寵物.jpg" PostBackUrl="~/Product/寵物.aspx" />
        <asp:ImageButton ID="ImageButton18" runat="server" Height="100px" Width="100px" ImageUrl="~/images/homepagepicture/美食、伴手禮.jpg" PostBackUrl="~/Product/美食伴手禮.aspx" />
        
    </div>
        
   

    
   
    
</asp:Content>
