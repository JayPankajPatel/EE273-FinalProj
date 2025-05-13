class c_1324_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1324_6;
    c_1324_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx11x01z00z0z10zz1x0110xz0z01xxzzzzxxxzxzxzxzzxzzzxxxxxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
