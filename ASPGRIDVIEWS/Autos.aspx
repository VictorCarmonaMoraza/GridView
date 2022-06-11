<%@ Page Title="Grid Autos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Autos.aspx.cs" Inherits="ASPGRIDVIEWS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        /*En cada row aplica un margen inferior de 8px*/
        .row{
            margin-bottom: 8px;
        }
    </style>

    <!--Cabecera-->
    <div class="row">
        <div class="col-lg-12">
            <h3>Catálogo de Vehículos</h3>
        </div>
    </div>

    <!--Input para el nombre-->
    <div class="row">
        <div class="col-lg-5">
            <asp:TextBox ID="txtnombre" runat="server" Text="" CssClass="form-control" placeholder="Nombre del vehiculo"></asp:TextBox>
        </div>
    </div>

    <!--Input para el modelo-->
    <div class="row">
        <div class="col-lg-5">
            <asp:TextBox ID="txtmodelo" runat="server" Text="" CssClass="form-control" placeholder="Modelo"></asp:TextBox>
        </div>
    </div>

    <!--Boton-->
    <div class="row">
        <div class="col-lg-5">
            <asp:Button ID="btnguardar" runat="server" Text="Guardar" CssClass="btn-primary" OnClick="btnguardar_Click"></asp:Button>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <asp:GridView ID="gvAutos" runat="server"></asp:GridView>
        </div>
    </div> 
</asp:Content>
