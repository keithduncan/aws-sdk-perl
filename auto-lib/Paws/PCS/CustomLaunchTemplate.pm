# Generated by default/object.tt
package Paws::PCS::CustomLaunchTemplate;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::CustomLaunchTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PCS::CustomLaunchTemplate object:

  $service_obj->Method(Att1 => { Id => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PCS::CustomLaunchTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

An Amazon EC2 launch template Amazon Web Services PCS uses to launch
compute nodes.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the EC2 launch template to use to provision instances.

Example: C<lt-xxxx>


=head2 B<REQUIRED> Version => Str

The version of the EC2 launch template to use to provision instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

