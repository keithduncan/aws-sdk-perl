
package Paws::EKS::DescribeUpdate;
  use Moose;
  has AddonName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'addonName');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has NodegroupName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nodegroupName');
  has UpdateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'updateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUpdate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/updates/{updateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DescribeUpdateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeUpdate - Arguments for method DescribeUpdate on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUpdate on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DescribeUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUpdate.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DescribeUpdateResponse = $eks->DescribeUpdate(
      Name          => 'MyString',
      UpdateId      => 'MyString',
      AddonName     => 'MyString',    # OPTIONAL
      NodegroupName => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Update = $DescribeUpdateResponse->Update;

    # Returns a L<Paws::EKS::DescribeUpdateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DescribeUpdate>

=head1 ATTRIBUTES


=head2 AddonName => Str

The name of the add-on. The name must match one of the names returned
by C<ListAddons>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html).
This parameter is required if the update is an add-on update.



=head2 B<REQUIRED> Name => Str

The name of the Amazon EKS cluster associated with the update.



=head2 NodegroupName => Str

The name of the Amazon EKS node group associated with the update. This
parameter is required if the update is a node group update.



=head2 B<REQUIRED> UpdateId => Str

The ID of the update to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUpdate in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

