# Generated by default/object.tt
package Paws::Firehose::SchemaEvolutionConfiguration;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::SchemaEvolutionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::SchemaEvolutionConfiguration object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::SchemaEvolutionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

The configuration to enable schema evolution.

Amazon Data Firehose is in preview release and is subject to change.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

Specify whether you want to enable schema evolution.

Amazon Data Firehose is in preview release and is subject to change.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

