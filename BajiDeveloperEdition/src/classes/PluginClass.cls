global class PluginClass implements Process.Plugin
{
global Process.PluginResult invoke(Process.PluginRequest request)
{
Map<String, Object> result = new Map<String, Object>();
return new Process.PluginResult(result);
}
global Process.PluginDescribeResult describe()
{
Process.PluginDescribeResult result = new Process.PluginDescribeResult();
result.description='This a test plug-in .';
result.tag='Mortgage Quote';

return result;
}
}