
package Paws::ServiceCatalog::DeleteServiceAction;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServiceAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DeleteServiceActionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DeleteServiceAction - Arguments for method DeleteServiceAction on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServiceAction on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DeleteServiceAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServiceAction.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DeleteServiceActionOutput = $servicecatalog->DeleteServiceAction(
      Id               => 'MyId',
      AcceptLanguage   => 'MyAcceptLanguage',      # OPTIONAL
      IdempotencyToken => 'MyIdempotencyToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DeleteServiceAction>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 B<REQUIRED> Id => Str

The self-service action identifier. For example, C<act-fs7abcd89wxyz>.



=head2 IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests from the same Amazon Web Services account use the same
idempotency token, the same response is returned for each repeated
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServiceAction in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

