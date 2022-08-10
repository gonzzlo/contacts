set output [open "contactos.dat" w]

set n [molinfo top get numframes]

for {set i 1} {$i <= $n} {incr i} {
        molinfo top set frame $i
        #Set a selection
        set sel [atomselect top "same residue as (all within 5 of resname POPC)"]
        set aa [lsort -unique [$sel get {resname resid}]]
        puts $output "$i $aa"
}
close $output

