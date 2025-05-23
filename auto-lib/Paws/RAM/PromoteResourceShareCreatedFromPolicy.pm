
package Paws::RAM::PromoteResourceShareCreatedFromPolicy;
  use Moose;
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceShareArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PromoteResourceShareCreatedFromPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/promoteresourcesharecreatedfrompolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::PromoteResourceShareCreatedFromPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::PromoteResourceShareCreatedFromPolicy - Arguments for method PromoteResourceShareCreatedFromPolicy on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PromoteResourceShareCreatedFromPolicy on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method PromoteResourceShareCreatedFromPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PromoteResourceShareCreatedFromPolicy.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $PromoteResourceShareCreatedFromPolicyResponse =
      $ram->PromoteResourceShareCreatedFromPolicy(
      ResourceShareArn => 'MyString',

      );

    # Results:
    my $ReturnValue =
      $PromoteResourceShareCreatedFromPolicyResponse->ReturnValue;

 # Returns a L<Paws::RAM::PromoteResourceShareCreatedFromPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/PromoteResourceShareCreatedFromPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceShareArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the resource share to promote.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PromoteResourceShareCreatedFromPolicy in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

