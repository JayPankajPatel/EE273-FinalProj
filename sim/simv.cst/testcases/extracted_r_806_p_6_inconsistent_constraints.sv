class c_806_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_806_6;
    c_806_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z1111z1x0101x010000xz00x11xzxzxzzzxxxzzzzzxzxxzxzxxxxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
