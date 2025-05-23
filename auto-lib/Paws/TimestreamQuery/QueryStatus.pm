# Generated by default/object.tt
package Paws::TimestreamQuery::QueryStatus;
  use Moose;
  has CumulativeBytesMetered => (is => 'ro', isa => 'Int');
  has CumulativeBytesScanned => (is => 'ro', isa => 'Int');
  has ProgressPercentage => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::QueryStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::QueryStatus object:

  $service_obj->Method(Att1 => { CumulativeBytesMetered => $value, ..., ProgressPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::QueryStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CumulativeBytesMetered

=head1 DESCRIPTION

Information about the status of the query, including progress and bytes
scanned.

=head1 ATTRIBUTES


=head2 CumulativeBytesMetered => Int

The amount of data scanned by the query in bytes that you will be
charged for. This is a cumulative sum and represents the total amount
of data that you will be charged for since the query was started. The
charge is applied only once and is either applied when the query
completes running or when the query is cancelled.


=head2 CumulativeBytesScanned => Int

The amount of data scanned by the query in bytes. This is a cumulative
sum and represents the total amount of bytes scanned since the query
was started.


=head2 ProgressPercentage => Num

The progress of the query, expressed as a percentage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

