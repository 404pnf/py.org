# Drupal Adding a footer to all of your system e-mail

Drupal: Adding a footer to all of your system e-mail

> Chris Charabaruk Subscribed to comments via email
> Jul 24, 2008 at 6:35 am
> 
> hook_mail_alter has existed since Drupal 5, but has different arguments in Drupal 6 and later. The example that Sacha posted is for Drupal 5.
> 
> With Drupal 6, rather than passing in a bunch of parameters, a single structured array is passed in. Here’s the example from above, modified for Drupal 6:
> 
> 
> function mymodule_mail_alter(&$message) {
> $message['body'] .= “\n\n” . t(’This is a system-generated email, please do not reply to this message’);
> }

2008-08-07