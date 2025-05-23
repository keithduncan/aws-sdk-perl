# Generated by default/object.tt
package Paws::QConnect::AIAgentSummary;
  use Moose;
  has AiAgentArn => (is => 'ro', isa => 'Str', request_name => 'aiAgentArn', traits => ['NameInRequest'], required => 1);
  has AiAgentId => (is => 'ro', isa => 'Str', request_name => 'aiAgentId', traits => ['NameInRequest'], required => 1);
  has AssistantArn => (is => 'ro', isa => 'Str', request_name => 'assistantArn', traits => ['NameInRequest'], required => 1);
  has AssistantId => (is => 'ro', isa => 'Str', request_name => 'assistantId', traits => ['NameInRequest'], required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::QConnect::AIAgentConfiguration', request_name => 'configuration', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has ModifiedTime => (is => 'ro', isa => 'Str', request_name => 'modifiedTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Origin => (is => 'ro', isa => 'Str', request_name => 'origin', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::QConnect::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
  has VisibilityStatus => (is => 'ro', isa => 'Str', request_name => 'visibilityStatus', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::AIAgentSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QConnect::AIAgentSummary object:

  $service_obj->Method(Att1 => { AiAgentArn => $value, ..., VisibilityStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QConnect::AIAgentSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AiAgentArn

=head1 DESCRIPTION

The summary of the AI Agent.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiAgentArn => Str

The Amazon Resource Name (ARN) of the AI agent.


=head2 B<REQUIRED> AiAgentId => Str

The identifier of the AI Agent.


=head2 B<REQUIRED> AssistantArn => Str

The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.


=head2 Configuration => L<Paws::QConnect::AIAgentConfiguration>

The configuration for the AI Agent.


=head2 Description => Str

The description of the AI Agent.


=head2 ModifiedTime => Str

The time the AI Agent was last modified.


=head2 B<REQUIRED> Name => Str

The name of the AI Agent.


=head2 Origin => Str

The origin of the AI Agent. C<SYSTEM> for a default AI Agent created by
Q in Connect or C<CUSTOMER> for an AI Agent created by calling AI Agent
creation APIs.


=head2 Status => Str

The status of the AI Agent.


=head2 Tags => L<Paws::QConnect::Tags>

The tags used to organize, track, or control access for this resource.


=head2 B<REQUIRED> Type => Str

The type of the AI Agent.


=head2 B<REQUIRED> VisibilityStatus => Str

The visibility status of the AI Agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

