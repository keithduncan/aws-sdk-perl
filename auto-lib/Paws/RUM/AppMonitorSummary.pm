# Generated by default/object.tt
package Paws::RUM::AppMonitorSummary;
  use Moose;
  has Created => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::AppMonitorSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RUM::AppMonitorSummary object:

  $service_obj->Method(Att1 => { Created => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RUM::AppMonitorSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Created

=head1 DESCRIPTION

A structure that includes some data about app monitors and their
settings.

=head1 ATTRIBUTES


=head2 Created => Str

The date and time that the app monitor was created.


=head2 Id => Str

The unique ID of this app monitor.


=head2 LastModified => Str

The date and time of the most recent changes to this app monitor's
configuration.


=head2 Name => Str

The name of this app monitor.


=head2 State => Str

The current state of this app monitor.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

