function DisplayNoResultsFound(grid) {
    // Get the number of Columns in the grid
    var dataSource = grid.data("kendoGrid").dataSource;
    var colCount = grid.find('.k-grid-header colgroup > col').length;

    // If there are no results place an indicator row
    if (dataSource._view.length == 0) {
        grid.find('.k-grid-content tbody')
            .append('<tr class="kendo-data-row"><td colspan="' + colCount + '" style="text-align:center"><b>There are currently no items available!</b></td></tr>');
    }

    // Get visible row count
    var rowCount = grid.find('.k-grid-content tbody tr').length;

    // If the row count is less that the page size add in the number of missing rows
    if (rowCount < dataSource._take) {
        var addRows = dataSource._take - rowCount;
        for (var i = 0; i < addRows; i++) {
            grid.find('.k-grid-content tbody').append('<tr class="kendo-data-row"><td>&nbsp;</td></tr>');
        }
    }
}