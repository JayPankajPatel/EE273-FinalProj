class c_802_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_802_6;
    c_802_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx1zz1xxzx00001zz10010x001z01xxxxzzxzxxzxzxzzzzzzzzzzxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
