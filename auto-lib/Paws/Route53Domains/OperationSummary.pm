# Generated by default/object.tt
package Paws::Route53Domains::OperationSummary;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has LastUpdatedDate => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusFlag => (is => 'ro', isa => 'Str');
  has SubmittedDate => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::OperationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Domains::OperationSummary object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Domains::OperationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

OperationSummary includes the following elements.

=head1 ATTRIBUTES


=head2 DomainName => Str

Name of the domain.


=head2 LastUpdatedDate => Str

The date when the last change was made in Unix time format and
Coordinated Universal Time (UTC).


=head2 Message => Str

Message about the operation.


=head2 OperationId => Str

Identifier returned to track the requested action.


=head2 Status => Str

The current status of the requested operation in the system.


=head2 StatusFlag => Str

Automatically checks whether there are no outstanding operations on
domains that need customer attention.

Valid values are:

=over

=item *

C<PENDING_ACCEPTANCE>: The operation is waiting for acceptance from the
account that is receiving the domain.

=item *

C<PENDING_CUSTOMER_ACTION>: The operation is waiting for customer
action, for example, returning an email.

=item *

C<PENDING_AUTHORIZATION>: The operation is waiting for the form of
authorization. For more information, see ResendOperationAuthorization
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ResendOperationAuthorization.html).

=item *

C<PENDING_PAYMENT_VERIFICATION>: The operation is waiting for the
payment method to validate.

=item *

C<PENDING_SUPPORT_CASE>: The operation includes a support case and is
waiting for its resolution.

=back



=head2 SubmittedDate => Str

The date when the request was submitted.


=head2 Type => Str

Type of the action requested.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

