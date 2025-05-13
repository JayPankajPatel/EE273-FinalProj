class c_584_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_584_6;
    c_584_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1xz0101zz01xxxz1110zzz0x0zzx1xzxxxzzxzzxxzxxxzxxzxzxzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
