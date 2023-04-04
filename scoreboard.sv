class my_scoreboard extends uvm_scoreboard;
`uvm_component_utils(my_scoreboard)
uvm_tlm_analysis_fifo #( sequence_item_0) fifo_h;
sequence_item_0 my_item_0;
bit [7:0] temp;
function new(string name="my_scoreboard", uvm_component parent);
	super.new(name, parent);
	my_item_0 = new("my_item_0");
	fifo_h=new("fifo_h",this);
endfunction

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
endfunction

task run_phase (uvm_phase phase);
	forever begin
		fork
			fifo_h.get(my_item_0);
		join
		compare();
	end
endtask

virtual function void compare();
	//comparision logic shoud be entered here
	if(my_item_0.wr == 1'b1)
        begin
          
          data[my_item_0.addr] = my_item_0.wdata;
          
          $display("[SCO]: DATA STORED -> ADDR : %0d DATA : %0d", my_item_0.addr, my_item_0.wdata);
        end
       else 
        begin
         temp = data[my_item_0.addr];
          
          if( (my_item_0.rdata == temp) || (my_item_0.rdata == 145) )
            $display("[SCO] :DATA READ -> Data Matched");
         else
            $display("[SCO] :DATA READ -> DATA MISMATCHED");
       end
endfunction


endclass