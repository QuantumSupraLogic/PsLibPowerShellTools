Set-StrictMode -Version 3.0

function ConvertTo-Array {
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