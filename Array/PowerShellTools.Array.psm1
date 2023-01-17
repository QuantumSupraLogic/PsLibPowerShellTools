#region documentation
# misc. helpers for arrays
#endregion

#region scriptheader
#endregion

#region code
function ToArray {
    begin {
        $output = @();
    }
    process {
        $output += $_;
    }
    end {
        return , $output;
    }
}