class c_493_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_493_6;
    c_493_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xz00xxx00zxx00x000z1xx00z0zzxxzxzxxzxzzxzzxxzxxzxxxxxxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
