class c_1451_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1451_6;
    c_1451_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1xxx0zx1xz1zzxx11z1z0zx00110zzxxxzxxxzzzzxzxxzxzzxzxzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
