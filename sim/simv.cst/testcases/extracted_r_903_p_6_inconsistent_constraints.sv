class c_903_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_903_6;
    c_903_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010xxx011x10zz1z00110zzzx1z1x1xxxxzxzzzzxxxzxzzxxzxxzzzxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
