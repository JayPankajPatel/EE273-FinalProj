class c_492_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_492_6;
    c_492_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0z10zz0010z101011x1x1x1zxzxx0zxzzxzxxxzzxzzzzxzxzzzxzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
