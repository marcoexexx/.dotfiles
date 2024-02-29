register /home/marco/.dotfiles/nushell/plugins/nu_plugin_emoji/target/release/nu_plugin_emoji  {
  "sig": {
    "name": "emoji",
    "usage": "Create emojis from text",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [
      {
        "name": "emoji-name",
        "desc": "name of the emoji shorthand with colons before and after e.g. :grinning:",
        "shape": "String",
        "var_id": null,
        "default_value": null
      }
    ],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "list",
        "short": "l",
        "arg": null,
        "required": false,
        "desc": "List stuff",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Experimental"
  },
  "examples": [
    {
      "example": "emoji :smirk:",
      "description": "Show the smirk emoji",
      "result": null
    },
    {
      "example": "emoji --list",
      "description": "List all known emojis",
      "result": null
    }
  ]
}

register /home/marco/.dotfiles/nushell/plugins/nu_plugin_str_similarity/target/release/nu_plugin_str_similarity  {
  "sig": {
    "name": "str similarity",
    "usage": "Compare strings to find similarity by algorithm",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [
      {
        "name": "string",
        "desc": "String to compare with",
        "shape": "String",
        "var_id": null,
        "default_value": null
      }
    ],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "normalize",
        "short": "n",
        "arg": null,
        "required": false,
        "desc": "Normalize the results between 0 and 1",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "list",
        "short": "l",
        "arg": null,
        "required": false,
        "desc": "List all available algorithms",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "algorithm",
        "short": "a",
        "arg": "String",
        "required": false,
        "desc": "Name of the algorithm to compute",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "all",
        "short": "A",
        "arg": null,
        "required": false,
        "desc": "Run all algorithms",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Experimental"
  },
  "examples": [
    {
      "example": "'nutshell' | str similarity 'nushell'",
      "description": "Compare two strings for similarity",
      "result": null
    },
    {
      "example": "'nutshell' | str similarity -n 'nushell'",
      "description": "Compare two strings for similarity and normalize the output value",
      "result": null
    },
    {
      "example": "'nutshell' | str similarity 'nushell' -a levenshtein",
      "description": "Compare two strings for similarity using a specific algorithm",
      "result": null
    },
    {
      "example": "str similarity 'nu' --list",
      "description": "List all the included similarity algorithms",
      "result": null
    },
    {
      "example": "'nutshell' | str similarity 'nushell' -A",
      "description": "Compare two strings for similarity with all algorithms",
      "result": null
    },
    {
      "example": "'nutshell' | str similarity 'nushell' -A -n",
      "description": "Compare two strings for similarity with all algorithms and normalize the output value",
      "result": null
    }
  ]
}

register /home/marco/.dotfiles/nushell/plugins/nu_plugin_qr_maker/target/release/nu_plugin_qr_maker  {
  "sig": {
    "name": "to qr",
    "usage": "create qr code from given text. (to convert records into qr you must use `to json` before using `to qr`)",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [
      [
        "String",
        "String"
      ]
    ],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Conversions"
  },
  "examples": [
    {
      "example": "\"https://google.com\" | to qr",
      "description": "to create qr code just use `to qr`",
      "result": null
    }
  ]
}

