using System;
using System.Data;
using System.Configuration;
using System.Web.UI;

namespace ASPxPivotGrid_ChartIntegration {
    public partial class _Default : Page {
        protected override void OnInit(EventArgs e) {
            base.OnInit(e);

            // Specifies that Series data member values are created based on columns.
            ASPxPivotGrid1.OptionsChartDataSource.ProvideDataByColumns = true;

            // Specifies that data binding settings are automatically adjusted 
            // while retrieving data from the pivot grid.
            WebChartControl1.AutoBindingSettingsEnabled = true;

            // Sets the pivot grid as the chart's data source.
            WebChartControl1.DataSourceID = "ASPxPivotGrid1";
        }
        protected void ASPxCheckBox1_CheckedChanged(object sender, EventArgs e) {
            ASPxPivotGrid1.OptionsChartDataSource.ProvideDataByColumns = !ASPxCheckBox1.Checked;
        }
    }
}
