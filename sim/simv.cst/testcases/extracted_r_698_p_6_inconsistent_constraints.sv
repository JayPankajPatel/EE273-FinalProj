class c_698_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_698_6;
    c_698_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01xzx1001111101z0x0z1zz10111x0zzzzzzzzxzxzxxxxxzxzxzxxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
