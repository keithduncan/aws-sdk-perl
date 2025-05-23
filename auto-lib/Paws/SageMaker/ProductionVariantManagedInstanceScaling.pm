# Generated by default/object.tt
package Paws::SageMaker::ProductionVariantManagedInstanceScaling;
  use Moose;
  has MaxInstanceCount => (is => 'ro', isa => 'Int');
  has MinInstanceCount => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ProductionVariantManagedInstanceScaling

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ProductionVariantManagedInstanceScaling object:

  $service_obj->Method(Att1 => { MaxInstanceCount => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ProductionVariantManagedInstanceScaling object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxInstanceCount

=head1 DESCRIPTION

Settings that control the range in the number of instances that the
endpoint provisions as it scales up or down to accommodate traffic.

=head1 ATTRIBUTES


=head2 MaxInstanceCount => Int

The maximum number of instances that the endpoint can provision when it
scales up to accommodate an increase in traffic.


=head2 MinInstanceCount => Int

The minimum number of instances that the endpoint must retain when it
scales down to accommodate a decrease in traffic.


=head2 Status => Str

Indicates whether managed instance scaling is enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

