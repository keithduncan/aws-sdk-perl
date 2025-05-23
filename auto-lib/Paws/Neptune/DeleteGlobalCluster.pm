
package Paws::Neptune::DeleteGlobalCluster;
  use Moose;
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::DeleteGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DeleteGlobalCluster - Arguments for method DeleteGlobalCluster on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGlobalCluster on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DeleteGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $DeleteGlobalClusterResult = $rds->DeleteGlobalCluster(
      GlobalClusterIdentifier => 'MyGlobalClusterIdentifier',

    );

    # Results:
    my $GlobalCluster = $DeleteGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::Neptune::DeleteGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteGlobalCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalClusterIdentifier => Str

The cluster identifier of the global database cluster being deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGlobalCluster in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

