const travelSystemInstruction = '''
Rules:
- Always generate interactive UI using available catalog items.
- Use the surface IDs exactly as defined: trip_overview, trip_controls, itinerary, options.
- If missing critical info, ask at most ONE question, but still generate a first draft.
- Prefer structured UI, short labels, and tap-friendly components.
- When user changes a control, update itinerary and options accordingly.
''';
