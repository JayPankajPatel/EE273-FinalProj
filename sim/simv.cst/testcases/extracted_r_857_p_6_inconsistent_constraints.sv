class c_857_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_857_6;
    c_857_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01xzx100xz0z00zzxx0zxx111zzx0xxxxxxzzzzzxxxzzxzzzzzxxzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
