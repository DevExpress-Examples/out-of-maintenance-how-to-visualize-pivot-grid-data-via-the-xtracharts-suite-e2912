<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/134574257/14.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2912)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/ASPxPivotGrid_ChartIntegration/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_ChartIntegration/Default.aspx))
* **[Default.aspx.cs](./CS/ASPxPivotGrid_ChartIntegration/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ASPxPivotGrid_ChartIntegration/Default.aspx.vb))**
<!-- default file list end -->
# How to visualize pivot grid data via the XtraCharts Suite
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2912/)**
<!-- run online end -->


<p>The following example shows how to bind a Chart Control to a Pivot Grid to visualize data.</p><p>In this example, after an ASPxPivotGrid and Chart Control are created, the pivot grid's ID is assigned to the WebChartControl.DataSourceID property. By default, the WebChartControl.AutoBindingSettingsEnabled property is set to true, so that binding settings are automatically adjusted, and no further customization is needed.  Once the Chart Control is bound to the ASPxPivotGrid, pivot grid data is immediately displayed in the Chart.</p><p>The sample web page contains the 'Transpose Data Source' check box, which defines the pivot grid's PivotGridOptionsChartDataSource.ProvideDataByColumns property value. If the check box is checked, the property is set to false, and series are created based on pivot grid rows (instead of columns, which is default behavior).</p>

<br/>


