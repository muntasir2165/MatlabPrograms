function watch_both = movies(hr1, min1, durmin1, hr2, min2, durmin2)

movie1_start = datetime(1,1,1,hr1,min1,0);
movie1_end = datetime(1,1,1,hr1,min1+durmin1,0);
movie2_start = datetime(1,1,1,hr2,min2,0);
%movie2_end = datetime(1,1,1,hr2,min2+durmin2,0);
timeout = duration(0,30,0);
watch_both = true;

if ((movie2_start - movie1_end) > timeout) || ((movie2_start >= movie1_start) && (movie2_start < movie1_end))
    watch_both = false;
end

end