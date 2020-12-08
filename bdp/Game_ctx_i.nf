Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Game_ctx_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Game_ctx_i))==(Machine(Game_ctx));
  Level(Implementation(Game_ctx_i))==(1);
  Upper_Level(Implementation(Game_ctx_i))==(Machine(Game_ctx))
END
&
THEORY LoadedStructureX IS
  Implementation(Game_ctx_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Game_ctx_i))==(?);
  Inherited_List_Includes(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Game_ctx_i))==(?);
  Context_List_Variables(Implementation(Game_ctx_i))==(?);
  Abstract_List_Variables(Implementation(Game_ctx_i))==(?);
  Local_List_Variables(Implementation(Game_ctx_i))==(?);
  List_Variables(Implementation(Game_ctx_i))==(?);
  External_List_Variables(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Game_ctx_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Game_ctx_i))==(?);
  External_List_VisibleVariables(Implementation(Game_ctx_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Game_ctx_i))==(?);
  List_VisibleVariables(Implementation(Game_ctx_i))==(?);
  Internal_List_VisibleVariables(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Game_ctx_i))==(btrue);
  Expanded_List_Invariant(Implementation(Game_ctx_i))==(btrue);
  Abstract_List_Invariant(Implementation(Game_ctx_i))==(btrue);
  Context_List_Invariant(Implementation(Game_ctx_i))==(btrue);
  List_Invariant(Implementation(Game_ctx_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Game_ctx_i))==(btrue);
  Abstract_List_Assertions(Implementation(Game_ctx_i))==(btrue);
  Context_List_Assertions(Implementation(Game_ctx_i))==(btrue);
  List_Assertions(Implementation(Game_ctx_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Game_ctx_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Game_ctx_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Game_ctx_i))==(skip);
  Context_List_Initialisation(Implementation(Game_ctx_i))==(skip);
  List_Initialisation(Implementation(Game_ctx_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Game_ctx_i))==(btrue);
  List_Context_Constraints(Implementation(Game_ctx_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Game_ctx_i))==(?);
  List_Operations(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Game_ctx_i))==(?);
  Inherited_List_Constants(Implementation(Game_ctx_i))==(?);
  List_Constants(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Game_ctx_i))==(?);
  Context_List_Defered(Implementation(Game_ctx_i))==(?);
  Context_List_Sets(Implementation(Game_ctx_i))==(?);
  List_Own_Enumerated(Implementation(Game_ctx_i))==(?);
  List_Valuable_Sets(Implementation(Game_ctx_i))==(?);
  Inherited_List_Enumerated(Implementation(Game_ctx_i))==(?);
  Inherited_List_Defered(Implementation(Game_ctx_i))==(?);
  Inherited_List_Sets(Implementation(Game_ctx_i))==(?);
  List_Enumerated(Implementation(Game_ctx_i))==(?);
  List_Defered(Implementation(Game_ctx_i))==(?);
  List_Sets(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Game_ctx_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Game_ctx_i))==(?);
  List_HiddenConstants(Implementation(Game_ctx_i))==(?);
  External_List_HiddenConstants(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Game_ctx_i))==(btrue);
  Context_List_Properties(Implementation(Game_ctx_i))==(btrue);
  Inherited_List_Properties(Implementation(Game_ctx_i))==(btrue);
  List_Properties(Implementation(Game_ctx_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Game_ctx_i))==(aa: aa);
  List_Values(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Game_ctx_i)) == (? | ? | ? | ? | ? | ? | ? | ? | Game_ctx_i);
  List_Of_HiddenCst_Ids(Implementation(Game_ctx_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Game_ctx_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Game_ctx_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Game_ctx_i)) == (?: ?)
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Game_ctx_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Game_ctx_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
