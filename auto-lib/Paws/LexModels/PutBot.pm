
package Paws::LexModels::PutBot;
  use Moose;
  has AbortStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', traits => ['NameInRequest'], request_name => 'abortStatement');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has ChildDirected => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'childDirected', required => 1);
  has ClarificationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt', traits => ['NameInRequest'], request_name => 'clarificationPrompt');
  has CreateVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createVersion');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DetectSentiment => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'detectSentiment');
  has EnableModelImprovements => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableModelImprovements');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds');
  has Intents => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Intent]', traits => ['NameInRequest'], request_name => 'intents');
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has NluIntentConfidenceThreshold => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'nluIntentConfidenceThreshold');
  has ProcessBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'processBehavior');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has VoiceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'voiceId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{name}/versions/$LATEST');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::PutBotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutBot - Arguments for method PutBot on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBot on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method PutBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBot.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
# To create a bot
# This example shows how to create a bot for ordering pizzas.
my $PutBotResponse = $models.lex->PutBot(
'AbortStatement' => 
{
'Messages' => 
[

{
'Content' => 'I don't understand. Can you try again?',
'ContentType' => 'PlainText'
},

{
'Content' => 'I'm sorry, I don't understand.',
'ContentType' => 'PlainText'
}
]
},
'ChildDirected' => 1,
'ClarificationPrompt' => 
{
'MaxAttempts' => 1,
'Messages' => 
[

{
'Content' => 'I'm sorry, I didn't hear that. Can you repeat what you just said?',
'ContentType' => 'PlainText'
},

{
'Content' => 'Can you say that again?',
'ContentType' => 'PlainText'
}
]
},
'Description' => 'Orders a pizza from a local pizzeria.',
'IdleSessionTTLInSeconds' => 300,
'Intents' => 
[

{
'IntentName' => 'DocOrderPizza',
'IntentVersion' => '$LATEST'
}
],
'Locale' => 'en-US',
'Name' => 'DocOrderPizzaBot',
'ProcessBehavior' => 'SAVE'
);

# Results:
my $abortStatement = $PutBotResponse->abortStatement;
my $checksum = $PutBotResponse->checksum;
my $childDirected = $PutBotResponse->childDirected;
my $clarificationPrompt = $PutBotResponse->clarificationPrompt;
my $createdDate = $PutBotResponse->createdDate;
my $description = $PutBotResponse->description;
my $idleSessionTTLInSeconds = $PutBotResponse->idleSessionTTLInSeconds;
my $intents = $PutBotResponse->intents;
my $lastUpdatedDate = $PutBotResponse->lastUpdatedDate;
my $locale = $PutBotResponse->locale;
my $name = $PutBotResponse->name;
my $status = $PutBotResponse->status;
my $version = $PutBotResponse->version;

# Returns a L<Paws::LexModels::PutBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/PutBot>

=head1 ATTRIBUTES


=head2 AbortStatement => L<Paws::LexModels::Statement>

When Amazon Lex can't understand the user's input in context, it tries
to elicit the information a few times. After that, Amazon Lex sends the
message defined in C<abortStatement> to the user, and then cancels the
conversation. To set the number of retries, use the
C<valueElicitationPrompt> field for the slot type.

