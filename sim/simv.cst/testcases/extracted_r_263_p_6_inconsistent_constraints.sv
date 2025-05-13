class c_263_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_263_6;
    c_263_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxx00z0010zz1x0x1zxx0x1zzzx1zzzxxzzzzxxzxzxzxxzxzzxxxzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
