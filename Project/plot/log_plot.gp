##
## An example of a plot with yerror bars
##

# To create the graph use
# gnuplot ex1.gp

## uncomment the next two lines to save plot into a file
set terminal pngcairo enhanced font "arial,12" fontscale 1.0
set output 'log_plot.png'

# Set titles of the graph and axis
set style data lines
# set title "error represented by yerrorbars"
set xlabel "Number of Vertices"
set ylabel "Time [log({/Symbol m}s)]"
set monochrome
set object rectangle from screen 0,0 to screen 1,1 behind fc rgb "white" behind
set xrange [1:55]
set logscale y 10

# plot the file
# restrict the plot to xrange between 0 and 10
# read data from cpu.dat
# use first 3 columns of the file
# set the title of the plot
# connect dots with lines
# AND
# plot the same file, but without title, and only show error bars
# the combination of the two plots gives both a connecting line and yerror bars
# plot [0:10] "cpu.dat" using 1:2:3 title "Running time" with lines,  \
#      "cpu.dat" using 1:log(2):log(3) notitle with yerr

 plot 'cover_timings.dat' i 0 using 1:2:3 with lines title columnheader(1) dashtype 1,\
      'cover_timings.dat' i 0 using 1:2:3 with yerr notitle,\
      'cover_timings.dat' i 1 using 1:2:3 with lines title columnheader(1) dashtype 2,\
      'cover_timings.dat' i 1 using 1:2:3 with yerr notitle,\
      'cover_timings.dat' i 2 using 1:2:3 with lines title columnheader(1) dashtype 4,\
      'cover_timings.dat' i 2 using 1:2:3 with yerr notitle,\

