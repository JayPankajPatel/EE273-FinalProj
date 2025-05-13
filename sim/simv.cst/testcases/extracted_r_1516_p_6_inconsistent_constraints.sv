class c_1516_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1516_6;
    c_1516_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0x001z1000001z00x0x0z110xzxx0xzxxxxxxzxxzzzxxxzzzzxzxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
