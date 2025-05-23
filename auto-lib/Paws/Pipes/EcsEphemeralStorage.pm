# Generated by default/object.tt
package Paws::Pipes::EcsEphemeralStorage;
  use Moose;
  has SizeInGiB => (is => 'ro', isa => 'Int', request_name => 'sizeInGiB', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::EcsEphemeralStorage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pipes::EcsEphemeralStorage object:

  $service_obj->Method(Att1 => { SizeInGiB => $value, ..., SizeInGiB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pipes::EcsEphemeralStorage object:

  $result = $service_obj->Method(...);
  $result->Att1->SizeInGiB

=head1 DESCRIPTION

The amount of ephemeral storage to allocate for the task. This
parameter is used to expand the total amount of ephemeral storage
available, beyond the default amount, for tasks hosted on Fargate. For
more information, see Fargate task storage
(https://docs.aws.amazon.com/AmazonECS/latest/userguide/using_data_volumes.html)
in the I<Amazon ECS User Guide for Fargate>.

This parameter is only supported for tasks hosted on Fargate using
Linux platform version C<1.4.0> or later. This parameter is not
supported for Windows containers on Fargate.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SizeInGiB => Int

The total amount, in GiB, of ephemeral storage to set for the task. The
minimum supported value is C<21> GiB and the maximum supported value is
C<200> GiB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

