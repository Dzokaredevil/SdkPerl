# WWW::MarketcheckCarsApi::GraphsApi

## Load the API package
```perl
use WWW::MarketcheckCarsApi::Object::GraphsApi;
```

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_price_miles_plot_data**](GraphsApi.md#get_price_miles_plot_data) | **GET** /plots | Price, Miles plots data for given criteria


# **get_price_miles_plot_data**
> ARRAY[PlotPoint] get_price_miles_plot_data(car_type => $car_type, api_key => $api_key, vin => $vin, year => $year, make => $make, model => $model, trim => $trim, rows => $rows)

Price, Miles plots data for given criteria

[DEPRECIATED Please check this in /search API using plot=true]Get price, miles plot data for active cars matching the given VIN's basic specification or Year, Make, Model, Trim (Optional) criteria

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::GraphsApi;
my $api_instance = WWW::MarketcheckCarsApi::GraphsApi->new(
);

my $car_type = 'car_type_example'; # string | Car type to get the scatter plot data for
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which plot data is to be returned
my $year = 'year_example'; # string | Year of the car
my $make = 'make_example'; # string | Make of the car
my $model = 'model_example'; # string | Model of the Car
my $trim = 'trim_example'; # string | Trim of the Car
my $rows = 56; # int | Number of results to return. Default is 1000. Max is 10000

eval { 
    my $result = $api_instance->get_price_miles_plot_data(car_type => $car_type, api_key => $api_key, vin => $vin, year => $year, make => $make, model => $model, trim => $trim, rows => $rows);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GraphsApi->get_price_miles_plot_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **car_type** | **string**| Car type to get the scatter plot data for | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **vin** | **string**| VIN as a reference to the type of car for which plot data is to be returned | [optional] 
 **year** | **string**| Year of the car | [optional] 
 **make** | **string**| Make of the car | [optional] 
 **model** | **string**| Model of the Car | [optional] 
 **trim** | **string**| Trim of the Car | [optional] 
 **rows** | **int**| Number of results to return. Default is 1000. Max is 10000 | [optional] 

### Return type

[**ARRAY[PlotPoint]**](PlotPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

