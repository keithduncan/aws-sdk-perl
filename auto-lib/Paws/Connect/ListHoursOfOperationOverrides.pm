
package Paws::Connect::ListHoursOfOperationOverrides;
  use Moose;
  has HoursOfOperationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HoursOfOperationId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHoursOfOperationOverrides');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListHoursOfOperationOverridesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListHoursOfOperationOverrides - Arguments for method ListHoursOfOperationOverrides on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHoursOfOperationOverrides on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListHoursOfOperationOverrides.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHoursOfOperationOverrides.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListHoursOfOperationOverridesResponse =
      $connect->ListHoursOfOperationOverrides(
      HoursOfOperationId => 'MyHoursOfOperationId',
      InstanceId         => 'MyInstanceId',
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      );

    # Results:
    my $HoursOfOperationOverrideList =
      $ListHoursOfOperationOverridesResponse->HoursOfOperationOverrideList;
    my $LastModifiedRegion =
      $ListHoursOfOperationOverridesResponse->LastModifiedRegion;
    my $LastModifiedTime =
      $ListHoursOfOperationOverridesResponse->LastModifiedTime;
    my $NextToken = $ListHoursOfOperationOverridesResponse->NextToken;

    # Returns a L<Paws::Connect::ListHoursOfOperationOverridesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListHoursOfOperationOverrides>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HoursOfOperationId => Str

The identifier for the hours of operation



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 MaxResults => Int

The maximum number of results to return per page. The default MaxResult
size is 100. Valid Range: Minimum value of 1. Maximum value of 1000.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHoursOfOperationOverrides in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

