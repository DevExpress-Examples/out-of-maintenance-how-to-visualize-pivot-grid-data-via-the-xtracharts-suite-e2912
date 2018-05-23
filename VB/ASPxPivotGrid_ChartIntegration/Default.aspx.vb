Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web.UI

Namespace ASPxPivotGrid_ChartIntegration
	Partial Public Class _Default
		Inherits Page
		Protected Overrides Sub OnInit(ByVal e As EventArgs)
			MyBase.OnInit(e)

			' Specifies that Series data member values are created based on columns.
			ASPxPivotGrid1.OptionsChartDataSource.ProvideDataByColumns = True

			' Specifies that data binding settings are automatically adjusted 
			' while retrieving data from the pivot grid.
			WebChartControl1.PivotGridDataSourceOptions.AutoBindingSettingsEnabled = True

			' Sets the pivot grid as the chart's data source.
			WebChartControl1.DataSourceID = "ASPxPivotGrid1"
		End Sub
		Protected Sub ASPxCheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs)
			ASPxPivotGrid1.OptionsChartDataSource.ProvideDataByColumns = Not ASPxCheckBox1.Checked
		End Sub
	End Class
End Namespace
