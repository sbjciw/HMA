/* pre-prcess of data: to select IBM stocks, and add the tid column with sequence order by date  */

proc sort data=sashelp.stocks(where=(stock='IBM')) out=mystocks;
	by date;
run;
data mystocks;
    set mystocks;
    tid = _n_;
run;
