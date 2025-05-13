class c_924_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_924_6;
    c_924_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011x1010z00x1xzz1zxx1z00xxzz1x1zxzzxxxzxzxxzzxzzxzzxxzxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
