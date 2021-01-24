*fim.txt*		"f" imitated; not improved

Author  : machakann <mckn@outlook.jp>
License : CC0 1.0 Universal
          <https://creativecommons.org/publicdomain/zero/1.0/legalcode>

==============================================================================
CONTENTS				*fim-contents*

INTRODUCTION		|fim-introduction|
KEYMAPPINGS		|fim-keymappings|
KNOWN ISSUES		|fim-known-issues|

==============================================================================
INTRODUCTION				*fim-introduction*

This is a kind of practice or an example of user-defined motion accepting user
input. It aims at replicating Vim's default |f| command. Currently, this
motion is implemented with the features below.

 - Motion command in normal mode with [count]
 - Motion command in visual mode with [count]
 - Motion command in operator-pending mode with [count]
    * |characterwise| |inclusive|
 - Dot-repeat support |single-repeat|
    * Do not ask for a user input with dot command, just use the last input

==============================================================================
KEYMAPPINGS				*fim-keymappings*

Install the plugin and add the following line in your vimrc.

>
	map <space>f <Plug>(fim)
<

<Plug>(fim){char}			*<Plug>(fim)*
	This key mappings imitates the |f| command. To [count]'th occurrence
	of {char} to the right. The cursor is placed on {char} |inclusive|.


Additionally, several implementations are included.

 - Incomplete key mappings only for operator-pending mode
    * |<Plug>(fim-trial01)|
    * |<Plug>(fim-trial02)|
    * |<Plug>(fim-trial03)|
    * |<Plug>(fim-trial04)|
    * |<Plug>(fim-trial05)|

 - Complete key mappings only for operator-pending mode
    * |<Plug>(fim-trial06)|
    * |<Plug>(fim-trial07)|


<Plug>(fim-trial01){char}		*<Plug>(fim-trial01)*
	This key mappings imitates the |f| command. However, it fails to
	implements |characterwise| |inclusive| motion, behaves like a
	|exclusive| motion. Only for operator-pending mode.

	This key mapping requires {char} again even with |.| command
	repeating.


<Plug>(fim-trial02){char}		*<Plug>(fim-trial02)*
	This key mappings imitates the |f| command. However, it fails to
	cancel motion by |<Esc>| input or an character without occurrence.
	Only for operator-pending mode.

	This key mapping requires {char} again even with |.| command
	repeating.


<Plug>(fim-trial03){char}		*<Plug>(fim-trial03)*
	This key mappings imitates the |f| command. However, it fails to
	cancel motion by a character input without occurrence when |.|
	repeating. Only for operator-pending mode.


<Plug>(fim-trial04){char}		*<Plug>(fim-trial04)*
	This key mappings imitates the |f| command. Only for operator-pending
	mode. Only for operator-pending mode.

	This key mapping requires {char} again even with |.| command
	repeating.


<Plug>(fim-trial05){char}		*<Plug>(fim-trial05)*
	This key mappings imitates the |f| command. Only for operator-pending
	mode. Only for operator-pending mode.

	This key mapping requires {char} again even with |.| command
	repeating.


<Plug>(fim-trial06){char}		*<Plug>(fim-trial06)*
<Plug>(fim-trial07){char}		*<Plug>(fim-trial07)*
	This key mappings imitates the |f| command. Only for operator-pending
	mode.


NOTE: Examples of operator-pending mode keymapping other than |exclusive|

 - |<Plug>(fim-trial01)| is bad since it is definitely |exclusive|.
   With |.| command, it cannot remember the last user input and requires a
   user input again.

 - |<Plug>(fim-trial02)| is bad; it is |inclusive| but it cannot cancel motion
   even with |<Esc>| input or a character input without occurrence.
   It unintentionally deletes a charachter under the cursor anyway.
   With |.| command, it cannot remember the last user input and requires a
   user input again.

 - |<Plug>(fim-trial03)| is bad; it is |inclusive| but also fails to cancel
   motion with |.| command. It unintentionally deletes a charachter under the
   cursor anyway with |.| command.

 - |<Plug>(fim-trial04)| is somehow better; it is |inclusive|. Note that its
   implementation is valid for |inclusive| only. It cannot apply for
   |linewise| or |blockwise| motion.
   With |.| command, it cannot remember the last user input and requires a
   user input again.

 - |<Plug>(fim-trial05)| is somehow better; it is |inclusive|.
   With |.| command, it cannot remember the last user input and requires a
   user input again.

 - |<Plug>(fim-trial06)| is good; it is |inclusive|.
   With |.| command, it remembers the last user input.

 - |<Plug>(fim-trial07)| is also good; it is |inclusive|.
   With |.| command, it remembers the last user input.

==============================================================================
KNOWN ISSUES				*fim-known-issues*

 - Those key mappings do not abort macro execution |complex-repeat|
   even if the motion failed to move the cursor.

 - Those key mappings may not work well with multibyte characters.

==============================================================================
vim:tw=78:ts=8:ft=help:norl:noet:


