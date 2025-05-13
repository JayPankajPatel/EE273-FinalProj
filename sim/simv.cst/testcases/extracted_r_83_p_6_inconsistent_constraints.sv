class c_83_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_83_6;
    c_83_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzxx1z1x1x10zx0zxzxz0z0101z1xzxzzzzxzzzxxzxzzxxxzzxxxxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
