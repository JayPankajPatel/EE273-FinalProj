class c_966_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_966_6;
    c_966_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0xxxzx1010x0110xz0x110z01z00z1zxxxxxzxxxxzzzxxzxxxxxxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
