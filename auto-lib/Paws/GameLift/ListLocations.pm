
package Paws::GameLift::ListLocations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::ListLocationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListLocations - Arguments for method ListLocations on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLocations on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method ListLocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLocations.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $ListLocationsOutput = $gamelift->ListLocations(
      Filters => [
        'AWS', ...    # values: AWS, CUSTOM
      ],    # OPTIONAL
      Limit     => 1,                          # OPTIONAL
      NextToken => 'MyNonZeroAndMaxString',    # OPTIONAL
    );

    # Results:
    my $Locations = $ListLocationsOutput->Locations;
    my $NextToken = $ListLocationsOutput->NextToken;

    # Returns a L<Paws::GameLift::ListLocationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/ListLocations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[Str|Undef]

Filters the list for C<AWS> or C<CUSTOM> locations.



=head2 Limit => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

A token that indicates the start of the next sequential page of
results. Use the token that is returned with a previous call to this
operation. To start at the beginning of the result set, do not specify
a value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLocations in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

