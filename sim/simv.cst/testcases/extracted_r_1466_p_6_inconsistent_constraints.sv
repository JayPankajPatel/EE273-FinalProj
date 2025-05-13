class c_1466_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1466_6;
    c_1466_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1011x0x110z0zzx0zz0zzxx1zzx111zzxxzxxxxxzxzxxxzxzzxxzzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
