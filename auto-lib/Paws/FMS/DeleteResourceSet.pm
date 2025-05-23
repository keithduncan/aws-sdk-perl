
package Paws::FMS::DeleteResourceSet;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourceSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::DeleteResourceSet - Arguments for method DeleteResourceSet on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourceSet on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method DeleteResourceSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourceSet.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    $fms->DeleteResourceSet(
      Identifier => 'MyBase62Id',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/DeleteResourceSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

A unique identifier for the resource set, used in a request to refer to
the resource set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourceSet in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

