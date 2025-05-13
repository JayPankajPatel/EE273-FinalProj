class c_743_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_743_6;
    c_743_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxxx10zzx11111x01zx0z0zz0zx0zzzzxxzxxxzzxzzxxzxxxzxxzxzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
