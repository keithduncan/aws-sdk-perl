
package Paws::EMR::RemoveAutoTerminationPolicy;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveAutoTerminationPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::RemoveAutoTerminationPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::RemoveAutoTerminationPolicy - Arguments for method RemoveAutoTerminationPolicy on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveAutoTerminationPolicy on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method RemoveAutoTerminationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveAutoTerminationPolicy.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $RemoveAutoTerminationPolicyOutput =
      $elasticmapreduce->RemoveAutoTerminationPolicy(
      ClusterId => 'MyClusterId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/RemoveAutoTerminationPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

Specifies the ID of the Amazon EMR cluster from which the
auto-termination policy will be removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveAutoTerminationPolicy in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

