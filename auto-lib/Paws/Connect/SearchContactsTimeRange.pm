# Generated by default/object.tt
package Paws::Connect::SearchContactsTimeRange;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchContactsTimeRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::SearchContactsTimeRange object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::SearchContactsTimeRange object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

A structure of time range that you want to search results.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time of the time range.


=head2 B<REQUIRED> StartTime => Str

The start time of the time range.


=head2 B<REQUIRED> Type => Str

The type of timestamp to search.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

