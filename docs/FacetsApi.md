# WWW::MarketcheckCarsApi::FacetsApi

## Load the API package
```perl
use WWW::MarketcheckCarsApi::Object::FacetsApi;
```

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_facets**](FacetsApi.md#get_facets) | **GET** /facets | Facets


# **get_facets**
> ARRAY[FacetItem] get_facets(fields => $fields, api_key => $api_key, vin => $vin, year => $year, make => $make, model => $model, trim => $trim)

Facets

[Merged with the /search API - Please check the 'facets' parameter to the Search API above] Get the facets for the given simple filter criteria (by given VIN's basic specification, Or by Year, Make, Model, Trim criteria) and facet fields

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::FacetsApi;
my $api_instance = WWW::MarketcheckCarsApi::FacetsApi->new(
);

my $fields = 'fields_example'; # string | Comma separated list of fields to generate facets for. Supported fields are - year, make, model, trim, exterior_color, interior_color, drivetrain, vehicle_type, car_type, body_style, body_subtype, doors
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which facets data is to be returned
my $year = 'year_example'; # string | Year of the car
my $make = 'make_example'; # string | Make of the car
my $model = 'model_example'; # string | Model of the Car
my $trim = 'trim_example'; # string | Trim of the Car

eval { 
    my $result = $api_instance->get_facets(fields => $fields, api_key => $api_key, vin => $vin, year => $year, make => $make, model => $model, trim => $trim);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FacetsApi->get_facets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fields** | **string**| Comma separated list of fields to generate facets for. Supported fields are - year, make, model, trim, exterior_color, interior_color, drivetrain, vehicle_type, car_type, body_style, body_subtype, doors | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **vin** | **string**| VIN as a reference to the type of car for which facets data is to be returned | [optional] 
 **year** | **string**| Year of the car | [optional] 
 **make** | **string**| Make of the car | [optional] 
 **model** | **string**| Model of the Car | [optional] 
 **trim** | **string**| Trim of the Car | [optional] 

### Return type

[**ARRAY[FacetItem]**](FacetItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

