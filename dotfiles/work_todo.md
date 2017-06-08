CONTRIBUTOR SIGNUP WITHOUT CONTRIBUTION
=======================================
FE
 - update setting value of submit button on contributionPaymentInfo card from "Make $$$ Contribution" to "Save Contribution Information"
 - clean up partials where context specific definition of data-attrs from voters controller or not

BE
 - create spec on voters/contribution_info controller to test creation (grab params from thorough run)
 - setting business_address on contribution when making it from signed_in_voter (come from voter business address)?
   - either
      - add business_address_id field to voter
      - grab info from stripe and make it
 - codify #update_business_address in contributions_controller with creating business address in contribution_session
 - factor out metadata into service
 - factor out parsing residential vs business address into service? (or only use residential address)
 - remove stale voters/personal_info_ctrl voters/employment_info_ctrl voters/billing_info_ctrl and templates


Further refactor possiblities:
 - remove contribution_session and payment_integration and workflow_controllers
 - delegate a Voter's phone and address into a personal_info object association
 - factor out all "contribution_info" attributes/methods to a model that has associations to Voter and Contribution (which will also hold amount)




Stripe Refactor and Research and new voter contribution workflow
================================================================

#TODOs:
refactor contributions_controller so workflows for shared/new customer are both the same with one piece of branching logic

remove workflow controller/payment_integration/contribution-session - (???)

rename PaymentIntegration?

Fingerprints
 - HkOjm37WFpNFk5hj
 - customer: cus_AcSgFW1QjJGvrS - fp: HkOjm37WFpNFk5hj
 - customer: cus_AcTAlZvFCI0TSW - fp: HkOjm37WFpNFk5hj


#QUESTIONS:

1. with the card_token that comes from the front end, does that tie to a customer account on stripe? (can we retrieve a customer account with a card_token?)




























































#NOT CURRENT

UPDATE EMAIL WHEN ALL CAMPAIGNERS REMOVED FROM CAMPAIGN
=======================================================
determine where campaigners email removed from campaign
see if we can track when last one is removed from campaign association

 - move emailing_uncontributable_campaigns methods out to helper class
 - move individualization of emails to campaign row factory
 - make campaign_rows private
 - make campaigner_email_to_campaign_id hash private


REFACTOR CANDIDATES FROM CAMPAIGNS
=================================

# from campaign model
- candidate_name
- last_name
- candidate_election_id
- pretty_id

# associations
- open_votes_campaign_candidate_images

# areas affected
 - campaign model
 - import campaigns
   ^ campaign_row helper class

# spike steps
 .create canidates table
 .add association to campaigns table
 .create candidate populator: distills candidate info down from all campaigns, creates candidate, and association to campaigns
 .remove candidate_rows from campaigns table
 .create delegate methods on campaign
 .update row_importer to create candidates and associations to campaigns

