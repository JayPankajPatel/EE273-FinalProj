class c_386_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_386_6;
    c_386_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxx01z1xx0xz0x000z00zz0zx111zzzxzzxzxxzxzzzzxzzzxxzzxxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
