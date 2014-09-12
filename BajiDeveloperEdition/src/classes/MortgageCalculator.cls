global class MortgageCalculator implements Process.Plugin
{
global Process.PluginResult invoke(Process.PluginRequest request)
{
Double amount = (Double)request.inputParameters.get('Amount');
Double term = (Double)request.inputParameters.get('Term');
// in addition to to adding the calculation below, to use this in the Visual Workflow Workbook, tutorial #3,
// a third input called "Rate" will need to be defined for the calculate quote step: the screen input field "Interest_Rate".
Double rate = (Double)request.inputParameters.get('Rate');
Double monthlyrate = rate/(12*100);
Double cMonthlyPayment = amount * (monthlyrate/(1 - Math.pow(1 + monthlyrate, -term)));
Map<String, Object> result = new Map<String, Object>();
result.put('MonthlyPayment', cMonthlyPayment);
return new Process.PluginResult(result);
}
global Process.PluginDescribeResult describe()
{
Process.PluginDescribeResult result = new Process.PluginDescribeResult();
result.description='This plug-in generates a monthly payment quote given the term and amount.';
result.tag='Mortgage Quote';
result.inputParameters = new List<Process.PluginDescribeResult.InputParameter> {
new Process.PluginDescribeResult.InputParameter('Amount',
Process.PluginDescribeResult.ParameterType.DOUBLE, true),
new Process.PluginDescribeResult.InputParameter('Term',
Process.PluginDescribeResult.ParameterType.DOUBLE, true),
new Process.PluginDescribeResult.InputParameter('Rate',
Process.PluginDescribeResult.ParameterType.DOUBLE, true)
};
result.outputParameters = new List<Process.PluginDescribeResult.OutputParameter> {
new Process.PluginDescribeResult.OutputParameter('MonthlyPayment',
Process.PluginDescribeResult.ParameterType.DOUBLE)
};
return result;
}
}