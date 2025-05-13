class c_1476_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1476_6;
    c_1476_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11110z111z0011x1zzx0xzx111x10001xxxzzxxzxzxzxzzxxzxzxzxxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
