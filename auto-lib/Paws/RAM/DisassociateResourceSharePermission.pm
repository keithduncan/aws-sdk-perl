
package Paws::RAM::DisassociateResourceSharePermission;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionArn', required => 1);
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateResourceSharePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/disassociateresourcesharepermission');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::DisassociateResourceSharePermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::DisassociateResourceSharePermission - Arguments for method DisassociateResourceSharePermission on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateResourceSharePermission on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method DisassociateResourceSharePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateResourceSharePermission.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $DisassociateResourceSharePermissionResponse =
      $ram->DisassociateResourceSharePermission(
      PermissionArn    => 'MyString',
      ResourceShareArn => 'MyString',
      ClientToken      => 'MyString',    # OPTIONAL
      );

    # Results:
    my $ClientToken = $DisassociateResourceSharePermissionResponse->ClientToken;
    my $ReturnValue = $DisassociateResourceSharePermissionResponse->ReturnValue;

   # Returns a L<Paws::RAM::DisassociateResourceSharePermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/DisassociateResourceSharePermission>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We
recommend that you use a UUID type of value.
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 B<REQUIRED> PermissionArn => Str

The Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the managed permission to disassociate from the resource share.
Changes to permissions take effect immediately.



=head2 B<REQUIRED> ResourceShareArn => Str

The Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the resource share that you want to remove the managed permission
from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateResourceSharePermission in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

