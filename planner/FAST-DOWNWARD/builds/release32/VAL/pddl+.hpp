/* A Bison parser, made by GNU Bison 3.0.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_HOME_YOCHAN_DESKTOP_FAST_DOWNWARD_BUILDS_RELEASE32_VAL_PDDL_HPP_INCLUDED
# define YY_YY_HOME_YOCHAN_DESKTOP_FAST_DOWNWARD_BUILDS_RELEASE32_VAL_PDDL_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    OPEN_BRAC = 258,
    CLOSE_BRAC = 259,
    OPEN_SQ = 260,
    CLOSE_SQ = 261,
    DEFINE = 262,
    PDDLDOMAIN = 263,
    REQS = 264,
    EQUALITY = 265,
    STRIPS = 266,
    ADL = 267,
    NEGATIVE_PRECONDITIONS = 268,
    TYPING = 269,
    DISJUNCTIVE_PRECONDS = 270,
    EXT_PRECS = 271,
    UNIV_PRECS = 272,
    QUANT_PRECS = 273,
    COND_EFFS = 274,
    FLUENTS = 275,
    OBJECTFLUENTS = 276,
    NUMERICFLUENTS = 277,
    ACTIONCOSTS = 278,
    TIME = 279,
    DURATIVE_ACTIONS = 280,
    DURATION_INEQUALITIES = 281,
    CONTINUOUS_EFFECTS = 282,
    DERIVED_PREDICATES = 283,
    TIMED_INITIAL_LITERALS = 284,
    PREFERENCES = 285,
    CONSTRAINTS = 286,
    ACTION = 287,
    PROCESS = 288,
    EVENT = 289,
    DURATIVE_ACTION = 290,
    DERIVED = 291,
    CONSTANTS = 292,
    PREDS = 293,
    FUNCTIONS = 294,
    TYPES = 295,
    ARGS = 296,
    PRE = 297,
    CONDITION = 298,
    PREFERENCE = 299,
    START_PRE = 300,
    END_PRE = 301,
    EFFECTS = 302,
    INITIAL_EFFECT = 303,
    FINAL_EFFECT = 304,
    INVARIANT = 305,
    DURATION = 306,
    AT_START = 307,
    AT_END = 308,
    OVER_ALL = 309,
    AND = 310,
    OR = 311,
    EXISTS = 312,
    FORALL = 313,
    IMPLY = 314,
    NOT = 315,
    WHEN = 316,
    WHENEVER = 317,
    EITHER = 318,
    PROBLEM = 319,
    FORDOMAIN = 320,
    INITIALLY = 321,
    OBJECTS = 322,
    GOALS = 323,
    EQ = 324,
    LENGTH = 325,
    SERIAL = 326,
    PARALLEL = 327,
    METRIC = 328,
    MINIMIZE = 329,
    MAXIMIZE = 330,
    HASHT = 331,
    DURATION_VAR = 332,
    TOTAL_TIME = 333,
    INCREASE = 334,
    DECREASE = 335,
    SCALE_UP = 336,
    SCALE_DOWN = 337,
    ASSIGN = 338,
    GREATER = 339,
    GREATEQ = 340,
    LESS = 341,
    LESSEQ = 342,
    Q = 343,
    COLON = 344,
    NUMBER = 345,
    ALWAYS = 346,
    SOMETIME = 347,
    WITHIN = 348,
    ATMOSTONCE = 349,
    SOMETIMEAFTER = 350,
    SOMETIMEBEFORE = 351,
    ALWAYSWITHIN = 352,
    HOLDDURING = 353,
    HOLDAFTER = 354,
    ISVIOLATED = 355,
    BOGUS = 356,
    NAME = 357,
    FUNCTION_SYMBOL = 358,
    INTVAL = 359,
    FLOATVAL = 360,
    AT_TIME = 361,
    HYPHEN = 362,
    PLUS = 363,
    MUL = 364,
    DIV = 365,
    UMINUS = 366
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE YYSTYPE;
union YYSTYPE
{
#line 79 "pddl+.yacc" /* yacc.c:1909  */

    parse_category* t_parse_category;

    effect_lists* t_effect_lists;
    effect* t_effect;
    simple_effect* t_simple_effect;
    cond_effect*   t_cond_effect;
    forall_effect* t_forall_effect;
    timed_effect* t_timed_effect;

    quantifier t_quantifier;
    metric_spec*  t_metric;
    optimization t_optimization;

    symbol* t_symbol;
    var_symbol*   t_var_symbol;
    pddl_type*    t_type;
    pred_symbol*  t_pred_symbol;
    func_symbol*  t_func_symbol;
    const_symbol* t_const_symbol;

    parameter_symbol_list* t_parameter_symbol_list;
    var_symbol_list* t_var_symbol_list;
    const_symbol_list* t_const_symbol_list;
    pddl_type_list* t_type_list;

    proposition* t_proposition;
    pred_decl* t_pred_decl;
    pred_decl_list* t_pred_decl_list;
    func_decl* t_func_decl;
    func_decl_list* t_func_decl_list;

    goal* t_goal;
    con_goal * t_con_goal;
    goal_list* t_goal_list;

    func_term* t_func_term;
    assignment* t_assignment;
    expression* t_expression;
    num_expression* t_num_expression;
    assign_op t_assign_op;
    comparison_op t_comparison_op;

    structure_def* t_structure_def;
    structure_store* t_structure_store;

    action* t_action_def;
    event* t_event_def;
    process* t_process_def;
    durative_action* t_durative_action_def;
    derivation_rule* t_derivation_rule;

    problem* t_problem;
    length_spec* t_length_spec;

    domain* t_domain;    

    pddl_req_flag t_pddl_req_flag;

    plan* t_plan;
    plan_step* t_step;

    int ival;
    double fval;

    char* cp;
    int t_dummy;

    var_symbol_table * vtab;

#line 237 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.hpp" /* yacc.c:1909  */
};
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_HOME_YOCHAN_DESKTOP_FAST_DOWNWARD_BUILDS_RELEASE32_VAL_PDDL_HPP_INCLUDED  */
