@isTest
global class MortgageCalculatorTest {
public static testmethod void testAll()
{
MortgageCalculator plugin = new MortgageCalculator();
Map<String,Object> inputParams = new Map<String,Object>();
Double amount = 500000;
Double term = 360;
Double rate = 5;
inputParams.put('Amount', amount);
inputParams.put('Term', term);
inputParams.put('Rate', rate);
Process.PluginRequest request = new Process.PluginRequest(inputParams);
Process.PluginResult aresult = Plugin.invoke(request);
Double monthlyAmount = (Double) aresult.outputParameters.get('MonthlyPayment');
System.assertEquals(Math.roundToLong(monthlyAmount),2684);
Process.PluginDescribeResult describe = plugin.describe();
System.assertEquals(describe.InputParameters.size(), 3);
System.assertEquals(describe.InputParameters[0].name, 'Amount');
System.assertEquals(describe.InputParameters[1].name, 'Term');
System.assertEquals(describe.InputParameters[2].name, 'Rate');
System.assertEquals(describe.OutputParameters.size(), 1);
System.assertEquals(describe.OutputParameters[0].name, 'MonthlyPayment');
}
}