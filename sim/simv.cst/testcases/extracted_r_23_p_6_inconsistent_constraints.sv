class c_23_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_23_6;
    c_23_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x1zzzx0z1z0zzxzxz10zxxx101x1zxzxzzzxzzzzxzxzzxxxxxzxzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
