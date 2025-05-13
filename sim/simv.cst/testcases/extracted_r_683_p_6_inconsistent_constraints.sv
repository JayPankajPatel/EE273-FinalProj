class c_683_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_683_6;
    c_683_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx1xz0z00110z1z01z0zx011zzx00zzxzxzxxxzxxzxxxzxzxxxxxxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
