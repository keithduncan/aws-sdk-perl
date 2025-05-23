
package Paws::WorkMail::CreateGroup;
  use Moose;
  has HiddenFromGlobalAddressList => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::CreateGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateGroup - Arguments for method CreateGroup on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroup on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method CreateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroup.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $CreateGroupResponse = $workmail->CreateGroup(
      Name                        => 'MyGroupName',
      OrganizationId              => 'MyOrganizationId',
      HiddenFromGlobalAddressList => 1,                    # OPTIONAL
    );

    # Results:
    my $GroupId = $CreateGroupResponse->GroupId;

    # Returns a L<Paws::WorkMail::CreateGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/CreateGroup>

=head1 ATTRIBUTES


=head2 HiddenFromGlobalAddressList => Bool

If this parameter is enabled, the group will be hidden from the address
book.



=head2 B<REQUIRED> Name => Str

The name of the group.



=head2 B<REQUIRED> OrganizationId => Str

The organization under which the group is to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

