
package Paws::ServiceQuotas::ListAWSDefaultServiceQuotas;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAWSDefaultServiceQuotas');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListAWSDefaultServiceQuotas - Arguments for method ListAWSDefaultServiceQuotas on L<Paws::ServiceQuotas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAWSDefaultServiceQuotas on the
L<Service Quotas|Paws::ServiceQuotas> service. Use the attributes of this class
as arguments to method ListAWSDefaultServiceQuotas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAWSDefaultServiceQuotas.

=head1 SYNOPSIS

    my $servicequotas = Paws->service('ServiceQuotas');
    my $ListAWSDefaultServiceQuotasResponse =
      $servicequotas->ListAWSDefaultServiceQuotas(
      ServiceCode => 'MyServiceCode',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
      );

    # Results:
    my $NextToken = $ListAWSDefaultServiceQuotasResponse->NextToken;
    my $Quotas    = $ListAWSDefaultServiceQuotasResponse->Quotas;

 # Returns a L<Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas/ListAWSDefaultServiceQuotas>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the maximum number of results that you want included on each
page of the response. If you do not include this parameter, it defaults
to a value appropriate to the operation. If additional items exist
beyond those included in the current response, the C<NextToken>
response element is present and has a value (is not null). Include that
value as the C<NextToken> request parameter in the next call to the
operation to get the next part of the results.

An API operation can return fewer results than the maximum even when
there are more results available. You should check C<NextToken> after
every operation to ensure that you receive all of the results.



=head2 NextToken => Str

Specifies a value for receiving additional results after you receive a
C<NextToken> response in a previous request. A C<NextToken> response
indicates that more output is available. Set this parameter to the
value of the previous call's C<NextToken> response to indicate where
the output should continue from.



=head2 B<REQUIRED> ServiceCode => Str

Specifies the service identifier. To find the service code value for an
Amazon Web Services service, use the ListServices operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAWSDefaultServiceQuotas in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

