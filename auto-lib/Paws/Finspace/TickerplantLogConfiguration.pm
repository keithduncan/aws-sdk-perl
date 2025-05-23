# Generated by default/object.tt
package Paws::Finspace::TickerplantLogConfiguration;
  use Moose;
  has TickerplantLogVolumes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'tickerplantLogVolumes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::TickerplantLogConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Finspace::TickerplantLogConfiguration object:

  $service_obj->Method(Att1 => { TickerplantLogVolumes => $value, ..., TickerplantLogVolumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Finspace::TickerplantLogConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->TickerplantLogVolumes

=head1 DESCRIPTION

A configuration to store the Tickerplant logs. It consists of a list of
volumes that will be mounted to your cluster. For the cluster type
C<Tickerplant>, the location of the TP volume on the cluster will be
available by using the global variable C<.aws.tp_log_path>.

=head1 ATTRIBUTES


=head2 TickerplantLogVolumes => ArrayRef[Str|Undef]

The name of the volumes for tickerplant logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

