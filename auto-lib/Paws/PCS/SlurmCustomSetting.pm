# Generated by default/object.tt
package Paws::PCS::SlurmCustomSetting;
  use Moose;
  has ParameterName => (is => 'ro', isa => 'Str', request_name => 'parameterName', traits => ['NameInRequest'], required => 1);
  has ParameterValue => (is => 'ro', isa => 'Str', request_name => 'parameterValue', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::SlurmCustomSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PCS::SlurmCustomSetting object:

  $service_obj->Method(Att1 => { ParameterName => $value, ..., ParameterValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PCS::SlurmCustomSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->ParameterName

=head1 DESCRIPTION

Additional settings that directly map to Slurm settings.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterName => Str

Amazon Web Services PCS supports configuration of the following Slurm
parameters:

=over

=item *

For B<clusters>

=over

=item *

C<Prolog> (https://slurm.schedmd.com/slurm.conf.html#OPT_Prolog_1)

=item *

C<Epilog> (https://slurm.schedmd.com/slurm.conf.html#OPT_Epilog_1)

=item *

C<SelectTypeParameters>
(https://slurm.schedmd.com/slurm.conf.html#OPT_SelectTypeParameters)

=back

=item *

For B<compute node groups>

=over

=item *

C<Weight> (https://slurm.schedmd.com/slurm.conf.html#OPT_Weight)

=item *

C<RealMemory> (https://slurm.schedmd.com/slurm.conf.html#OPT_Weight)

=back

=back



=head2 B<REQUIRED> ParameterValue => Str

The values for the configured Slurm settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

