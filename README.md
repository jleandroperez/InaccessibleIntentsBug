# InaccessibleIntentsBug

In this sample app, we're demo'ing a problem in which Intents headers cannot be referenced by the Unit Testing target (and thus, breaking the build).

1. Intents codegen is set to Objective C
2. The Unit Testing target automatically attempts to import the bridging header from the main project
3. The Intents codegen folder cannot be located

## Workaround

I hope the gods can forgive me. But... a workaround for this problem involves adding a User Headers Search Path, and set it as follows:

```
$(DERIVED_SOURCES_DIR)/../../TestSwift.build/DerivedSources/IntentDefinitionGenerated/
```

Make sure to check **Recursive**
