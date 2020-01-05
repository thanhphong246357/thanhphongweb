<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucslider.ascx.cs" Inherits="Đồ_án.UC.ucslider" %>
<style type="text/css">
    *{
      margin: 0;
      padding: 0;
    }

    .slide{
      width: 1200px;
      margin: 0 auto;
      overflow: hidden;
      margin-top: 50px;
      border-radius: 10px;
      position: relative;
    }
    .chuyen-slide{
      width: 9999px;
      transition: all 0.5s;
    }
    .chuyen-slide img{
      width: 1200px;
      height: 400px;
      float:left;
    }
    .dieuhuong{
      position: absolute;
      color: white;
      font-size: 40px;
      top: 48%;
      padding-left: 20px;
    }
    .dieuhuong i:last-child{
      position: relative;
      left: 1080px;
    }
</style>
<link href="../font-awesome/css/font-awesome.css" rel="stylesheet" />
<div class="slide">
		<div class="dieuhuong">
			<i class="fa fa-chevron-circle-left" onclick="Back();"></i>
			<i class="fa fa-chevron-circle-right" onclick="Next();"></i>
		</div>
		<div class="chuyen-slide">
			
			<img src="images/sach/105.jpg"/> 
			<img src="images/sach/102.jpg"/> 
			<img src="images/sach/103.jpg"/>
            <img src="images/sach/111.jpg"/> 
            <img src="images/sach/112.jpg"/>   
		</div>
	</div>
<script src="../UC/slide.js"></script>
