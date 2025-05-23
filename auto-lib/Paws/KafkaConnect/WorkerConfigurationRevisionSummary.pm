# Generated by default/object.tt
package Paws::KafkaConnect::WorkerConfigurationRevisionSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Revision => (is => 'ro', isa => 'Int', request_name => 'revision', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::WorkerConfigurationRevisionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KafkaConnect::WorkerConfigurationRevisionSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Revision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KafkaConnect::WorkerConfigurationRevisionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

The summary of a worker configuration revision.

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that a worker configuration revision was created.


=head2 Description => Str

The description of a worker configuration revision.


=head2 Revision => Int

The revision of a worker configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

