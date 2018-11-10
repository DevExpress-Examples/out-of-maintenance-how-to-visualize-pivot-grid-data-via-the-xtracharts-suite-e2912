<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb"
	Inherits="ASPxPivotGrid_ChartIntegration._Default" %>

<%@ Register Assembly="DevExpress.XtraCharts.v14.2, Version=14.2.3.0,
	Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.3.0,
	Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.XtraCharts.v14.2.Web, Version=14.2.3.0,
	Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v14.2, Version=14.2.3.0,
	Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPivotGrid"
	TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>

	<form id="form1" runat="server">
	<div>
		<dxe:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Text="Transpose Data Source"
		OnCheckedChanged="ASPxCheckBox1_CheckedChanged"
		AutoPostBack="True">
		</dxe:ASPxCheckBox>
		<dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" DataSourceID="AccessDataSource1"
		OptionsView-ShowColumnGrandTotals="False" OptionsView-ShowRowGrandTotals="False">
			<Fields>
				<dx:PivotGridField ID="fieldShippedYear" Area="ColumnArea" AreaIndex="0"
				Caption="Order Date" FieldName="OrderDate" GroupInterval="DateYear">
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldQuantity" Area="DataArea" AreaIndex="0"
				Caption="Quantity" FieldName="Quantity">
				</dx:PivotGridField>
				<dx:PivotGridField ID="fieldSalesperson" Area="RowArea" AreaIndex="0"
				Caption="Sales Person" FieldName="Sales_Person">
				</dx:PivotGridField>
			</Fields>
		</dx:ASPxPivotGrid>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/nwind.mdb"
		SelectCommand="SELECT [OrderDate], [Quantity], [Sales Person] AS Sales_Person FROM [SalesPerson]">
		</asp:AccessDataSource>
		<dxchartsui:WebChartControl ID="WebChartControl1" runat="server" Width="700" Height="400">
		</dxchartsui:WebChartControl>
	</div>
	</form>
</body>
</html>