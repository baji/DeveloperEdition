trigger print_newvalues_in_trigger on Contact (after insert) {

    for(Contact con: Trigger.New)
    {
        system.debug('-----------the new trigger values are ----------'+con);
    }

}