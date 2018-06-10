# WWW::MarketcheckCarsApi::ListingsApi

## Load the API package
```perl
use WWW::MarketcheckCarsApi::Object::ListingsApi;
```

All URIs are relative to *https://marketcheck-prod.apigee.net/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_listing**](ListingsApi.md#get_listing) | **GET** /listing/{id} | Listing by id
[**get_listing_extra**](ListingsApi.md#get_listing_extra) | **GET** /listing/{id}/extra | Long text Listings attributes for Listing with the given id
[**get_listing_media**](ListingsApi.md#get_listing_media) | **GET** /listing/{id}/media | Listing media by id
[**get_listing_vdp**](ListingsApi.md#get_listing_vdp) | **GET** /listing/{id}/vdp | Get listing HTML
[**get_summary_report**](ListingsApi.md#get_summary_report) | **GET** /vin_report_summary | Get Summary Report
[**search**](ListingsApi.md#search) | **GET** /search | Gets active car listings for the given search criteria


# **get_listing**
> Listing get_listing(id => $id, api_key => $api_key)

Listing by id

Get a particular listing by its id

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::ListingsApi;
my $api_instance = WWW::MarketcheckCarsApi::ListingsApi->new(
);

my $id = 'id_example'; # string | Listing id to get all the listing attributes
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_listing(id => $id, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ListingsApi->get_listing: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Listing id to get all the listing attributes | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**Listing**](Listing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_listing_extra**
> ListingExtraAttributes get_listing_extra(id => $id, api_key => $api_key)

Long text Listings attributes for Listing with the given id

Get listing options, features, seller comments

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::ListingsApi;
my $api_instance = WWW::MarketcheckCarsApi::ListingsApi->new(
);

my $id = 'id_example'; # string | Listing id to get all the long text listing attributes
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_listing_extra(id => $id, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ListingsApi->get_listing_extra: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Listing id to get all the long text listing attributes | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**ListingExtraAttributes**](ListingExtraAttributes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_listing_media**
> ListingMedia get_listing_media(id => $id, api_key => $api_key)

Listing media by id

Get listing media (photo, photos) by id

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::ListingsApi;
my $api_instance = WWW::MarketcheckCarsApi::ListingsApi->new(
);

my $id = 'id_example'; # string | Listing id to get all the listing attributes
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_listing_media(id => $id, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ListingsApi->get_listing_media: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Listing id to get all the listing attributes | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**ListingMedia**](ListingMedia.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_listing_vdp**
> ListingVDP get_listing_vdp(id => $id, api_key => $api_key, html => $html)

Get listing HTML

Cached HTML of the Vehicle Details Page (VDP) for the listing. The HTML is cached only for 7 days for all listings. So this API could be used to get HTML of mostly active listings and that have recently expired

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::ListingsApi;
my $api_instance = WWW::MarketcheckCarsApi::ListingsApi->new(
);

my $id = 'id_example'; # string | Listing id to get the vehicle details page (VDP) HTML
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $html = 'html_example'; # string | Get only HTML for given listings VDP page

eval { 
    my $result = $api_instance->get_listing_vdp(id => $id, api_key => $api_key, html => $html);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ListingsApi->get_listing_vdp: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Listing id to get the vehicle details page (VDP) HTML | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **html** | **string**| Get only HTML for given listings VDP page | [optional] 

### Return type

[**ListingVDP**](ListingVDP.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_summary_report**
> ARRAY[VinReport] get_summary_report(vin => $vin, api_key => $api_key)

Get Summary Report

[MOCK] Generate Summary report

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::ListingsApi;
my $api_instance = WWW::MarketcheckCarsApi::ListingsApi->new(
);

my $vin = 'vin_example'; # string | VIN as a reference to the type of car for which Summary data is to be returned
my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.

eval { 
    my $result = $api_instance->get_summary_report(vin => $vin, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ListingsApi->get_summary_report: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vin** | **string**| VIN as a reference to the type of car for which Summary data is to be returned | 
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 

### Return type

[**ARRAY[VinReport]**](VinReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> SearchResponse search(api_key => $api_key, latitude => $latitude, longitude => $longitude, radius => $radius, car_type => $car_type, seller_type => $seller_type, year => $year, make => $make, model => $model, trim => $trim, dealer_id => $dealer_id, vin => $vin, source => $source, body_type => $body_type, body_subtype => $body_subtype, vehicle_type => $vehicle_type, vins => $vins, taxonomy_vins => $taxonomy_vins, ymmt => $ymmt, match => $match, cylinders => $cylinders, transmission => $transmission, speeds => $speeds, doors => $doors, drivetrain => $drivetrain, exterior_color => $exterior_color, interior_color => $interior_color, engine => $engine, engine_type => $engine_type, engine_aspiration => $engine_aspiration, engine_block => $engine_block, miles_range => $miles_range, price_range => $price_range, dom_range => $dom_range, sort_by => $sort_by, sort_order => $sort_order, rows => $rows, start => $start, facets => $facets, stats => $stats, country => $country, plot => $plot, nodedup => $nodedup, state => $state, city => $city, dealer_name => $dealer_name, trim_o => $trim_o, trim_r => $trim_r, dom_active_range => $dom_active_range, dom_180_range => $dom_180_range, options => $options, features => $features)

Gets active car listings for the given search criteria

This endpoint is the meat of the API and serves many purposes. This API produces a list of currently active cars from the market for the given search criteria. The API results are limited to allow pagination upto 1000 rows.   The search API facilitates the following use cases -  1. Search Cars around a given geo-point within a given radius  2. Search cars for a specific year / make / model or combination of these  3. Search cars matching multiple year, make, model combinatins in the same search request 4. Filter results by most car specification attributes 5. Search for similar cars by VIN or Taxonomy VIN  6. Filter cars within a given price / miles / days on market (dom) range 7. Specify a sort order for the results on price / miles / dom / listed date  8. Search cars for a given City / State combination  9. Get Facets to build the search drill downs  10. Get Market averages for price/miles/dom/msrp for your search

### Example 
```perl
use Data::Dumper;
use WWW::MarketcheckCarsApi::ListingsApi;
my $api_instance = WWW::MarketcheckCarsApi::ListingsApi->new(
);

my $api_key = 'api_key_example'; # string | The API Authentication Key. Mandatory with all API calls.
my $latitude = 1.2; # double | Latitude component of location
my $longitude = 1.2; # double | Longitude component of location
my $radius = 56; # int | Radius around the search location
my $car_type = 'car_type_example'; # string | Car type. Allowed values are - new / used / certified
my $seller_type = 'seller_type_example'; # string | Seller type to filter cars on. Valid filter values are those that our Search facets API returns for unique seller types. You can pass in multiple seller type values comma separated.
my $year = 'year_example'; # string | Car year - 1980 onwards. Valid filter values are those that our Search facets API returns for unique years. You can pass in multiple year values comma separated.
my $make = 'make_example'; # string | Car Make - should be a standard OEM Make name. Valid filter values are those that our Search facets API returns for unique make. You can pass in multiple make values separated by comma. e.g. ford,audi
my $model = 'model_example'; # string | Car model to search. Valid filter values are those that our Search facets API returns for unique model. You can pass in multiple model values comma separated for e.g f-150,Mustang.
my $trim = 'trim_example'; # string | Car trim to search. Valid filter values are those that our Search facets API returns for unique trim. You can pass in multiple trim values comma separated
my $dealer_id = 'dealer_id_example'; # string | Dealer id to filter the cars.
my $vin = 'vin_example'; # string | Car vin to search
my $source = 'source_example'; # string | Source to search cars. Valid filter values are those that our Search facets API returns for unique source. You can pass in multiple source values comma separated
my $body_type = 'body_type_example'; # string | Body type to filter the cars on. Valid filter values are those that our Search facets API returns for unique body types. You can pass in multiple body types comma separated.
my $body_subtype = 'body_subtype_example'; # string | Body subtype to filter the cars on. Valid filter values are those that our Search facets API returns for unique body subtypes. You can pass in multiple body subtype values comma separated
my $vehicle_type = 'vehicle_type_example'; # string | Vehicle type to filter the cars on. Valid filter values are those that our Search facets API returns for unique vehicle types. You can pass in multiple vehicle type values comma separated
my $vins = 'vins_example'; # string | Comma separated list of 17 digit vins to search the matching cars for. Only 10 VINs allowed per request. If the request contains more than 10 VINs the first 10 VINs will be considered. Could be used as a More Like This or Similar Vehicles search for the given VINs. Ths vins parameter is an alternative to taxonomy_vins or ymmt parameters available with the search API. vins and taxonomy_vins parameters could be used to filter our cars with the exact build represented by the vins or taxonomy_vins whereas ymmt is a top level filter that does not filter cars by the build attributes like doors, drivetrain, cylinders, body type, body subtype, vehicle type etc
my $taxonomy_vins = 'taxonomy_vins_example'; # string | Comma separated list of 10 letters excert from the 17 letter VIN. The 10 letters to be picked up from the 17 letter VIN are - first 8 letters and the 10th and 11th letter. E.g. For a VIN - 1FTFW1EF3EKE57182 the taxonomy vin would be - 1FTFW1EFEK  A taxonomy VIN identified a build of a car and could be used to filter our cars of a particular build. This is an alternative to the vin or ymmt parameters to the search API.
my $ymmt = 'ymmt_example'; # string | Comma separated list of Year, Make, Model, Trim combinations. Each combination needs to have the year,make,model, trim values separated by a pipe '|' character in the form year|make|model|trim. e.g. 2010|Audi|A5,2014|Nissan|Sentra|S 6MT,|Honda|City|   You could just provide strings of the form - 'year|make||' or 'year|make|model' or '|make|model|' combinations. Individual year / make / model filters provied with the API calls will take precedence over the Year, Make, Model, Trim combinations. The Make, Model, Trim values must be valid values as per the Marketcheck Vin Decoder. If you are using a separate vin decoder then look at using the 'vins' or 'taxonomy_vins' parameter to the search api instead the year|make|model|trim combinations.
my $match = 'match_example'; # string | Comma separated list of Year, Make, Model, Trim fields. For example - year,make,model,trim fields for which user wants to do an exact match
my $cylinders = 'cylinders_example'; # string | Cylinders to filter the cars on. Valid filter values are those that our Search facets API returns for unique cylinder values. You can pass in multiple cylinder values comma separated
my $transmission = 'transmission_example'; # string | Transmission to filter the cars on. [a = Automatic, m = Manual]. Valid filter values are those that our Search facets API returns for unique transmission. You can pass in multiple transmission values comma separated
my $speeds = 'speeds_example'; # string | Speeds to filter the cars on. Valid filter values are those that our Search facets API returns for unique speeds. You can pass in multiple speeds values comma separated
my $doors = 'doors_example'; # string | Doors to filter the cars on. Valid filter values are those that our Search facets API returns for unique doors. You can pass in multiple doors values comma separated
my $drivetrain = 'drivetrain_example'; # string | Drivetrain to filter the cars on. Valid filter values are those that our Search facets API returns for unique drivetrains. You can pass in multiple drivetrain values comma separated
my $exterior_color = 'exterior_color_example'; # string | Exterior color to match. Valid filter values are those that our Search facets API returns for unique exterior colors. You can pass in multiple exterior color values comma separated
my $interior_color = 'interior_color_example'; # string | Interior color to match. Valid filter values are those that our Search facets API returns for unique interior colors. You can pass in multiple interior color values comma separated
my $engine = 'engine_example'; # string | Filter listings on engine
my $engine_type = 'engine_type_example'; # string | Engine Type to match. Valid filter values are those that our Search facets API returns for unique engine types. You can pass in multiple engine type values comma separated
my $engine_aspiration = 'engine_aspiration_example'; # string | Engine Aspiration to match. Valid filter values are those that our Search facets API returns for unique Engine Aspirations. You can pass in multiple Engine aspirations values comma separated
my $engine_block = 'engine_block_example'; # string | Engine Block to match. Valid filter values are those that our Search facets API returns for unique Engine Block. You can pass in multiple Engine Block values comma separated
my $miles_range = 'miles_range_example'; # string | Miles range to filter cars with miles in the given range. Range to be given in the format - min-max e.g. 1000-5000
my $price_range = 'price_range_example'; # string | Price range to filter cars with the price in the range given. Range to be given in the format - min-max e.g. 1000-5000
my $dom_range = 'dom_range_example'; # string | Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50
my $sort_by = 'sort_by_example'; # string | Sort by field - allowed fields are distance|price|miles|dom|age|posted_at|year. Default sort field is distance from the given point
my $sort_order = 'sort_order_example'; # string | Sort order - asc or desc. Default sort order is distance from a point.
my $rows = 56; # int | Number of results to return. Default is 10. Max is 50
my $start = 56; # int | Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows
my $facets = 'facets_example'; # string | The comma separated list of fields for which facets are requested. Supported fields are - year, make, model, trim, vehicle_type, car_type, body_type, body_subtype, drivetrain, cylinders, transmission, exterior_color, interior_color, doors, engine_type, engine_aspiration, engine_block. Facets could be requested in addition to the listings for the search. Please note - The API calls with lots of facet fields may take longer to respond.
my $stats = 'stats_example'; # string | The list of fields for which stats need to be generated based on the matching listings for the search criteria. Allowed fields are - price, miles, msrp, dom The stats consists of mean, max, average and count of listings based on which the stats are calculated for the field. Stats could be requested in addition to the listings for the search. Please note - The API calls with the stats fields may take longer to respond.
my $country = 'country_example'; # string | Filter on Country, by default US. Search available on US (United States) and CA (Canada)
my $plot = 'plot_example'; # string | If plot has value true results in around 25k coordinates with limited fields to plot respective graph
my $nodedup = 'nodedup_example'; # string | If nodedup is set to true then will give results using is_searchable
my $state = 'state_example'; # string | Filter listsings on State
my $city = 'city_example'; # string | Filter listings on city
my $dealer_name = 'dealer_name_example'; # string | Filter listings on dealer_name
my $trim_o = 'trim_o_example'; # string | Filter listings on web scraped trim
my $trim_r = 'trim_r_example'; # string | Filter trim on custom possible matches
my $dom_active_range = 'dom_active_range_example'; # string | Active Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50
my $dom_180_range = 'dom_180_range_example'; # string | Last 180 Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50
my $options = 'options_example'; # string | Tokenizer search on options for multiple options use | as seperator
my $features = 'features_example'; # string | Tokenizer search on features for multiple options use | as seperator

eval { 
    my $result = $api_instance->search(api_key => $api_key, latitude => $latitude, longitude => $longitude, radius => $radius, car_type => $car_type, seller_type => $seller_type, year => $year, make => $make, model => $model, trim => $trim, dealer_id => $dealer_id, vin => $vin, source => $source, body_type => $body_type, body_subtype => $body_subtype, vehicle_type => $vehicle_type, vins => $vins, taxonomy_vins => $taxonomy_vins, ymmt => $ymmt, match => $match, cylinders => $cylinders, transmission => $transmission, speeds => $speeds, doors => $doors, drivetrain => $drivetrain, exterior_color => $exterior_color, interior_color => $interior_color, engine => $engine, engine_type => $engine_type, engine_aspiration => $engine_aspiration, engine_block => $engine_block, miles_range => $miles_range, price_range => $price_range, dom_range => $dom_range, sort_by => $sort_by, sort_order => $sort_order, rows => $rows, start => $start, facets => $facets, stats => $stats, country => $country, plot => $plot, nodedup => $nodedup, state => $state, city => $city, dealer_name => $dealer_name, trim_o => $trim_o, trim_r => $trim_r, dom_active_range => $dom_active_range, dom_180_range => $dom_180_range, options => $options, features => $features);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ListingsApi->search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **string**| The API Authentication Key. Mandatory with all API calls. | [optional] 
 **latitude** | **double**| Latitude component of location | [optional] 
 **longitude** | **double**| Longitude component of location | [optional] 
 **radius** | **int**| Radius around the search location | [optional] 
 **car_type** | **string**| Car type. Allowed values are - new / used / certified | [optional] 
 **seller_type** | **string**| Seller type to filter cars on. Valid filter values are those that our Search facets API returns for unique seller types. You can pass in multiple seller type values comma separated. | [optional] 
 **year** | **string**| Car year - 1980 onwards. Valid filter values are those that our Search facets API returns for unique years. You can pass in multiple year values comma separated. | [optional] 
 **make** | **string**| Car Make - should be a standard OEM Make name. Valid filter values are those that our Search facets API returns for unique make. You can pass in multiple make values separated by comma. e.g. ford,audi | [optional] 
 **model** | **string**| Car model to search. Valid filter values are those that our Search facets API returns for unique model. You can pass in multiple model values comma separated for e.g f-150,Mustang. | [optional] 
 **trim** | **string**| Car trim to search. Valid filter values are those that our Search facets API returns for unique trim. You can pass in multiple trim values comma separated | [optional] 
 **dealer_id** | **string**| Dealer id to filter the cars. | [optional] 
 **vin** | **string**| Car vin to search | [optional] 
 **source** | **string**| Source to search cars. Valid filter values are those that our Search facets API returns for unique source. You can pass in multiple source values comma separated | [optional] 
 **body_type** | **string**| Body type to filter the cars on. Valid filter values are those that our Search facets API returns for unique body types. You can pass in multiple body types comma separated. | [optional] 
 **body_subtype** | **string**| Body subtype to filter the cars on. Valid filter values are those that our Search facets API returns for unique body subtypes. You can pass in multiple body subtype values comma separated | [optional] 
 **vehicle_type** | **string**| Vehicle type to filter the cars on. Valid filter values are those that our Search facets API returns for unique vehicle types. You can pass in multiple vehicle type values comma separated | [optional] 
 **vins** | **string**| Comma separated list of 17 digit vins to search the matching cars for. Only 10 VINs allowed per request. If the request contains more than 10 VINs the first 10 VINs will be considered. Could be used as a More Like This or Similar Vehicles search for the given VINs. Ths vins parameter is an alternative to taxonomy_vins or ymmt parameters available with the search API. vins and taxonomy_vins parameters could be used to filter our cars with the exact build represented by the vins or taxonomy_vins whereas ymmt is a top level filter that does not filter cars by the build attributes like doors, drivetrain, cylinders, body type, body subtype, vehicle type etc | [optional] 
 **taxonomy_vins** | **string**| Comma separated list of 10 letters excert from the 17 letter VIN. The 10 letters to be picked up from the 17 letter VIN are - first 8 letters and the 10th and 11th letter. E.g. For a VIN - 1FTFW1EF3EKE57182 the taxonomy vin would be - 1FTFW1EFEK  A taxonomy VIN identified a build of a car and could be used to filter our cars of a particular build. This is an alternative to the vin or ymmt parameters to the search API. | [optional] 
 **ymmt** | **string**| Comma separated list of Year, Make, Model, Trim combinations. Each combination needs to have the year,make,model, trim values separated by a pipe &#39;|&#39; character in the form year|make|model|trim. e.g. 2010|Audi|A5,2014|Nissan|Sentra|S 6MT,|Honda|City|   You could just provide strings of the form - &#39;year|make||&#39; or &#39;year|make|model&#39; or &#39;|make|model|&#39; combinations. Individual year / make / model filters provied with the API calls will take precedence over the Year, Make, Model, Trim combinations. The Make, Model, Trim values must be valid values as per the Marketcheck Vin Decoder. If you are using a separate vin decoder then look at using the &#39;vins&#39; or &#39;taxonomy_vins&#39; parameter to the search api instead the year|make|model|trim combinations. | [optional] 
 **match** | **string**| Comma separated list of Year, Make, Model, Trim fields. For example - year,make,model,trim fields for which user wants to do an exact match | [optional] 
 **cylinders** | **string**| Cylinders to filter the cars on. Valid filter values are those that our Search facets API returns for unique cylinder values. You can pass in multiple cylinder values comma separated | [optional] 
 **transmission** | **string**| Transmission to filter the cars on. [a &#x3D; Automatic, m &#x3D; Manual]. Valid filter values are those that our Search facets API returns for unique transmission. You can pass in multiple transmission values comma separated | [optional] 
 **speeds** | **string**| Speeds to filter the cars on. Valid filter values are those that our Search facets API returns for unique speeds. You can pass in multiple speeds values comma separated | [optional] 
 **doors** | **string**| Doors to filter the cars on. Valid filter values are those that our Search facets API returns for unique doors. You can pass in multiple doors values comma separated | [optional] 
 **drivetrain** | **string**| Drivetrain to filter the cars on. Valid filter values are those that our Search facets API returns for unique drivetrains. You can pass in multiple drivetrain values comma separated | [optional] 
 **exterior_color** | **string**| Exterior color to match. Valid filter values are those that our Search facets API returns for unique exterior colors. You can pass in multiple exterior color values comma separated | [optional] 
 **interior_color** | **string**| Interior color to match. Valid filter values are those that our Search facets API returns for unique interior colors. You can pass in multiple interior color values comma separated | [optional] 
 **engine** | **string**| Filter listings on engine | [optional] 
 **engine_type** | **string**| Engine Type to match. Valid filter values are those that our Search facets API returns for unique engine types. You can pass in multiple engine type values comma separated | [optional] 
 **engine_aspiration** | **string**| Engine Aspiration to match. Valid filter values are those that our Search facets API returns for unique Engine Aspirations. You can pass in multiple Engine aspirations values comma separated | [optional] 
 **engine_block** | **string**| Engine Block to match. Valid filter values are those that our Search facets API returns for unique Engine Block. You can pass in multiple Engine Block values comma separated | [optional] 
 **miles_range** | **string**| Miles range to filter cars with miles in the given range. Range to be given in the format - min-max e.g. 1000-5000 | [optional] 
 **price_range** | **string**| Price range to filter cars with the price in the range given. Range to be given in the format - min-max e.g. 1000-5000 | [optional] 
 **dom_range** | **string**| Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50 | [optional] 
 **sort_by** | **string**| Sort by field - allowed fields are distance|price|miles|dom|age|posted_at|year. Default sort field is distance from the given point | [optional] 
 **sort_order** | **string**| Sort order - asc or desc. Default sort order is distance from a point. | [optional] 
 **rows** | **int**| Number of results to return. Default is 10. Max is 50 | [optional] 
 **start** | **int**| Page number to fetch the results for the given criteria. Default is 1. Pagination is allowed only till first 1000 results for the search and sort criteria. The page value can be only between 1 to 1000/rows | [optional] 
 **facets** | **string**| The comma separated list of fields for which facets are requested. Supported fields are - year, make, model, trim, vehicle_type, car_type, body_type, body_subtype, drivetrain, cylinders, transmission, exterior_color, interior_color, doors, engine_type, engine_aspiration, engine_block. Facets could be requested in addition to the listings for the search. Please note - The API calls with lots of facet fields may take longer to respond. | [optional] 
 **stats** | **string**| The list of fields for which stats need to be generated based on the matching listings for the search criteria. Allowed fields are - price, miles, msrp, dom The stats consists of mean, max, average and count of listings based on which the stats are calculated for the field. Stats could be requested in addition to the listings for the search. Please note - The API calls with the stats fields may take longer to respond. | [optional] 
 **country** | **string**| Filter on Country, by default US. Search available on US (United States) and CA (Canada) | [optional] 
 **plot** | **string**| If plot has value true results in around 25k coordinates with limited fields to plot respective graph | [optional] 
 **nodedup** | **string**| If nodedup is set to true then will give results using is_searchable | [optional] 
 **state** | **string**| Filter listsings on State | [optional] 
 **city** | **string**| Filter listings on city | [optional] 
 **dealer_name** | **string**| Filter listings on dealer_name | [optional] 
 **trim_o** | **string**| Filter listings on web scraped trim | [optional] 
 **trim_r** | **string**| Filter trim on custom possible matches | [optional] 
 **dom_active_range** | **string**| Active Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50 | [optional] 
 **dom_180_range** | **string**| Last 180 Days on Market range to filter cars with the DOM within the given range. Range to be given in the format - min-max e.g. 10-50 | [optional] 
 **options** | **string**| Tokenizer search on options for multiple options use | as seperator | [optional] 
 **features** | **string**| Tokenizer search on features for multiple options use | as seperator | [optional] 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

