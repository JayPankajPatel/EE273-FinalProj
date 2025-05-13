class c_947_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_947_6;
    c_947_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1000xx01xz11z1xz000xxzxxzz00xxzzxzxxxzxzxxxxxzzxxxxxzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
