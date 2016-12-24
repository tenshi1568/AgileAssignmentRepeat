<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WingtipToys.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <html>
  <head>

         <div id="contact">


          <h3>Working Hours</h3> 
Monday - Thursday : 11am-12pm</br>
Friday & Saturday   : 10am - 10pm</br>
Sunday                      : Holiday</br>
      </div>
    <style>
       #map {
        height: 250px;
        width: 70%;
       }
    </style>
  </head>
  <body>
    <h3>My Location</h3>
    <div id="map"></div>
    <script>
        function initMap() {
       
            var uluru = { lat: 3.089635, lng: 101.686835 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 25,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }
    </script>
   


    <script async defer
    src="https://maps.googleapis.com/maps/api/js?callback=initMap">
    </script>
  </body>
</html>
    
        <script type="text/javascript">
            window.onload = function () {
                var mapOptions = {
                    center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                    zoom: 25,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var infoWindow = new google.maps.InfoWindow();
                var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
                for (i = 0; i < markers.length; i++) {
                    var data = markers[i]
                    var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                    var marker = new google.maps.Marker({
                        position: myLatlng,
                        map: map,
                        title: data.title
                    });
                    (function (marker, data) {
                        google.maps.event.addListener(marker, "click", function (e) {
                            infoWindow.setContent(data.description);
                            infoWindow.open(map, marker);
                        });
                    })(marker, data);
                }
            }
        </script>
    </asp:Panel>
    </form>
</body>
</html>

    <h3>Leave a Message .</h3>

           <h2>Send Us Information Now !</h2>
     <div class="form-group">
        <tr>
            <td style="height: 22px"><asp:Label ID="LabelName" runat="server" Width="80px">Name:</asp:Label></td>
       <td style="height: 22px"> <asp:TextBox ID="txtName" runat="server" Width="209px"></asp:TextBox>  </td>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtName" runat="server" ErrorMessage="*Name field is required"></asp:RequiredFieldValidator>
        </tr>
              </br>
            </br>
<div class="form-group">
 
              <tr>
            <td> <asp:Label ID="LabelEmail" runat="server" Width="80px">Email:  </asp:Label></td>
       <asp:TextBox ID="txtEmail" runat="server" Width="211px"></asp:TextBox>  
           
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtEmail" runat="server" ErrorMessage="*Email field is required"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Please follow format xxx@.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ></asp:RegularExpressionValidator>
          
        </tr>
     </div>
<div class="form-group">
       <tr>
            <td><asp:Label ID="LabelComments" runat="server">Comments:  </asp:Label></td>
       <td> <asp:TextBox ID="txtComments" runat="server" Height="210px" TextMode="MultiLine" Width="320px"></asp:TextBox>  </td>
            
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtComments" runat="server" ErrorMessage="*Comments field is required"></asp:RequiredFieldValidator>
        </tr>
         </div>
         <tr>
         
      <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn-info" OnClick="Button1_Click" /></td>
          
        </tr>
            

  
         <br />
         

         <asp:Label ID="LabelStatus" runat="server" ></asp:Label>

  
    </div>
</asp:Content>
