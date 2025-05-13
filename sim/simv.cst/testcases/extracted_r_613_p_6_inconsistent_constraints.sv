class c_613_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_613_6;
    c_613_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0x0110x0xz0x0000xx000zzz111xxxzxxzxxxzxzzxxxxxxxxxxzxxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
