class c_1282_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1282_6;
    c_1282_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0z1z1x0011x0zz1101z0xzx010x10xzzzxzxzzzxzzzzxzzzzzxxxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
