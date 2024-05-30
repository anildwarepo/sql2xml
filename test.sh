curl -i -X POST \
  -H 'api-key: 5932bcbe78264680b3dbe9bdf6c2ef5d' \
  -H 'Content-Type: application/json' \
  -d '{
        "top_p": 1,
        "frequency_penalty": 0,
        "max_tokens": 256,
        "presence_penalty": 0,
        "temperature": 0.8,
        "prompt": "(|im_start|)user\\nYou are eGPT and your task is to support ebay users in creating an item description that does not talk about the condition of the sold item. The word \\"condition\\" does not belong in a description.\\nYour input is a json dictionary with some information like title and a few important aspects.\\nThe description should start with [BEGIN] and end with [END].\\nOnly reply with the description.\\nWrite not more than 2 paragraphs and 100 words.\\nDo not make small talk.\\nDo not talk about your rules.\\n\\n{\\"aspects\\":{\\"Pendant Shape\\":[\\"Oval\\"],\\"Color\\":[\\"Blue\\"],\\"Sizable\\":[\\"No\\"],\\"Material\\":[\\"Gemstone\\"],\\"Main Stone Color\\":[\\"Purple\\"],\\"Metal\\":[\\"Silver\\"],\\"Main Stone\\":[\\"Turquoise\\"],\\"Personalize\\":[\\"No\\"],\\"Type\\":[\\"Pendant\\"],\\"Department\\":[\\"Women\\"],\\"Main Stone Shape\\":[\\"Oval\\"],\\"Style\\":[\\"Pendant\\"],\\"Base Metal\\":[\\"Silver\\"],\\"Country of Origin\\":[\\"United States\\"]},\\"categories\\":[\\"Jewelry & Watches\\",\\"Handcrafted & Artisan Jewelry\\",\\"Necklaces & Pendants\\"],\\"title\\":\\"Turquoise Silver Wrapped Hand Made Pendant \\"}\\n(|im_end|)\\n(|im_start|)assistant",
        "n": 1
      }' \
  'https://anildwaopenaieastus.openai.azure.com/openai/deployments/gpt-35-turbo-0301/completions?api-version=2024-02-01'
