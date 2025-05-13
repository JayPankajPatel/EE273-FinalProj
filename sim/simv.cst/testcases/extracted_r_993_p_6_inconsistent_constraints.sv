class c_993_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_993_6;
    c_993_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz00x01101x101x01x1zz0x000100xzzzxzzxxxzzxzzxxxxzzxzxzxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
