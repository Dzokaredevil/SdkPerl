# WWW::MarketcheckCarsApi::HistoryApi

## Load the API package
```perl
use WWW::MarketcheckCarsApi::Object::HistoryApi;
```

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**history**](HistoryApi.md#history) | **GET** /history/{vin} | Get a cars online listing history


# **history**
> ARRAY[HistoricalListing] history(vin => $vin, api_key => $api_key, fields => $fields, rows => $rows, page => $page)

Get a cars online listing history

The history API returns online listing history for a car identified by its VIN. History listings are sorted in the descending order of the listing date / last seen date

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::HistoryApi;
my $api_instance = WWW::MarketcheckCarsApi::HistoryApi->new(
);

my $vin = 'vin_example'; # string | The VIN to identify the car to fetch the listing history. Must be a valid 17 char VIN
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $fields = 'fields_example'; # string | List of fields to fetch, in case the default fields list in the response is to be trimmed down
my $rows = 56; # int | Number of results to return. Default is 10. Max is 50
my $page = 8.14; # Number | Page number to fetch the results for the given criteria. Default is 1.

eval { 
    my $result = $api_instance->history(vin => $vin, api_key => $api_key, fields => $fields, rows => $rows, page => $page);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling HistoryApi->history: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| The VIN to identify the car to fetch the listing history. Must be a valid 17 char VIN | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **fields** | **string**| List of fields to fetch, in case the default fields list in the response is to be trimmed down | [optional] 
 **rows** | **int**| Number of results to return. Default is 10. Max is 50 | [optional] 
 **page** | **Number**| Page number to fetch the results for the given criteria. Default is 1. | [optional] 

### Return type

[**ARRAY[HistoricalListing]**](HistoricalListing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

