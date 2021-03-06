=begin comment

Marketcheck Cars API

<b>Access the New, Used and Certified cars inventories for all Car Dealers in US.</b> <br/>The data is sourced from online listings by over 44,000 Car dealers in US. At any time, there are about 6.2M searchable listings (about 1.9M unique VINs) for Used & Certified cars and about 6.6M (about 3.9M unique VINs) New Car listings from all over US. We use this API at the back for our website <a href='https://www.marketcheck.com' target='_blank'>www.marketcheck.com</a> and our Android and iOS mobile apps too.<br/><h5> Few useful links : </h5><ul><li>A quick view of the API and the use cases is depicated <a href='https://portals.marketcheck.com/mcapi/' target='_blank'>here</a></li><li>The Postman collection with various usages of the API is shared here https://www.getpostman.com/collections/2752684ff636cdd7bac2</li></ul>

OpenAPI spec version: 1.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::MarketcheckCarsApi::HistoryApi');

my $api = WWW::MarketcheckCarsApi::HistoryApi->new();
isa_ok($api, 'WWW::MarketcheckCarsApi::HistoryApi');

#
# history test
#
{
    my $vin = undef; # replace NULL with a proper value
    my $api_key = undef; # replace NULL with a proper value
    my $fields = undef; # replace NULL with a proper value
    my $rows = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->history(vin => $vin, api_key => $api_key, fields => $fields, rows => $rows, page => $page);
}


1;
