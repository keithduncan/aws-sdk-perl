
package Paws::Transfer::DescribeAgreement;
  use Moose;
  has AgreementId => (is => 'ro', isa => 'Str', required => 1);
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAgreement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::DescribeAgreementResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeAgreement - Arguments for method DescribeAgreement on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAgreement on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method DescribeAgreement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAgreement.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $DescribeAgreementResponse = $transfer->DescribeAgreement(
      AgreementId => 'MyAgreementId',
      ServerId    => 'MyServerId',

    );

    # Results:
    my $Agreement = $DescribeAgreementResponse->Agreement;

    # Returns a L<Paws::Transfer::DescribeAgreementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/DescribeAgreement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgreementId => Str

A unique identifier for the agreement. This identifier is returned when
you create an agreement.



=head2 B<REQUIRED> ServerId => Str

The server identifier that's associated with the agreement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAgreement in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

