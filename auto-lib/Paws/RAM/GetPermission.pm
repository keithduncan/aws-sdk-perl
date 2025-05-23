
package Paws::RAM::GetPermission;
  use Moose;
  has PermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionArn', required => 1);
  has PermissionVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'permissionVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getpermission');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::GetPermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetPermission - Arguments for method GetPermission on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPermission on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method GetPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPermission.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $GetPermissionResponse = $ram->GetPermission(
      PermissionArn     => 'MyString',
      PermissionVersion => 1,            # OPTIONAL
    );

    # Results:
    my $Permission = $GetPermissionResponse->Permission;

    # Returns a L<Paws::RAM::GetPermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/GetPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PermissionArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the permission whose contents you want to retrieve. To find the ARN
for a permission, use either the ListPermissions operation or go to the
Permissions library
(https://console.aws.amazon.com/ram/home#Permissions:) page in the RAM
console and then choose the name of the permission. The ARN is
displayed on the detail page.



=head2 PermissionVersion => Int

Specifies the version number of the RAM permission to retrieve. If you
don't specify this parameter, the operation retrieves the default
version.

To see the list of available versions, use ListPermissionVersions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPermission in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

