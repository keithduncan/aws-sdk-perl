# Generated by default/object.tt
package Paws::CleanRooms::ProtectedQuery;
  use Moose;
  has ComputeConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::ComputeConfiguration', request_name => 'computeConfiguration', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest'], required => 1);
  has DifferentialPrivacy => (is => 'ro', isa => 'Paws::CleanRooms::DifferentialPrivacyParameters', request_name => 'differentialPrivacy', traits => ['NameInRequest']);
  has Error => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQueryError', request_name => 'error', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has MembershipArn => (is => 'ro', isa => 'Str', request_name => 'membershipArn', traits => ['NameInRequest'], required => 1);
  has MembershipId => (is => 'ro', isa => 'Str', request_name => 'membershipId', traits => ['NameInRequest'], required => 1);
  has Result => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQueryResult', request_name => 'result', traits => ['NameInRequest']);
  has ResultConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQueryResultConfiguration', request_name => 'resultConfiguration', traits => ['NameInRequest']);
  has SqlParameters => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQuerySQLParameters', request_name => 'sqlParameters', traits => ['NameInRequest']);
  has Statistics => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedQueryStatistics', request_name => 'statistics', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ProtectedQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::ProtectedQuery object:

  $service_obj->Method(Att1 => { ComputeConfiguration => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::ProtectedQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeConfiguration

=head1 DESCRIPTION

The parameters for an Clean Rooms protected query.

=head1 ATTRIBUTES


=head2 ComputeConfiguration => L<Paws::CleanRooms::ComputeConfiguration>

The compute configuration for the protected query.


=head2 B<REQUIRED> CreateTime => Str

The time at which the protected query was created.


=head2 DifferentialPrivacy => L<Paws::CleanRooms::DifferentialPrivacyParameters>

The sensitivity parameters of the differential privacy results of the
protected query.


=head2 Error => L<Paws::CleanRooms::ProtectedQueryError>

An error thrown by the protected query.


=head2 B<REQUIRED> Id => Str

The identifier for a protected query instance.


=head2 B<REQUIRED> MembershipArn => Str

The ARN of the membership.


=head2 B<REQUIRED> MembershipId => Str

The identifier for the membership.


=head2 Result => L<Paws::CleanRooms::ProtectedQueryResult>

The result of the protected query.


=head2 ResultConfiguration => L<Paws::CleanRooms::ProtectedQueryResultConfiguration>

Contains any details needed to write the query results.


=head2 SqlParameters => L<Paws::CleanRooms::ProtectedQuerySQLParameters>

The protected query SQL parameters.


=head2 Statistics => L<Paws::CleanRooms::ProtectedQueryStatistics>

Statistics about protected query execution.


=head2 B<REQUIRED> Status => Str

The status of the query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

