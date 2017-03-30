FNR == 1 {
    file_count++
    filenames[file_count]=FILENAME
}

/SCF Done/ { energy[file_count] = $5 }

END {

# fields:
#  1  2    3   4 5  6      ...
# cat_Me-amide_Z-Ph-b3lyp_d3bj-631gd-pcm-tz_sp.out

print "substituent,rotamer,R_group,energy" > "analysis.csv"
for (i=1; i <= file_count; i++)
        {
            filename = filenames[i]
            n_fields = split(filename,fields,"[_-]")
            printf "%s,%s,%s,%.8f\n", fields[2], fields[4], fields[5], energy[i]  >> "analysis.csv"
        }
}