For example, in a pizza ordering bot, Amazon Lex might ask a user "What
type of crust would you like?" If the user's response is not one of the
expected responses (for example, "thin crust, "deep dish," etc.),
Amazon Lex tries to elicit a correct response a few more times.

For example, in a pizza ordering application, C<OrderPizza> might be
one of the intents. This intent might require the C<CrustType> slot.
You specify the C<valueElicitationPrompt> field when you create the
C<CrustType> slot.

If you have defined a fallback intent the cancel statement will not be
sent to the user, the fallback intent is used instead. For more
information, see AMAZON.FallbackIntent
(https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html).



=head2 Checksum => Str

Identifies a specific revision of the C<$LATEST> version.

When you create a new bot, leave the C<checksum> field blank. If you
specify a checksum you get a C<BadRequestException> exception.

When you want to update a bot, set the C<checksum> field to the
checksum of the most recent revision of the C<$LATEST> version. If you
don't specify the C< checksum> field, or if the checksum does not match
the C<$LATEST> version, you get a C<PreconditionFailedException>
exception.



=head2 B<REQUIRED> ChildDirected => Bool

For each Amazon Lex bot created with the Amazon Lex Model Building
Service, you must specify whether your use of Amazon Lex is related to
a website, program, or other application that is directed or targeted,
in whole or in part, to children under age 13 and subject to the
Children's Online Privacy Protection Act (COPPA) by specifying C<true>
or C<false> in the C<childDirected> field. By specifying C<true> in the
C<childDirected> field, you confirm that your use of Amazon Lex B<is>
related to a website, program, or other application that is directed or
targeted, in whole or in part, to children under age 13 and subject to
COPPA. By specifying C<false> in the C<childDirected> field, you
confirm that your use of Amazon Lex B<is not> related to a website,
program, or other application that is directed or targeted, in whole or
in part, to children under age 13 and subject to COPPA. You may not
specify a default value for the C<childDirected> field that does not
accurately reflect whether your use of Amazon Lex is related to a
website, program, or other application that is directed or targeted, in
whole or in part, to children under age 13 and subject to COPPA.

If your use of Amazon Lex relates to a website, program, or other
application that is directed in whole or in part, to children under age
13, you must obtain any required verifiable parental consent under
COPPA. For information regarding the use of Amazon Lex in connection
with websites, programs, or other applications that are directed or
targeted, in whole or in part, to children under age 13, see the Amazon
Lex FAQ. (https://aws.amazon.com/lex/faqs#data-security)



=head2 ClarificationPrompt => L<Paws::LexModels::Prompt>

When Amazon Lex doesn't understand the user's intent, it uses this
message to get clarification. To specify how many times Amazon Lex
should repeat the clarification prompt, use the C<maxAttempts> field.
If Amazon Lex still doesn't understand, it sends the message in the
C<abortStatement> field.

When you create a clarification prompt, make sure that it suggests the
correct response from the user. for example, for a bot that orders
pizza and drinks, you might create this clarification prompt: "What
would you like to do? You can say 'Order a pizza' or 'Order a drink.'"

If you have defined a fallback intent, it will be invoked if the
clarification prompt is repeated the number of times defined in the
C<maxAttempts> field. For more information, see AMAZON.FallbackIntent
(https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html).

If you don't define a clarification prompt, at runtime Amazon Lex will
return a 400 Bad Request exception in three cases:

=over

=item *

Follow-up prompt - When the user responds to a follow-up prompt but
does not provide an intent. For example, in response to a follow-up
prompt that says "Would you like anything else today?" the user says
"Yes." Amazon Lex will return a 400 Bad Request exception because it
does not have a clarification prompt to send to the user to get an
intent.

=item *

Lambda function - When using a Lambda function, you return an
C<ElicitIntent> dialog type. Since Amazon Lex does not have a
clarification prompt to get an intent from the user, it returns a 400
Bad Request exception.

=item *

PutSession operation - When using the C<PutSession> operation, you send
an C<ElicitIntent> dialog type. Since Amazon Lex does not have a
clarification prompt to get an intent from the user, it returns a 400
Bad Request exception.

=back




=head2 CreateVersion => Bool

When set to C<true> a new numbered version of the bot is created. This
is the same as calling the C<CreateBotVersion> operation. If you don't
specify C<createVersion>, the default is C<false>.



=head2 Description => Str

A description of the bot.



=head2 DetectSentiment => Bool

When set to C<true> user utterances are sent to Amazon Comprehend for
sentiment analysis. If you don't specify C<detectSentiment>, the
default is C<false>.



=head2 EnableModelImprovements => Bool

Set to C<true> to enable access to natural language understanding
improvements.

When you set the C<enableModelImprovements> parameter to C<true> you
can use the C<nluIntentConfidenceThreshold> parameter to configure
confidence scores. For more information, see Confidence Scores
(https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html).

You can only set the C<enableModelImprovements> parameter in certain
Regions. If you set the parameter to C<true>, your bot has access to
accuracy improvements.

The Regions where you can set the C<enableModelImprovements> parameter
to C<true> are:

=over

=item *

US East (N. Virginia) (us-east-1)

=item *

US West (Oregon) (us-west-2)

=item *

Asia Pacific (Sydney) (ap-southeast-2)

=item *

EU (Ireland) (eu-west-1)

=back

In other Regions, the C<enableModelImprovements> parameter is set to
C<true> by default. In these Regions setting the parameter to C<false>
throws a C<ValidationException> exception.



=head2 IdleSessionTTLInSeconds => Int

The maximum time in seconds that Amazon Lex retains the data gathered
in a conversation.

A user interaction session remains active for the amount of time
specified. If no conversation occurs during this time, the session
expires and Amazon Lex deletes any data provided before the timeout.

For example, suppose that a user chooses the OrderPizza intent, but
gets sidetracked halfway through placing an order. If the user doesn't
complete the order within the specified time, Amazon Lex discards the
slot information that it gathered, and the user must start over.

If you don't include the C<idleSessionTTLInSeconds> element in a
C<PutBot> operation request, Amazon Lex uses the default value. This is
also true if the request replaces an existing bot.

The default is 300 seconds (5 minutes).



=head2 Intents => ArrayRef[L<Paws::LexModels::Intent>]

An array of C<Intent> objects. Each intent represents a command that a
user can express. For example, a pizza ordering bot might support an
OrderPizza intent. For more information, see how-it-works.



=head2 B<REQUIRED> Locale => Str

Specifies the target locale for the bot. Any intent used in the bot
must be compatible with the locale of the bot.

The default is C<en-US>.

Valid values are: C<"de-DE">, C<"en-AU">, C<"en-GB">, C<"en-IN">, C<"en-US">, C<"es-419">, C<"es-ES">, C<"es-US">, C<"fr-FR">, C<"fr-CA">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">

=head2 B<REQUIRED> Name => Str

The name of the bot. The name is I<not> case sensitive.



=head2 NluIntentConfidenceThreshold => Num

Determines the threshold where Amazon Lex will insert the
C<AMAZON.FallbackIntent>, C<AMAZON.KendraSearchIntent>, or both when
returning alternative intents in a PostContent
(https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html)
or PostText
(https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html)
response. C<AMAZON.FallbackIntent> and C<AMAZON.KendraSearchIntent> are
only inserted if they are configured for the bot.

You must set the C<enableModelImprovements> parameter to C<true> to use
confidence scores in the following regions.

=over

=item *

US East (N. Virginia) (us-east-1)

=item *

US West (Oregon) (us-west-2)

=item *

Asia Pacific (Sydney) (ap-southeast-2)

=item *

EU (Ireland) (eu-west-1)

=back

In other Regions, the C<enableModelImprovements> parameter is set to
C<true> by default.

For example, suppose a bot is configured with the confidence threshold
of 0.80 and the C<AMAZON.FallbackIntent>. Amazon Lex returns three
alternative intents with the following confidence scores: IntentA
(0.70), IntentB (0.60), IntentC (0.50). The response from the
C<PostText> operation would be:

=over

=item *

AMAZON.FallbackIntent

=item *

IntentA

=item *

IntentB

=item *

IntentC

=back




=head2 ProcessBehavior => Str

If you set the C<processBehavior> element to C<BUILD>, Amazon Lex
builds the bot so that it can be run. If you set the element to C<SAVE>
Amazon Lex saves the bot, but doesn't build it.

If you don't specify this value, the default value is C<BUILD>.

Valid values are: C<"SAVE">, C<"BUILD">

=head2 Tags => ArrayRef[L<Paws::LexModels::Tag>]

A list of tags to add to the bot. You can only add tags when you create
a bot, you can't use the C<PutBot> operation to update the tags on a
bot. To update tags, use the C<TagResource> operation.



=head2 VoiceId => Str

The Amazon Polly voice ID that you want Amazon Lex to use for voice
interactions with the user. The locale configured for the voice must
match the locale of the bot. For more information, see Voices in Amazon
Polly (https://docs.aws.amazon.com/polly/latest/dg/voicelist.html) in
the I<Amazon Polly Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBot in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

