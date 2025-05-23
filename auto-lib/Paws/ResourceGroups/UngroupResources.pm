
package Paws::ResourceGroups::UngroupResources;
  use Moose;
  has Group => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UngroupResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ungroup-resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::UngroupResourcesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::UngroupResources - Arguments for method UngroupResources on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UngroupResources on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method UngroupResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UngroupResources.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $UngroupResourcesOutput = $resource -groups->UngroupResources(
      Group        => 'MyGroupStringV2',
      ResourceArns => [ 'MyResourceArn', ... ],

    );

    # Results:
    my $Failed    = $UngroupResourcesOutput->Failed;
    my $Pending   = $UngroupResourcesOutput->Pending;
    my $Succeeded = $UngroupResourcesOutput->Succeeded;

    # Returns a L<Paws::ResourceGroups::UngroupResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/UngroupResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Group => Str

The name or the Amazon resource name (ARN) of the resource group from
which to remove the resources.



=head2 B<REQUIRED> ResourceArns => ArrayRef[Str|Undef]

The Amazon resource names (ARNs) of the resources to be removed from
the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UngroupResources in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

