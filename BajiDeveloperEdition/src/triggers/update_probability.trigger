trigger update_probability on Opportunity (after insert) {
    for(Opportunity op : Trigger.new){
            
            if(op.ExpectedRevenue > 0){
                op.Probability = 60;
            }
            
    }
}