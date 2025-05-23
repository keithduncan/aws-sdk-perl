# Generated by default/object.tt
package Paws::Drs::Job;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreationDateTime => (is => 'ro', isa => 'Str', request_name => 'creationDateTime', traits => ['NameInRequest']);
  has EndDateTime => (is => 'ro', isa => 'Str', request_name => 'endDateTime', traits => ['NameInRequest']);
  has InitiatedBy => (is => 'ro', isa => 'Str', request_name => 'initiatedBy', traits => ['NameInRequest']);
  has JobID => (is => 'ro', isa => 'Str', request_name => 'jobID', traits => ['NameInRequest'], required => 1);
  has ParticipatingResources => (is => 'ro', isa => 'ArrayRef[Paws::Drs::ParticipatingResource]', request_name => 'participatingResources', traits => ['NameInRequest']);
  has ParticipatingServers => (is => 'ro', isa => 'ArrayRef[Paws::Drs::ParticipatingServer]', request_name => 'participatingServers', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Drs::Job object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Drs::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A job is an asynchronous workflow.

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of a Job.


=head2 CreationDateTime => Str

The date and time of when the Job was created.


=head2 EndDateTime => Str

The date and time of when the Job ended.


=head2 InitiatedBy => Str

A string representing who initiated the Job.


=head2 B<REQUIRED> JobID => Str

The ID of the Job.


=head2 ParticipatingResources => ArrayRef[L<Paws::Drs::ParticipatingResource>]

A list of resources that the Job is acting upon.


=head2 ParticipatingServers => ArrayRef[L<Paws::Drs::ParticipatingServer>]

A list of servers that the Job is acting upon.


=head2 Status => Str

The status of the Job.


=head2 Tags => L<Paws::Drs::TagsMap>

A list of tags associated with the Job.


=head2 Type => Str

The type of the Job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

