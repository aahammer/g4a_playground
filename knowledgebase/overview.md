# Google Analytics

Anlaytics Backend to analyze tracking data

Collects only a small amount of default events
[GA4 Automatically collected events](
https://support.google.com/analytics/answer/9234069?hl=en)

Account -> Property -> Datastream

# Goolge Tag Manager

Replaces the Analytics Installation Snippet

Allows tagging of events via UI, that get forwarded to Google Analytics

## Installation

1. Create Analytics Account
2. Create a Data Stream and Use the ID in the Tag Manager

1. Create Google Tag Manager Account
   Add Variable to GTM with the measurement id
2. Add Google Tag with TagID = variable from above and trigger rule Initilaliztion - All Pages
3. Add Google Tag Manger Snippet to your Code

<head>
    <!-- Google Tag Manager -->
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-144Z8RLZPV&amp;cx=c&amp;gtm=4e58p1"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-5F42KL89"></script><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-5F42KL89');</script>
    <!-- End Google Tag Manager -->
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World - G4A Playground</title>
</head>

GTM-5F42KL89 should be the Google Tag Manager Container ID

Supports same deafult events as G4A


Key events -> old conversion events
Triggers -> old Rules


## Create evebt

1. create trigger e..g  
2. create new tag google anlaytics with

Add variables for clicks (all click variable)

use the variables to e.g. narrow down the trigger 
and to pass paramsters to google anlaytics

google analyics has names you should use for cetain event parameters:
e.g. 

element_id → recommended parameter for click events.
element_text → the text of the button/link.
element_url → if it’s a link.
element_classes → CSS classes.


# GTM Promotion

- Create **environments** (Dev → Staging → Prod).  
- Always **create a version** and **publish first to Dev**.  
- Once validated, **test and publish to Prod**.  

## Workspaces
- Use **per-feature workspaces** (short-lived, focused).  
- Optionally keep **one generic tracking workspace** for global changes.  

## GA4 Measurement ID Switching
- **Use a GTM Lookup Table variable** (not custom JS).  
- Configure a Lookup Table on `{{Page Hostname}}` → GA4 Measurement ID, e.g.:

| Input (Hostname)     | Output (GA4 ID) |
|-----------------------|-----------------|
| `dev.example.com`     | `G-DEV123`      |
| `staging.example.com` | `G-STG456`      |
| `example.com`         | `G-PROD789`     |

- Reference this variable in your GA4 tag’s **Measurement ID** field.  

> ✅ This achieves the same as the code snippet but is **simpler, faster, and fully managed inside GTM**.


# GTM Workspace External Git 

GTM Workspaces can be acceses as pure code configs
That allows for integration into CD/CI pipeliens and code review collabs beyond the gtm native versioning by  business / single users