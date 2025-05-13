class c_1509_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1509_6;
    c_1509_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x1zz101x1zz100z1xx0x01zz11010xxxzzxzxzzzzxxxxzzxxxxxxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
