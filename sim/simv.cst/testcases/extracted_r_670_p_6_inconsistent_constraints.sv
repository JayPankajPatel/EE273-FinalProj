class c_670_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_670_6;
    c_670_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00011x01xxx0x01xxx0zxx110010z1zxzzxxxxxxxzxxxxzxxxxzxzxzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
