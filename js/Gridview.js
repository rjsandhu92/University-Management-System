//FUNCTION FOR DELETE RECORD
function DeleteConfirmation() {
    var count = 0;
    var grd = document.getElementById('gvEnquiry');
    var valid = false;
    for (var row = 1; row < grd.rows.length; row++) {
        var chkUnit = grd.rows[row].cells[0];
        if (chkUnit.childNodes[1].type == 'checkbox') {
            if (chkUnit.childNodes[1].checked) {
                count += 1;
            }
        }
    }
    if (count <= 0) {

        return false;
    }
    else {
        if (confirm("Do you want to delete the record?") == true)
            return true;
        else
            return false;
    }
}

function call(a) {
    if (a == true)//if checked
    {
        if (CheckBoxIDs != null) {
            for (var i = 1; i < CheckBoxIDs.length; i++) {
                var ch = document.getElementById(CheckBoxIDs[i]);
                ch.checked = true
            }
        }
    }
    else//if Unchecked
    {
        if (CheckBoxIDs != null) {
            for (var i = 1; i < CheckBoxIDs.length; i++) {
                var ch = document.getElementById(CheckBoxIDs[i]);
                ch.checked = false
            }
        }
    }
}
 
