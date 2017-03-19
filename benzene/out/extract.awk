FNR == 1 {
    file_count++
    filename[file_count] = FILENAME
}

/SCF Done/ {
    if ( match(FILENAME,"monomer") > 0 )
        zero=2.0*$5
    energy[file_count] = $5
}

END {
    for (i=1; i <= file_count; i++) {
        if ( match(filename[i], "monomer") > 0 )
            continue
        printf "%50-s %5.2f\n", filename[i], (energy[i]-zero)*627.509469
        #printf "%5.2f\n", (energy[i]-zero)*627.509469
    }
}
