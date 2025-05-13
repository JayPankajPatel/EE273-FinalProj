class c_1742_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1742_6;
    c_1742_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01z0xzxxxz1xz011x0zzx11z0010z0zxxzzxxxxzxxxxzzxxxzxzxxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
