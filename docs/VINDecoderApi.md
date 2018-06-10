# WWW::MarketcheckCarsApi::VINDecoderApi

## Load the API package
```perl
use WWW::MarketcheckCarsApi::Object::VINDecoderApi;
```

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**decode**](VINDecoderApi.md#decode) | **GET** /vin/{vin}/specs | VIN Decoder
[**get_economy**](VINDecoderApi.md#get_economy) | **GET** /economy | Get Economy based on environmental factors
[**get_efficiency**](VINDecoderApi.md#get_efficiency) | **GET** /fuel_efficiency | Get fuel effeciency
[**get_safety_rating**](VINDecoderApi.md#get_safety_rating) | **GET** /safety | Get Safety Rating


# **decode**
> Build decode(vin => $vin, api_key => $api_key)

VIN Decoder

Get the basic information on specifications for a car identified by a valid VIN

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::VINDecoderApi;
my $api_instance = WWW::MarketcheckCarsApi::VINDecoderApi->new(
);

my $vin = 'vin_example'; # string | VIN to decode
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->decode(vin => $vin, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VINDecoderApi->decode: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN to decode | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**Build**](Build.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_economy**
> Economy get_economy(vin => $vin, api_key => $api_key)

Get Economy based on environmental factors

[MOCK] Calculate Economy i.e. Environmental Friendliness

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::VINDecoderApi;
my $api_instance = WWW::MarketcheckCarsApi::VINDecoderApi->new(
);

my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which Environmental Economy data is to be returned
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_economy(vin => $vin, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VINDecoderApi->get_economy: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN as a reference to the type of car for which Environmental Economy data is to be returned | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**Economy**](Economy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_efficiency**
> FuelEfficiency get_efficiency(vin => $vin, api_key => $api_key)

Get fuel effeciency

[MOCK] Calculate fuel efficiency from taxonomy db mileage values

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::VINDecoderApi;
my $api_instance = WWW::MarketcheckCarsApi::VINDecoderApi->new(
);

my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which fuel data is to be returned
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_efficiency(vin => $vin, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VINDecoderApi->get_efficiency: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN as a reference to the type of car for which fuel data is to be returned | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**FuelEfficiency**](FuelEfficiency.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_safety_rating**
> SafetyRating get_safety_rating(vin => $vin, api_key => $api_key)

Get Safety Rating

[MOCK] Get Safety ratings from third party sources

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::VINDecoderApi;
my $api_instance = WWW::MarketcheckCarsApi::VINDecoderApi->new(
);

my $vin = 'vin_example'; # string | VIN to fetch the safety ratings
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_safety_rating(vin => $vin, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VINDecoderApi->get_safety_rating: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN to fetch the safety ratings | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**SafetyRating**](SafetyRating.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

