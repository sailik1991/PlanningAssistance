/* A Bison parser, made by GNU Bison 3.0.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 17 "pddl+.yacc" /* yacc.c:339  */

/*
Error reporting:
Intention is to provide error token on most bracket expressions,
so synchronisation can occur on next CLOSE_BRAC.
Hence error should be generated for innermost expression containing error.
Expressions which cause errors return a NULL values, and parser
always attempts to carry on.
This won't behave so well if CLOSE_BRAC is missing.

Naming conventions:
Generally, the names should be similar to the PDDL2.1 spec.
During development, they have also been based on older PDDL specs,
older PDDL+ and TIM parsers, and this shows in places.

All the names of fields in the semantic value type begin with t_
Corresponding categories in the grammar begin with c_
Corresponding classes have no prefix.

PDDL grammar       yacc grammar      type of corresponding semantic val.  

thing+             c_things          thing_list
(thing+)           c_thing_list      thing_list

*/

#include <cstdlib>
#include <cstdio>
#include <fstream>
#include <ctype.h>

// This is now copied locally to avoid relying on installation 
// of flex++.

//#include "FlexLexer.h"
//#include <FlexLexer.h>

#include "ptree.h"
#include "parse_error.h"

#define YYDEBUG 1 

int yyerror(char *);

#ifndef YY_
# if YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", ((char *)msgid))
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) ((char *) msgid)
# endif
#endif

extern int yylex();

using namespace VAL;


#line 128 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "pddl+.hpp".  */
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
#line 79 "pddl+.yacc" /* yacc.c:355  */

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

#line 351 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:355  */
};
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_HOME_YOCHAN_DESKTOP_FAST_DOWNWARD_BUILDS_RELEASE32_VAL_PDDL_HPP_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 366 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  17
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   928

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  112
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  124
/* YYNRULES -- Number of rules.  */
#define YYNRULES  340
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  789

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   366

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,    96,    97,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   252,   252,   253,   254,   258,   264,   271,   272,   273,
     274,   276,   278,   280,   283,   288,   295,   302,   303,   308,
     310,   315,   317,   325,   333,   335,   343,   348,   350,   354,
     356,   363,   363,   366,   379,   388,   397,   409,   411,   417,
     426,   436,   441,   442,   446,   447,   455,   462,   471,   477,
     479,   481,   488,   494,   498,   502,   506,   511,   518,   523,
     525,   529,   531,   535,   548,   550,   552,   555,   559,   565,
     566,   568,   570,   579,   580,   581,   582,   583,   587,   588,
     592,   594,   596,   603,   604,   605,   607,   611,   613,   621,
     623,   631,   636,   641,   644,   651,   652,   656,   658,   660,
     664,   668,   674,   678,   682,   688,   690,   698,   703,   709,
     710,   714,   715,   719,   721,   723,   730,   731,   732,   734,
     739,   741,   743,   745,   747,   752,   758,   764,   769,   770,
     774,   775,   777,   778,   782,   784,   786,   788,   793,   795,
     798,   801,   807,   808,   809,   817,   821,   824,   828,   833,
     840,   845,   850,   855,   860,   862,   864,   866,   868,   873,
     875,   877,   879,   881,   883,   884,   888,   890,   892,   898,
     899,   902,   905,   907,   925,   927,   929,   935,   936,   937,
     938,   939,   951,   958,   960,   964,   965,   969,   971,   973,
     975,   979,   984,   986,   988,   990,   997,   999,  1004,  1006,
    1010,  1015,  1017,  1022,  1024,  1027,  1029,  1031,  1033,  1035,
    1037,  1039,  1041,  1043,  1045,  1050,  1052,  1056,  1058,  1061,
    1064,  1067,  1070,  1076,  1078,  1083,  1085,  1095,  1102,  1109,
    1114,  1119,  1124,  1126,  1133,  1135,  1142,  1144,  1151,  1153,
    1160,  1161,  1165,  1166,  1167,  1168,  1169,  1173,  1179,  1188,
    1199,  1206,  1217,  1223,  1233,  1239,  1254,  1261,  1263,  1265,
    1269,  1271,  1276,  1279,  1283,  1285,  1287,  1289,  1294,  1299,
    1304,  1305,  1307,  1308,  1310,  1312,  1313,  1314,  1315,  1316,
    1318,  1321,  1324,  1325,  1327,  1336,  1339,  1342,  1344,  1346,
    1348,  1350,  1352,  1358,  1362,  1367,  1379,  1386,  1387,  1388,
    1389,  1390,  1392,  1394,  1395,  1398,  1401,  1404,  1407,  1411,
    1413,  1420,  1423,  1427,  1434,  1435,  1440,  1441,  1442,  1443,
    1444,  1446,  1450,  1451,  1452,  1453,  1457,  1458,  1463,  1464,
    1470,  1473,  1475,  1478,  1482,  1486,  1492,  1496,  1502,  1510,
    1511
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "OPEN_BRAC", "CLOSE_BRAC", "OPEN_SQ",
  "CLOSE_SQ", "DEFINE", "PDDLDOMAIN", "REQS", "EQUALITY", "STRIPS", "ADL",
  "NEGATIVE_PRECONDITIONS", "TYPING", "DISJUNCTIVE_PRECONDS", "EXT_PRECS",
  "UNIV_PRECS", "QUANT_PRECS", "COND_EFFS", "FLUENTS", "OBJECTFLUENTS",
  "NUMERICFLUENTS", "ACTIONCOSTS", "TIME", "DURATIVE_ACTIONS",
  "DURATION_INEQUALITIES", "CONTINUOUS_EFFECTS", "DERIVED_PREDICATES",
  "TIMED_INITIAL_LITERALS", "PREFERENCES", "CONSTRAINTS", "ACTION",
  "PROCESS", "EVENT", "DURATIVE_ACTION", "DERIVED", "CONSTANTS", "PREDS",
  "FUNCTIONS", "TYPES", "ARGS", "PRE", "CONDITION", "PREFERENCE",
  "START_PRE", "END_PRE", "EFFECTS", "INITIAL_EFFECT", "FINAL_EFFECT",
  "INVARIANT", "DURATION", "AT_START", "AT_END", "OVER_ALL", "AND", "OR",
  "EXISTS", "FORALL", "IMPLY", "NOT", "WHEN", "WHENEVER", "EITHER",
  "PROBLEM", "FORDOMAIN", "INITIALLY", "OBJECTS", "GOALS", "EQ", "LENGTH",
  "SERIAL", "PARALLEL", "METRIC", "MINIMIZE", "MAXIMIZE", "HASHT",
  "DURATION_VAR", "TOTAL_TIME", "INCREASE", "DECREASE", "SCALE_UP",
  "SCALE_DOWN", "ASSIGN", "GREATER", "GREATEQ", "LESS", "LESSEQ", "Q",
  "COLON", "NUMBER", "ALWAYS", "SOMETIME", "WITHIN", "ATMOSTONCE",
  "SOMETIMEAFTER", "SOMETIMEBEFORE", "ALWAYSWITHIN", "HOLDDURING",
  "HOLDAFTER", "ISVIOLATED", "BOGUS", "NAME", "FUNCTION_SYMBOL", "INTVAL",
  "FLOATVAL", "AT_TIME", "HYPHEN", "PLUS", "MUL", "DIV", "UMINUS",
  "$accept", "mystartsymbol", "c_domain", "c_preamble", "c_domain_name",
  "c_domain_require_def", "c_reqs", "c_pred_decls", "c_pred_decl",
  "c_new_pred_symbol", "c_pred_symbol", "c_init_pred_symbol",
  "c_func_decls", "c_func_decl", "c_ntype", "c_new_func_symbol",
  "c_typed_var_list", "c_var_symbol_list", "c_typed_consts",
  "c_const_symbols", "c_new_const_symbols", "c_typed_types",
  "c_parameter_symbols", "c_declaration_var_symbol", "c_var_symbol",
  "c_const_symbol", "c_new_const_symbol", "c_either_type",
  "c_new_primitive_type", "c_primitive_type", "c_new_primitive_types",
  "c_primitive_types", "c_init_els", "c_timed_initial_literal",
  "c_effects", "c_effect", "c_a_effect", "c_p_effect", "c_p_effects",
  "c_conj_effect", "c_da_effect", "c_da_effects", "c_timed_effect",
  "c_cts_only_timed_effect", "c_da_cts_only_effect",
  "c_da_cts_only_effects", "c_a_effect_da", "c_p_effect_da",
  "c_p_effects_da", "c_f_assign_da", "c_proc_effect", "c_proc_effects",
  "c_f_exp_da", "c_binary_expr_da", "c_duration_constraint", "c_d_op",
  "c_d_value", "c_duration_constraints", "c_neg_simple_effect",
  "c_pos_simple_effect", "c_init_neg_simple_effect",
  "c_init_pos_simple_effect", "c_forall_effect", "c_cond_effect",
  "c_assignment", "c_f_exp", "c_f_exp_t", "c_number", "c_f_head",
  "c_ground_f_head", "c_comparison_op", "c_pre_goal_descriptor",
  "c_pref_con_goal", "c_pref_goal", "c_pref_con_goal_list",
  "c_pref_goal_descriptor", "c_constraint_goal_list", "c_constraint_goal",
  "c_goal_descriptor", "c_pre_goal_descriptor_list", "c_goal_list",
  "c_forall", "c_exists", "c_proposition", "c_derived_proposition",
  "c_init_proposition", "c_predicates", "c_functions_def",
  "c_constraints_def", "c_constraints_probdef", "c_structure_defs",
  "c_structure_def", "c_rule_head", "c_derivation_rule", "c_action_def",
  "c_event_def", "c_process_def", "c_durative_action_def", "c_da_def_body",
  "c_da_gd", "c_da_gds", "c_timed_gd", "c_args_head", "c_require_key",
  "c_domain_constants", "c_type_names", "c_problem", "c_problem_body",
  "c_objects", "c_initial_state", "c_goals", "c_goal_spec",
  "c_metric_spec", "c_length_spec", "c_optimization", "c_ground_f_exp",
  "c_binary_ground_f_exp", "c_binary_ground_f_pexps",
  "c_binary_ground_f_mexps", "c_plan", "c_step_t_d", "c_step_d", "c_step",
  "c_float", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,   330,   331,   332,   333,   334,
     335,   336,   337,   338,   339,   340,   341,   342,   343,   344,
     345,   346,   347,   348,   349,   350,   351,   352,   353,   354,
     355,   356,   357,   358,   359,   360,   361,   362,   363,   364,
     365,   366
};
# endif

#define YYPACT_NINF -531

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-531)))

#define YYTABLE_NINF -73

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      30,   100,    39,  -531,  -531,    32,  -531,  -531,  -531,    48,
    -531,    53,   -15,    79,   -16,    48,    48,  -531,     2,  -531,
     204,    96,   154,    63,  -531,   217,   -16,  -531,  -531,   223,
    -531,   144,    52,  -531,   741,   261,   265,   265,   265,   265,
     275,  -531,  -531,  -531,  -531,  -531,  -531,   265,   265,  -531,
    -531,  -531,   280,  -531,   291,   488,   248,    64,    66,    69,
      70,  -531,   179,   338,   288,  -531,   318,  -531,  -531,  -531,
    -531,  -531,   411,  -531,  -531,  -531,  -531,   337,   347,   649,
     355,   648,   373,   377,   259,   391,   259,   393,   259,   396,
     259,  -531,   402,   317,   179,   424,    83,   437,   450,   473,
     255,   475,   -34,   -33,   527,   470,  -531,  -531,  -531,  -531,
    -531,  -531,  -531,  -531,  -531,  -531,  -531,  -531,  -531,  -531,
    -531,  -531,  -531,  -531,  -531,  -531,  -531,  -531,  -531,  -531,
    -531,  -531,  -531,   527,   540,  -531,   527,   527,   211,   527,
     527,   527,   211,   211,   211,   557,  -531,  -531,  -531,   561,
    -531,   573,  -531,   574,  -531,   575,  -531,    54,  -531,  -531,
     576,  -531,   491,  -531,  -531,  -531,    95,  -531,  -531,  -531,
    -531,    54,  -531,  -531,  -531,   491,   626,   578,  -531,   483,
     591,   321,  -531,   593,   618,  -531,  -531,   527,   619,   527,
     527,   527,   211,   527,   491,   491,   491,   491,   491,   566,
    -531,   179,   179,  -531,   522,   632,   523,   633,  -531,   491,
    -531,  -531,   634,   527,   527,  -531,   527,   527,   151,  -531,
    -531,  -531,  -531,  -531,   105,   637,   640,  -531,   641,  -531,
    -531,  -531,  -531,  -531,   646,  -531,   647,   650,   527,   527,
     651,   653,   683,   684,   685,   686,  -531,  -531,  -531,  -531,
     491,  -531,    54,  -531,   689,  -531,  -531,  -531,  -531,   330,
     346,   527,   694,   191,   484,  -531,   105,  -531,  -531,   491,
     491,   696,  -531,  -531,  -531,   698,   700,  -531,   540,   602,
     610,   658,   656,    97,  -531,   491,   491,   585,  -531,  -531,
    -531,   704,  -531,  -531,   620,  -531,  -531,  -531,   105,   105,
     105,   105,   716,   717,   722,   231,   696,   696,   723,   696,
     696,   696,   696,   696,  -531,  -531,   745,   749,   527,   527,
     750,  -531,  -531,  -531,  -531,   664,  -531,  -531,  -531,  -531,
     200,   229,    46,   105,   105,   105,  -531,   527,   527,   343,
    -531,   179,  -531,   296,   189,   749,  -531,  -531,  -531,  -531,
    -531,  -531,  -531,  -531,  -531,   352,   708,  -531,  -531,   713,
     719,   496,  -531,  -531,  -531,  -531,  -531,   779,   780,   781,
     782,   783,   784,   785,   476,   787,  -531,   371,   788,   690,
     695,   789,  -531,  -531,    60,   796,  -531,    59,   390,   798,
     799,   800,   799,   801,   802,  -531,  -531,  -531,  -531,   720,
      36,  -531,  -531,  -531,  -531,  -531,  -531,  -531,   103,   806,
     807,  -531,   297,  -531,  -531,  -531,  -531,  -531,  -531,    25,
     808,  -531,   539,  -531,  -531,  -531,  -531,   809,  -531,   527,
     810,  -531,  -531,  -531,   448,   491,   300,   811,  -531,  -531,
    -531,  -531,  -531,  -531,    -3,   812,   813,   218,   218,   456,
     734,  -531,   815,   816,   540,   817,  -531,   459,  -531,   491,
     819,    44,  -531,  -531,  -531,  -531,   721,  -531,   820,   718,
    -531,  -531,    60,    60,    60,    60,   822,  -531,   823,  -531,
    -531,  -531,   824,   431,   826,   527,   827,  -531,  -531,    44,
      44,  -531,  -531,   735,   743,  -531,  -531,   105,   310,  -531,
    -531,   403,  -531,  -531,  -531,   828,  -531,  -531,  -531,   829,
     732,   831,   368,   211,   469,   230,   832,  -531,   833,   240,
     241,    60,    60,    60,    60,  -531,  -531,   749,   834,   636,
     835,   837,  -531,  -531,  -531,   837,   837,  -531,   -33,   838,
     837,   491,   472,    14,    14,   764,   766,   840,  -531,   120,
     527,   527,   527,  -531,   841,   843,   843,  -531,   815,   527,
      44,    44,    44,    44,    44,   844,  -531,   845,  -531,   846,
    -531,  -531,  -531,  -531,  -531,  -531,  -531,    60,  -531,    60,
    -531,  -531,   847,   783,  -531,  -531,    44,    44,  -531,  -531,
    -531,  -531,  -531,   848,   849,  -531,  -531,   740,  -531,   850,
     851,   105,   105,  -531,   361,   853,   854,   855,   856,   857,
     477,  -531,   654,   858,  -531,  -531,  -531,  -531,   859,   487,
     816,   861,    72,    72,   105,   105,   105,   491,   508,   862,
    -531,  -531,  -531,  -531,   490,   105,   105,  -531,   799,   110,
    -531,  -531,   863,   864,   865,  -531,  -531,  -531,  -531,  -531,
    -531,  -531,    44,    44,    44,    44,    44,  -531,  -531,  -531,
    -531,   866,   268,  -531,   867,   518,   868,   869,   870,   871,
     872,   873,   874,   875,   121,   806,   877,  -531,   529,  -531,
    -531,  -531,  -531,   878,   105,   805,   879,   880,  -531,   492,
     138,   138,   138,   138,   138,  -531,   881,  -531,   527,    44,
      44,   883,  -531,   110,  -531,  -531,  -531,  -531,  -531,  -531,
    -531,   816,   540,   884,   534,   491,  -531,   885,   886,  -531,
    -531,   688,  -531,  -531,  -531,  -531,   622,   814,   888,  -531,
    -531,  -531,   889,   890,   891,   892,  -531,   536,   861,    14,
      14,   491,   127,   893,   894,  -531,  -531,   895,  -531,  -531,
     138,   138,   138,   138,  -531,  -531,  -531,  -531,  -531,  -531,
    -531,  -531,   896,   897,   898,   899,  -531,  -531,   845,   138,
     138,   138,   138,  -531,  -531,  -531,   861,   900,   901,   902,
     903,   904,   905,  -531,  -531,  -531,  -531,  -531,  -531
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
     333,     0,     0,   340,   339,     0,     2,     3,     4,   333,
     335,   337,     0,     0,    43,   333,   333,     1,     0,   330,
       0,     0,     0,     0,    54,     0,    43,   332,   331,     0,
     334,     0,     0,     6,     0,     0,     0,     0,     0,     0,
      13,   241,   246,   242,   243,   244,   245,     0,     0,   338,
      42,   336,     0,   296,     0,     0,     0,     0,     0,     0,
       0,   247,    45,     0,     0,    60,     0,     5,     7,    10,
      11,    12,     0,   240,     9,     8,    14,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    55,     0,    41,    45,     0,     0,     0,    20,     0,
       0,     0,    48,     0,     0,     0,    16,    15,   270,   271,
     284,   273,   272,   274,   275,   276,   285,   277,   278,   282,
     283,   281,   280,   279,   286,   287,   288,   289,   290,   291,
     292,    17,   237,     0,     0,   227,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   236,   250,   269,     0,
     254,     0,   252,     0,   256,     0,   293,     0,    44,   233,
       0,    23,    38,   232,    19,   235,     0,   234,    27,   294,
      57,     0,    59,    24,    25,    38,     0,     0,   215,     0,
       0,     0,   202,     0,     0,   169,   170,     0,     0,     0,
       0,     0,     0,     0,    38,    38,    38,    38,    38,     0,
      58,    45,    45,    22,     0,     0,    36,     0,    33,    38,
      60,    60,     0,     0,     0,   228,     0,     0,   181,   177,
     178,   179,   180,    51,     0,     0,     0,   248,     0,   205,
     203,   201,   206,   207,     0,   209,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    62,    40,    39,    52,
      38,    21,     0,    30,     0,    47,    46,   230,   226,     0,
       0,     0,     0,     0,     0,   173,     0,   164,   165,    38,
      38,   304,   208,   210,   211,     0,     0,   214,     0,     0,
       0,     0,     0,     0,    37,    38,    38,    32,   217,   225,
     218,     0,   216,   229,     0,    49,    51,    51,     0,     0,
       0,     0,     0,     0,     0,     0,   304,   304,     0,   304,
     304,   304,   304,   304,   212,   213,     0,     0,     0,     0,
       0,    56,    61,    35,    34,     0,    29,   219,    53,    50,
       0,     0,     0,     0,     0,     0,   222,     0,     0,     0,
      67,    45,   307,     0,     0,     0,   297,   301,   295,   298,
     299,   300,   302,   303,   204,     0,     0,   182,   200,     0,
       0,     0,   259,    31,   172,   171,   159,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   191,     0,     0,     0,
       0,     0,   314,   315,     0,     0,   186,     0,     0,     0,
       0,     0,     0,     0,     0,   147,   144,   143,   142,     0,
       0,   161,   160,   162,   163,   220,   221,   239,     0,     0,
       0,   238,     0,   306,    66,    65,    64,   151,   305,     0,
       0,   310,     0,   319,   176,   318,   317,     0,   308,     0,
       0,   185,   224,   200,     0,    38,     0,     0,    73,    75,
      74,    77,    76,   149,     0,     0,     0,     0,     0,     0,
       0,   255,     0,     0,     0,     0,   197,     0,   191,    38,
       0,     0,    26,    67,    51,   312,     0,   313,     0,     0,
      51,    51,     0,     0,     0,     0,     0,   309,     0,   198,
     183,   223,     0,     0,     0,     0,     0,   249,   129,     0,
       0,   253,   251,     0,     0,   138,   146,     0,     0,   258,
     260,     0,   257,    93,    94,     0,   187,   189,   196,     0,
       0,     0,     0,     0,     0,     0,     0,   321,     0,     0,
       0,     0,     0,     0,     0,   316,   199,     0,     0,     0,
       0,    72,    79,    80,    81,    72,    72,    82,     0,     0,
      72,    38,     0,     0,     0,     0,     0,     0,   145,     0,
       0,     0,     0,   263,     0,     0,     0,    96,     0,     0,
       0,     0,     0,     0,     0,     0,   188,     0,   150,     0,
      68,   231,   311,   320,   175,   174,   323,   326,   322,   328,
     324,   325,     0,     0,    88,    86,     0,     0,    87,    69,
      71,    70,   148,     0,     0,   127,   128,     0,   168,     0,
       0,     0,     0,   139,     0,     0,     0,     0,     0,     0,
       0,   101,     0,     0,   112,   115,   113,   114,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    38,     0,     0,
      63,   327,   329,   184,     0,     0,     0,   153,     0,     0,
     125,   126,     0,     0,     0,   268,   264,   265,   266,   261,
     262,   119,     0,     0,     0,     0,     0,    97,    98,    89,
      95,     0,     0,   108,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   190,     0,    78,
      83,    84,    85,     0,     0,     0,     0,     0,   267,     0,
       0,     0,     0,     0,     0,    91,     0,   110,     0,     0,
       0,     0,    92,     0,   155,    99,   156,   100,   157,   158,
     154,     0,     0,     0,     0,    38,   152,     0,     0,   140,
     141,     0,   111,   118,   116,   117,     0,     0,     0,   130,
     132,   133,     0,     0,     0,     0,   104,     0,     0,     0,
       0,    38,     0,     0,     0,   192,   194,     0,   166,   167,
       0,     0,     0,     0,   131,   121,   122,   123,   124,   120,
     105,   109,     0,     0,     0,     0,    90,   193,     0,     0,
       0,     0,     0,   107,   102,   103,     0,     0,     0,     0,
       0,     0,     0,   195,   135,   134,   136,   137,   106
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -531,  -531,  -531,   485,  -531,   759,  -531,   767,  -531,  -531,
     754,  -531,  -531,  -531,  -531,  -531,  -153,   660,  -181,   887,
     793,   277,  -270,  -531,  -531,   224,  -531,  -110,  -531,  -152,
    -531,  -531,   449,  -531,  -109,  -378,  -531,  -531,  -531,  -531,
    -474,  -531,  -531,  -531,  -510,  -531,   358,  -531,  -531,   222,
     374,  -531,  -225,  -531,   466,    94,   -43,  -531,  -382,  -367,
    -531,  -531,  -381,  -377,  -441,  -206,  -520,  -137,  -380,  -531,
    -531,  -329,  -335,   149,   243,  -531,  -531,   -56,  -102,  -531,
     705,   -78,  -531,  -344,  -531,   460,  -531,  -531,  -531,  -531,
    -531,   882,  -531,  -531,  -531,  -531,  -531,  -531,  -531,  -530,
    -531,  -325,   292,  -531,  -531,  -531,  -531,   452,  -531,  -531,
    -531,  -531,  -531,  -531,  -531,  -354,  -531,   344,   345,   239,
    -531,   906,  -531,   908
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     5,     6,    35,    23,   306,    79,    97,    98,   162,
     223,   464,   100,   168,   326,   209,   205,   206,    92,    25,
      93,   101,   263,   250,   329,   295,    94,   201,   172,   202,
     102,   283,   377,   414,   530,   437,   531,   532,   634,   438,
     502,   619,   503,   663,   664,   737,   613,   614,   689,   615,
     445,   542,   728,   729,   362,   399,   547,   449,   533,   534,
     415,   416,   535,   536,   537,   548,   599,   267,   268,   426,
     224,   356,   456,   629,   457,   357,   181,   316,   358,   434,
     259,   486,   226,   178,   104,   417,    37,    38,    39,   307,
      40,    41,    66,    42,    43,    44,    45,    46,   400,   499,
     610,   500,   149,   131,    47,    48,     7,   308,   309,   310,
     345,   311,   312,   313,   384,   577,   476,   578,   580,     8,
       9,    10,    11,    12
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      82,   187,   177,   145,   375,   191,   192,   193,   439,   441,
     439,   441,   504,   442,   446,   442,   385,   597,   266,   211,
     247,   248,   212,   440,   600,   440,   330,   331,   620,   465,
     427,   180,    17,     1,   183,   184,   173,   188,   189,   190,
     451,   241,   242,   243,   244,   245,   443,   512,   443,   264,
     366,    18,   488,    53,     2,   239,   254,   199,    20,   432,
     302,   210,   176,   422,    33,    83,    34,    85,   170,   174,
      87,    89,     2,   171,    21,   665,   489,   490,   182,   452,
     650,   513,    22,   453,   160,   234,    24,   236,   237,   238,
     598,   240,   332,   333,   334,   335,   207,   466,   225,    18,
     286,   321,   667,   669,    14,   481,    81,    13,   264,   543,
     544,   258,   258,   264,   261,   262,   303,   304,   521,   522,
     523,   524,   508,   604,    81,   231,   367,   368,   369,   370,
     264,   322,   323,   324,     3,     4,   275,   276,   423,   443,
     539,   726,   285,    15,    16,   660,   661,   265,   598,   265,
     185,   186,     3,     4,    54,   -24,   200,   289,   289,   291,
     378,   429,    31,   424,   185,   186,    84,   576,    86,   579,
     581,    88,    90,   616,   616,   265,   185,   186,   504,   504,
     622,   623,   624,   625,   626,   161,   684,   443,   617,   617,
     381,   443,   443,   682,   515,   293,   443,   208,   582,   200,
     519,   520,    14,   718,   364,   454,   635,   636,   265,   185,
     186,   443,   443,   265,   185,   186,   359,   360,    32,   763,
     764,    49,   605,   712,   606,   579,   727,   761,   762,    51,
     265,   185,   186,   365,   571,   371,   372,   743,    26,   -24,
      55,   265,   185,   186,   574,   575,    52,   425,    19,    80,
      26,    81,   680,   -24,    27,    28,   439,   441,   166,   167,
     683,   442,   339,   382,   383,    67,   782,   681,    34,   696,
     504,   440,   690,   691,   692,   693,   694,   389,    72,   294,
     644,    91,   482,   376,    76,   430,   433,   396,   294,    99,
     443,   -28,   -28,    24,   443,    77,   410,   340,   341,   342,
     148,   343,    24,   397,   344,   398,   509,   724,     3,     4,
     731,   731,   731,   731,   731,   185,   186,   294,   294,   739,
     740,   103,   725,   697,    81,   230,   135,   478,   294,   294,
     698,    24,    24,   176,   288,   425,   425,   425,   425,    95,
     105,    96,    24,    24,   373,   443,   374,   699,   700,   176,
     290,   106,   455,   458,   549,   483,   386,   460,   135,   132,
     484,   485,   550,   551,   552,   553,   461,   379,   380,   173,
     731,   731,   731,   731,   412,   413,   569,   146,   151,   508,
     153,   147,   155,   540,   425,   425,   425,   425,   594,   731,
     731,   731,   731,   355,   431,   150,   387,   152,   505,   462,
     154,   376,   174,   463,   554,   549,   156,   388,   214,   215,
     135,   216,   217,   550,   551,   552,   666,   668,   670,   671,
     672,   218,   589,   565,   157,   583,   590,   591,   159,   666,
     668,   593,   528,   685,   529,   -72,   219,   220,   221,   222,
     425,   163,   425,    57,    58,    59,    60,    61,   607,   608,
     609,   355,   480,    96,   174,   555,   556,   621,   557,   361,
     495,   135,   374,   507,   558,   559,   732,   733,   734,   735,
     296,   297,   412,   570,   673,   444,   595,   165,   717,   169,
     498,   649,   560,   561,   562,   563,   564,   255,   256,    78,
     501,   659,   -18,   678,   679,   721,   722,   742,   -18,   -18,
     -18,   -18,   -18,   -18,   -18,   -18,   -18,   -18,   -18,   -18,
     -18,   -18,   -18,   -18,   -18,   -18,   -18,   -18,   -18,   -18,
     408,    68,    69,    70,    71,   769,   770,   771,   772,   133,
     176,   409,    74,    75,   135,   179,   369,   374,   746,   662,
     760,   493,   494,    81,   778,   779,   780,   781,   393,   394,
     676,   395,   674,   730,   730,   730,   730,   730,   642,   643,
     194,   133,   747,   675,   195,   396,   135,   136,   137,   138,
     139,   140,   141,   142,   143,   144,   196,   197,   198,   204,
     203,   397,   227,   398,   701,   228,   296,   297,   765,   484,
     -18,   298,   299,   300,   301,   229,   738,   232,   173,   136,
     137,   138,   139,   140,   141,   142,   143,   144,   586,   587,
     562,   563,   564,   730,   730,   730,   730,   468,   713,   458,
     296,   297,   233,   235,   249,   298,   299,   703,   301,   246,
     252,   174,   730,   730,   730,   730,   251,   253,   257,   469,
     269,   470,   471,   270,   317,   271,   472,   473,   474,   475,
     272,   273,   318,   107,   274,   277,   744,   278,   376,   108,
     109,   110,   111,   112,   113,   114,   115,   116,   117,   118,
     119,   120,   121,   122,   123,   124,   125,   126,   127,   128,
     129,   213,   214,   215,   135,   216,   217,   279,   280,   281,
     282,   585,   325,   287,   135,   218,   484,   485,   292,   305,
     319,   133,   314,   134,   315,   173,   135,   320,   327,   651,
     219,   220,   221,   222,   484,   586,   587,   562,   563,   564,
     336,   337,   328,   173,   296,   297,   338,   348,   174,   750,
     751,   752,   753,   652,   653,   654,   655,   656,   174,   136,
     137,   138,   139,   140,   141,   142,   143,   144,   484,   354,
      55,   130,   355,   361,   363,   390,   174,   173,   346,   347,
     391,   349,   350,   351,   352,   353,   392,   652,   653,   654,
     655,   656,    56,    57,    58,    59,    60,    61,    62,    63,
      64,    65,    36,   401,   402,   403,   404,   405,   406,   407,
     174,   411,   418,   421,   419,    36,    36,    36,    36,   420,
     428,   435,   436,   444,   447,   448,    36,    36,   450,   374,
     459,   497,   467,   477,   479,   487,   491,   492,   498,   501,
     518,   506,   510,   545,   517,   516,   525,   526,   527,   538,
     541,   546,   566,   567,   462,   568,   572,   573,   584,   588,
     529,   601,   592,   602,   603,   611,   612,   627,   628,   639,
     630,   633,   637,   638,   640,   641,   604,   175,   645,   646,
     647,   648,   657,   658,   662,   164,   677,   686,   687,   688,
     695,   702,   704,   705,   706,   707,   708,   709,   710,   711,
     715,   718,   716,   719,   720,   736,   741,   158,   745,   748,
     749,   754,   755,   756,   757,   758,   759,   766,   767,   768,
     773,   774,   775,   776,   783,   784,   785,   786,   787,   788,
     284,   723,   514,    50,   618,   496,   596,   777,   714,   260,
     511,   631,    73,     0,   632,     0,     0,    30,    29
};

static const yytype_int16 yycheck[] =
{
      56,   138,   104,    81,   339,   142,   143,   144,   390,   390,
     392,   392,   453,   390,   392,   392,   345,     3,   224,   171,
     201,   202,   175,   390,   544,   392,   296,   297,   558,     4,
     384,   133,     0,     3,   136,   137,    69,   139,   140,   141,
       4,   194,   195,   196,   197,   198,   390,     3,   392,     3,
       4,     3,    55,     1,    24,   192,   209,     3,     5,   388,
     266,   171,     3,     3,     1,     1,     3,     1,   102,   102,
       1,     1,    24,   107,    89,     3,    79,    80,   134,    43,
     610,   461,     3,    47,     1,   187,   102,   189,   190,   191,
      76,   193,   298,   299,   300,   301,     1,    72,   176,     3,
     252,     4,   622,   623,   102,   434,     3,     7,     3,   489,
     490,   213,   214,     3,   216,   217,   269,   270,   472,   473,
     474,   475,   457,     3,     3,   181,   332,   333,   334,   335,
       3,   283,   285,   286,   104,   105,   238,   239,    78,   483,
     484,     3,   252,   104,   105,   619,   620,   103,    76,   103,
     104,   105,   104,   105,   102,     4,   102,   259,   260,   261,
     341,   102,     8,   103,   104,   105,   102,   521,   102,   523,
     524,   102,   102,   555,   556,   103,   104,   105,   619,   620,
     560,   561,   562,   563,   564,   102,    76,   531,   555,   556,
       1,   535,   536,   634,   464,     4,   540,   102,   527,   102,
     470,   471,   102,    76,     4,   102,   586,   587,   103,   104,
     105,   555,   556,   103,   104,   105,   318,   319,    64,   739,
     740,     4,   102,   102,   549,   579,    88,   737,   738,     6,
     103,   104,   105,     4,     4,   337,   338,   711,    14,    88,
       9,   103,   104,   105,     4,     4,   102,   384,     9,     1,
      26,     3,   634,   102,    15,    16,   638,   638,     3,     4,
     638,   638,    31,    74,    75,     4,   776,   634,     3,     1,
     711,   638,   652,   653,   654,   655,   656,   355,     3,    88,
     605,   102,   435,   339,     4,   387,   388,    69,    88,     1,
     634,     3,     4,   102,   638,     4,   374,    66,    67,    68,
      41,    70,   102,    85,    73,    87,   459,   689,   104,   105,
     690,   691,   692,   693,   694,   104,   105,    88,    88,   699,
     700,     3,   689,    55,     3,     4,    58,   429,    88,    88,
      62,   102,   102,     3,     4,   472,   473,   474,   475,     1,
       3,     3,   102,   102,     1,   689,     3,    79,    80,     3,
       4,     4,   408,   409,    44,    55,     4,    60,    58,     4,
      60,    61,    52,    53,    54,    55,    69,    71,    72,    69,
     750,   751,   752,   753,     3,     4,   513,     4,    86,   714,
      88,     4,    90,   485,   521,   522,   523,   524,   541,   769,
     770,   771,   772,     3,     4,     4,    44,     4,   454,   102,
       4,   457,   102,   106,     1,    44,     4,    55,    56,    57,
      58,    59,    60,    52,    53,    54,   622,   623,   624,   625,
     626,    69,   531,   501,   107,   527,   535,   536,     4,   635,
     636,   540,     1,   639,     3,     4,    84,    85,    86,    87,
     577,     4,   579,    32,    33,    34,    35,    36,   550,   551,
     552,     3,     4,     3,   102,    52,    53,   559,    55,     3,
       4,    58,     3,     4,    61,    62,   691,   692,   693,   694,
     102,   103,     3,     4,   627,     3,     4,     4,   684,     4,
       3,     4,    79,    80,    81,    82,    83,   210,   211,     1,
       3,     4,     4,     3,     4,     3,     4,   703,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,    31,
      44,    36,    37,    38,    39,   750,   751,   752,   753,    53,
       3,    55,    47,    48,    58,    65,   742,     3,     4,     3,
       4,   447,   448,     3,   769,   770,   771,   772,    52,    53,
     628,    55,    44,   690,   691,   692,   693,   694,   601,   602,
       3,    53,   715,    55,     3,    69,    58,    91,    92,    93,
      94,    95,    96,    97,    98,    99,     3,     3,     3,    88,
       4,    85,     4,    87,   662,   102,   102,   103,   741,    60,
     102,   107,   108,   109,   110,     4,   698,     4,    69,    91,
      92,    93,    94,    95,    96,    97,    98,    99,    79,    80,
      81,    82,    83,   750,   751,   752,   753,    78,   674,   675,
     102,   103,     4,     4,   102,   107,   108,   109,   110,    63,
     107,   102,   769,   770,   771,   772,     4,     4,     4,   100,
       3,   102,   103,     3,    42,     4,   107,   108,   109,   110,
       4,     4,    42,     4,     4,     4,   712,     4,   714,    10,
      11,    12,    13,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,    28,    29,    30,
      31,    55,    56,    57,    58,    59,    60,     4,     4,     4,
       4,    55,   107,     4,    58,    69,    60,    61,     4,     3,
      42,    53,     4,    55,     4,    69,    58,    51,     4,    55,
      84,    85,    86,    87,    60,    79,    80,    81,    82,    83,
       4,     4,   102,    69,   102,   103,     4,     4,   102,   107,
     108,   109,   110,    79,    80,    81,    82,    83,   102,    91,
      92,    93,    94,    95,    96,    97,    98,    99,    60,     4,
       9,   102,     3,     3,    90,    47,   102,    69,   306,   307,
      47,   309,   310,   311,   312,   313,    47,    79,    80,    81,
      82,    83,    31,    32,    33,    34,    35,    36,    37,    38,
      39,    40,    23,     4,     4,     4,     4,     4,     4,     4,
     102,     4,     4,     4,   104,    36,    37,    38,    39,   104,
       4,     3,     3,     3,     3,     3,    47,    48,    88,     3,
       3,    77,     4,     4,     4,     4,     4,     4,     3,     3,
     102,     4,     3,    88,     4,   104,     4,     4,     4,     3,
       3,    88,     4,     4,   102,     4,     4,     4,     4,     4,
       3,    77,     4,    77,     4,     4,     3,     3,     3,   109,
       4,     4,     4,     4,     4,     4,     3,   103,     4,     4,
       4,     4,     4,     4,     3,    98,     4,     4,     4,     4,
       4,     4,     4,     4,     4,     4,     4,     4,     4,     4,
       3,    76,     4,     4,     4,     4,     3,    94,     4,     4,
       4,    77,     4,     4,     4,     4,     4,     4,     4,     4,
       4,     4,     4,     4,     4,     4,     4,     4,     4,     4,
     250,   689,   463,    26,   556,   449,   542,   768,   675,   214,
     460,   577,    40,    -1,   579,    -1,    -1,    21,    20
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,    24,   104,   105,   113,   114,   218,   231,   232,
     233,   234,   235,     7,   102,   104,   105,     0,     3,   231,
       5,    89,     3,   116,   102,   131,   137,   231,   231,   235,
     233,     8,    64,     1,     3,   115,   117,   198,   199,   200,
     202,   203,   205,   206,   207,   208,   209,   216,   217,     4,
     131,     6,   102,     1,   102,     9,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,   204,     4,   115,   115,
     115,   115,     3,   203,   115,   115,     4,     4,     1,   118,
       1,     3,   189,     1,   102,     1,   102,     1,   102,     1,
     102,   102,   130,   132,   138,     1,     3,   119,   120,     1,
     124,   133,   142,     3,   196,     3,     4,     4,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,    31,
     102,   215,     4,    53,    55,    58,    91,    92,    93,    94,
      95,    96,    97,    98,    99,   193,     4,     4,    41,   214,
       4,   214,     4,   214,     4,   214,     4,   107,   132,     4,
       1,   102,   121,     4,   119,     4,     3,     4,   125,     4,
     102,   107,   140,    69,   102,   122,     3,   190,   195,    65,
     190,   188,   189,   190,   190,   104,   105,   179,   190,   190,
     190,   179,   179,   179,     3,     3,     3,     3,     3,     3,
     102,   139,   141,     4,    88,   128,   129,     1,   102,   127,
     139,   141,   128,    55,    56,    57,    59,    60,    69,    84,
      85,    86,    87,   122,   182,   193,   194,     4,   102,     4,
       4,   189,     4,     4,   190,     4,   190,   190,   190,   179,
     190,   128,   128,   128,   128,   128,    63,   130,   130,   102,
     135,     4,   107,     4,   128,   133,   133,     4,   190,   192,
     192,   190,   190,   134,     3,   103,   177,   179,   180,     3,
       3,     4,     4,     4,     4,   190,   190,     4,     4,     4,
       4,     4,     4,   143,   129,   139,   141,     4,     4,   190,
       4,   190,     4,     4,    88,   137,   102,   103,   107,   108,
     109,   110,   177,   128,   128,     3,   117,   201,   219,   220,
     221,   223,   224,   225,     4,     4,   189,    42,    42,    42,
      51,     4,   141,   128,   128,   107,   126,     4,   102,   136,
     134,   134,   177,   177,   177,   177,     4,     4,     4,    31,
      66,    67,    68,    70,    73,   222,   219,   219,     4,   219,
     219,   219,   219,   219,     4,     3,   183,   187,   190,   190,
     190,     3,   166,    90,     4,     4,     4,   177,   177,   177,
     177,   190,   190,     1,     3,   184,   189,   144,   130,    71,
      72,     1,    74,    75,   226,   183,     4,    44,    55,   193,
      47,    47,    47,    52,    53,    55,    69,    85,    87,   167,
     210,     4,     4,     4,     4,     4,     4,     4,    44,    55,
     193,     4,     3,     4,   145,   172,   173,   197,     4,   104,
     104,     4,     3,    78,   103,   179,   181,   227,     4,   102,
     190,     4,   183,   190,   191,     3,     3,   147,   151,   170,
     171,   174,   175,   195,     3,   162,   147,     3,     3,   169,
      88,     4,    43,    47,   102,   189,   184,   186,   189,     3,
      60,    69,   102,   106,   123,     4,    72,     4,    78,   100,
     102,   103,   107,   108,   109,   110,   228,     4,   190,     4,
       4,   183,   128,    55,    60,    61,   193,     4,    55,    79,
      80,     4,     4,   167,   167,     4,   166,    77,     3,   211,
     213,     3,   152,   154,   176,   189,     4,     4,   184,   128,
       3,   197,     3,   180,   144,   134,   104,     4,   102,   134,
     134,   227,   227,   227,   227,     4,     4,     4,     1,     3,
     146,   148,   149,   170,   171,   174,   175,   176,     3,   195,
     190,     3,   163,   180,   180,    88,    88,   168,   177,    44,
      52,    53,    54,    55,     1,    52,    53,    55,    61,    62,
      79,    80,    81,    82,    83,   193,     4,     4,     4,   179,
       4,     4,     4,     4,     4,     4,   227,   227,   229,   227,
     230,   227,   183,   190,     4,    55,    79,    80,     4,   146,
     146,   146,     4,   146,   128,     4,   162,     3,    76,   178,
     178,    77,    77,     4,     3,   102,   213,   190,   190,   190,
     212,     4,     3,   158,   159,   161,   170,   171,   158,   153,
     211,   190,   180,   180,   180,   180,   180,     3,     3,   185,
       4,   229,   230,     4,   150,   180,   180,     4,     4,   109,
       4,     4,   168,   168,   213,     4,     4,     4,     4,     4,
     211,    55,    79,    80,    81,    82,    83,     4,     4,     4,
     152,   152,     3,   155,   156,     3,   177,   178,   177,   178,
     177,   177,   177,   128,    44,    55,   193,     4,     3,     4,
     170,   171,   176,   147,    76,   177,     4,     4,     4,   160,
     180,   180,   180,   180,   180,     4,     1,    55,    62,    79,
      80,   193,     4,   109,     4,     4,     4,     4,     4,     4,
       4,     4,   102,   189,   186,     3,     4,   177,    76,     4,
       4,     3,     4,   161,   170,   171,     3,    88,   164,   165,
     179,   180,   164,   164,   164,   164,     4,   157,   190,   180,
     180,     3,   177,   152,   189,     4,     4,   128,     4,     4,
     107,   108,   109,   110,    77,     4,     4,     4,     4,     4,
       4,   156,   156,   178,   178,   128,     4,     4,     4,   164,
     164,   164,   164,     4,     4,     4,     4,   185,   164,   164,
     164,   164,   156,     4,     4,     4,     4,     4,     4
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,   112,   113,   113,   113,   114,   114,   115,   115,   115,
     115,   115,   115,   115,   116,   117,   117,   118,   118,   119,
     119,   120,   120,   121,   122,   122,   123,   124,   124,   125,
     125,   126,   126,   127,   128,   128,   128,   129,   129,   130,
     130,   130,   131,   131,   132,   132,   133,   133,   133,   134,
     134,   134,   135,   136,   137,   138,   139,   140,   141,   142,
     142,   143,   143,   144,   144,   144,   144,   144,   145,   146,
     146,   146,   146,   147,   147,   147,   147,   147,   148,   148,
     149,   149,   149,   150,   150,   150,   150,   151,   151,   152,
     152,   152,   152,   152,   152,   153,   153,   154,   154,   154,
     154,   154,   155,   155,   155,   156,   156,   156,   156,   157,
     157,   158,   158,   159,   159,   159,   160,   160,   160,   160,
     161,   161,   161,   161,   161,   162,   162,   162,   163,   163,
     164,   164,   164,   164,   165,   165,   165,   165,   166,   166,
     166,   166,   167,   167,   167,   168,   169,   169,   170,   171,
     172,   173,   174,   175,   176,   176,   176,   176,   176,   177,
     177,   177,   177,   177,   177,   177,   178,   178,   178,   179,
     179,   180,   180,   180,   181,   181,   181,   182,   182,   182,
     182,   182,   183,   183,   183,   183,   183,   184,   184,   184,
     184,   184,   185,   185,   185,   185,   186,   186,   187,   187,
     187,   188,   188,   189,   189,   189,   189,   189,   189,   189,
     189,   189,   189,   189,   189,   190,   190,   190,   190,   190,
     190,   190,   190,   191,   191,   192,   192,   193,   194,   195,
     196,   197,   198,   198,   199,   199,   200,   200,   201,   201,
     202,   202,   203,   203,   203,   203,   203,   204,   205,   206,
     206,   207,   207,   208,   208,   209,   209,   210,   210,   210,
     211,   211,   212,   212,   213,   213,   213,   213,   213,   214,
     215,   215,   215,   215,   215,   215,   215,   215,   215,   215,
     215,   215,   215,   215,   215,   215,   215,   215,   215,   215,
     215,   215,   215,   216,   217,   218,   218,   219,   219,   219,
     219,   219,   219,   219,   219,   220,   221,   222,   223,   224,
     224,   225,   225,   225,   226,   226,   227,   227,   227,   227,
     227,   227,   228,   228,   228,   228,   229,   229,   230,   230,
     231,   231,   231,   231,   232,   232,   233,   233,   234,   235,
     235
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     1,     5,     4,     2,     2,     2,
       2,     2,     2,     1,     4,     4,     4,     2,     0,     2,
       1,     4,     3,     1,     1,     1,     1,     2,     0,     5,
       3,     2,     0,     1,     4,     4,     1,     3,     0,     4,
       4,     1,     2,     0,     2,     0,     4,     4,     1,     2,
       3,     0,     1,     1,     1,     1,     4,     1,     1,     2,
       0,     2,     0,     6,     2,     2,     2,     0,     4,     2,
       2,     2,     0,     1,     1,     1,     1,     1,     4,     1,
       1,     1,     1,     2,     2,     2,     0,     4,     4,     4,
       7,     5,     5,     1,     1,     2,     0,     4,     4,     5,
       5,     3,     5,     5,     3,     4,     7,     5,     1,     2,
       0,     4,     1,     1,     1,     1,     2,     2,     2,     0,
       5,     5,     5,     5,     5,     5,     5,     4,     2,     0,
       1,     2,     1,     1,     5,     5,     5,     5,     4,     6,
       9,     9,     1,     1,     1,     1,     2,     0,     4,     1,
       4,     1,     7,     5,     5,     5,     5,     5,     5,     4,
       5,     5,     5,     5,     1,     1,     5,     5,     1,     1,
       1,     4,     4,     1,     4,     4,     1,     1,     1,     1,
       1,     1,     1,     4,     7,     3,     2,     4,     5,     4,
       7,     1,     4,     5,     4,     7,     2,     1,     4,     5,
       1,     2,     1,     4,     7,     4,     4,     4,     5,     4,
       5,     5,     6,     6,     5,     1,     4,     4,     4,     5,
       7,     7,     5,     2,     1,     2,     1,     1,     1,     4,
       4,     4,     4,     4,     4,     4,     4,     4,     4,     4,
       2,     1,     1,     1,     1,     1,     1,     1,     5,    12,
       4,    12,     4,    12,     4,    11,     4,     3,     3,     0,
       1,     4,     2,     0,     4,     4,     4,     5,     4,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     4,     4,    12,     5,     2,     2,     2,
       2,     2,     2,     2,     0,     4,     4,     1,     4,     5,
       4,     7,     5,     5,     1,     1,     3,     1,     1,     1,
       4,     3,     3,     3,     3,     3,     1,     2,     1,     2,
       2,     3,     3,     0,     3,     1,     4,     1,     4,     1,
       1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 252 "pddl+.yacc" /* yacc.c:1646  */
    {top_thing= (yyvsp[0].t_domain); current_analysis->the_domain= (yyvsp[0].t_domain);}
#line 2051 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 3:
#line 253 "pddl+.yacc" /* yacc.c:1646  */
    {top_thing= (yyvsp[0].t_problem); current_analysis->the_problem= (yyvsp[0].t_problem);}
#line 2057 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 4:
#line 254 "pddl+.yacc" /* yacc.c:1646  */
    {top_thing= (yyvsp[0].t_plan); }
#line 2063 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 5:
#line 259 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_domain)= (yyvsp[-1].t_domain); (yyval.t_domain)->name= (yyvsp[-2].cp);delete [] (yyvsp[-2].cp);
	if (types_used && !types_defined) {
		yyerrok; log_error(E_FATAL,"Syntax error in domain - no :types section, but types used in definitions."); 
	}
	}
#line 2073 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 6:
#line 265 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; (yyval.t_domain)=static_cast<domain*>(NULL);
       	log_error(E_FATAL,"Syntax error in domain"); }
#line 2080 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 7:
#line 271 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_domain)= (yyvsp[0].t_domain); (yyval.t_domain)->req= (yyvsp[-1].t_pddl_req_flag);}
#line 2086 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 8:
#line 272 "pddl+.yacc" /* yacc.c:1646  */
    {types_defined = true; (yyval.t_domain)= (yyvsp[0].t_domain); (yyval.t_domain)->types= (yyvsp[-1].t_type_list);}
#line 2092 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 9:
#line 273 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_domain)= (yyvsp[0].t_domain); (yyval.t_domain)->constants= (yyvsp[-1].t_const_symbol_list);}
#line 2098 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 10:
#line 274 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_domain)= (yyvsp[0].t_domain); 
                                       (yyval.t_domain)->predicates= (yyvsp[-1].t_pred_decl_list); }
#line 2105 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 11:
#line 276 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_domain)= (yyvsp[0].t_domain); 
                                       (yyval.t_domain)->functions= (yyvsp[-1].t_func_decl_list); }
#line 2112 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 12:
#line 278 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_domain)= (yyvsp[0].t_domain);
   										(yyval.t_domain)->constraints = (yyvsp[-1].t_con_goal);}
#line 2119 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 13:
#line 280 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_domain)= new domain((yyvsp[0].t_structure_store)); }
#line 2125 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 14:
#line 283 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.cp)=(yyvsp[-1].cp);}
#line 2131 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 15:
#line 289 "pddl+.yacc" /* yacc.c:1646  */
    {
	// Stash in analysis object --- we need to refer to it during parse
	//   but domain object is not created yet,
	current_analysis->req |= (yyvsp[-1].t_pddl_req_flag);
	(yyval.t_pddl_req_flag)=(yyvsp[-1].t_pddl_req_flag);
    }
#line 2142 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 16:
#line 296 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; 
       log_error(E_FATAL,"Syntax error in requirements declaration.");
       (yyval.t_pddl_req_flag)= 0; }
#line 2150 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 17:
#line 302 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_pddl_req_flag)= (yyvsp[-1].t_pddl_req_flag) | (yyvsp[0].t_pddl_req_flag); }
#line 2156 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 18:
#line 303 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_pddl_req_flag)= 0; }
#line 2162 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 19:
#line 309 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pred_decl_list)=(yyvsp[0].t_pred_decl_list); (yyval.t_pred_decl_list)->push_front((yyvsp[-1].t_pred_decl));}
#line 2168 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 20:
#line 311 "pddl+.yacc" /* yacc.c:1646  */
    {  (yyval.t_pred_decl_list)=new pred_decl_list;
           (yyval.t_pred_decl_list)->push_front((yyvsp[0].t_pred_decl)); }
#line 2175 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 21:
#line 316 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pred_decl)= new pred_decl((yyvsp[-2].t_pred_symbol),(yyvsp[-1].t_var_symbol_list),current_analysis->var_tab_stack.pop());}
#line 2181 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 22:
#line 318 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; 
        // hope someone makes this error someday
        log_error(E_FATAL,"Syntax error in predicate declaration.");
	(yyval.t_pred_decl)= NULL; }
#line 2190 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 23:
#line 326 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_pred_symbol)=current_analysis->pred_tab.symbol_put((yyvsp[0].cp));
           current_analysis->var_tab_stack.push(
           				current_analysis->buildPredTab());
           delete [] (yyvsp[0].cp); }
#line 2199 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 24:
#line 333 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_pred_symbol)=current_analysis->pred_tab.symbol_ref("="); 
	      requires(E_EQUALITY); }
#line 2206 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 25:
#line 335 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_pred_symbol)=current_analysis->pred_tab.symbol_get((yyvsp[0].cp)); delete [] (yyvsp[0].cp); }
#line 2212 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 26:
#line 343 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_pred_symbol)=current_analysis->pred_tab.symbol_get((yyvsp[0].cp)); delete [] (yyvsp[0].cp);}
#line 2218 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 27:
#line 349 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_func_decl_list)=(yyvsp[-1].t_func_decl_list); (yyval.t_func_decl_list)->push_back((yyvsp[0].t_func_decl));}
#line 2224 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 28:
#line 350 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_func_decl_list)=new func_decl_list; }
#line 2230 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 29:
#line 355 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_func_decl)= new func_decl((yyvsp[-3].t_func_symbol),(yyvsp[-2].t_var_symbol_list),current_analysis->var_tab_stack.pop());}
#line 2236 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 30:
#line 357 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; 
	 log_error(E_FATAL,"Syntax error in functor declaration.");
	 (yyval.t_func_decl)= NULL; }
#line 2244 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 31:
#line 363 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_dummy) = 0;}
#line 2250 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 32:
#line 363 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_dummy)=0;}
#line 2256 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 33:
#line 367 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_func_symbol)=current_analysis->func_tab.symbol_put((yyvsp[0].cp));
           current_analysis->var_tab_stack.push(
           		current_analysis->buildFuncTab()); 
           delete [] (yyvsp[0].cp); }
#line 2265 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 34:
#line 380 "pddl+.yacc" /* yacc.c:1646  */
    {  
      (yyval.t_var_symbol_list)= (yyvsp[-3].t_var_symbol_list);
      (yyval.t_var_symbol_list)->set_types((yyvsp[-1].t_type));           /* Set types for variables */
      (yyval.t_var_symbol_list)->splice((yyval.t_var_symbol_list)->end(),*(yyvsp[0].t_var_symbol_list));   /* Join lists */ 
      delete (yyvsp[0].t_var_symbol_list);                   /* Delete (now empty) list */
      requires(E_TYPING);
      types_used = true;
   }
#line 2278 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 35:
#line 389 "pddl+.yacc" /* yacc.c:1646  */
    {  
      (yyval.t_var_symbol_list)= (yyvsp[-3].t_var_symbol_list);
      (yyval.t_var_symbol_list)->set_either_types((yyvsp[-1].t_type_list));    /* Set types for variables */
      (yyval.t_var_symbol_list)->splice((yyval.t_var_symbol_list)->end(),*(yyvsp[0].t_var_symbol_list));   /* Join lists */ 
      delete (yyvsp[0].t_var_symbol_list);                   /* Delete (now empty) list */
      requires(E_TYPING);
      types_used = true;
   }
#line 2291 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 36:
#line 398 "pddl+.yacc" /* yacc.c:1646  */
    {
       (yyval.t_var_symbol_list)= (yyvsp[0].t_var_symbol_list);
   }
#line 2299 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 37:
#line 410 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_var_symbol_list)=(yyvsp[0].t_var_symbol_list); (yyvsp[0].t_var_symbol_list)->push_front((yyvsp[-1].t_var_symbol)); }
#line 2305 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 38:
#line 411 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_var_symbol_list)= new var_symbol_list; }
#line 2311 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 39:
#line 418 "pddl+.yacc" /* yacc.c:1646  */
    {  
      (yyval.t_const_symbol_list)= (yyvsp[-3].t_const_symbol_list);
      (yyvsp[-3].t_const_symbol_list)->set_types((yyvsp[-1].t_type));           /* Set types for constants */
      (yyvsp[-3].t_const_symbol_list)->splice((yyvsp[-3].t_const_symbol_list)->end(),*(yyvsp[0].t_const_symbol_list)); /* Join lists */ 
      delete (yyvsp[0].t_const_symbol_list);                   /* Delete (now empty) list */
      requires(E_TYPING);
      types_used = true;
   }
#line 2324 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 40:
#line 427 "pddl+.yacc" /* yacc.c:1646  */
    {  
      (yyval.t_const_symbol_list)= (yyvsp[-3].t_const_symbol_list);
      (yyvsp[-3].t_const_symbol_list)->set_either_types((yyvsp[-1].t_type_list));
      (yyvsp[-3].t_const_symbol_list)->splice((yyvsp[-3].t_const_symbol_list)->end(),*(yyvsp[0].t_const_symbol_list));
      delete (yyvsp[0].t_const_symbol_list);
      requires(E_TYPING);
      types_used = true;
   }
#line 2337 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 41:
#line 436 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_const_symbol_list)= (yyvsp[0].t_const_symbol_list);}
#line 2343 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 42:
#line 441 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_const_symbol_list)=(yyvsp[0].t_const_symbol_list); (yyvsp[0].t_const_symbol_list)->push_front((yyvsp[-1].t_const_symbol));}
#line 2349 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 43:
#line 442 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_const_symbol_list)=new const_symbol_list;}
#line 2355 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 44:
#line 446 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_const_symbol_list)=(yyvsp[0].t_const_symbol_list); (yyvsp[0].t_const_symbol_list)->push_front((yyvsp[-1].t_const_symbol));}
#line 2361 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 45:
#line 447 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_const_symbol_list)=new const_symbol_list;}
#line 2367 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 46:
#line 456 "pddl+.yacc" /* yacc.c:1646  */
    {  
       (yyval.t_type_list)= (yyvsp[-3].t_type_list);
       (yyval.t_type_list)->set_types((yyvsp[-1].t_type));           /* Set types for constants */
       (yyval.t_type_list)->splice((yyval.t_type_list)->end(),*(yyvsp[0].t_type_list)); /* Join lists */ 
       delete (yyvsp[0].t_type_list);                   /* Delete (now empty) list */
   }
#line 2378 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 47:
#line 463 "pddl+.yacc" /* yacc.c:1646  */
    {  
   // This parse needs to be excluded, we think (DPL&MF: 6/9/01)
       (yyval.t_type_list)= (yyvsp[-3].t_type_list);
       (yyval.t_type_list)->set_either_types((yyvsp[-1].t_type_list));
       (yyval.t_type_list)->splice((yyvsp[-3].t_type_list)->end(),*(yyvsp[0].t_type_list));
       delete (yyvsp[0].t_type_list);
   }
#line 2390 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 48:
#line 472 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_type_list)= (yyvsp[0].t_type_list); }
#line 2396 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 49:
#line 478 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_parameter_symbol_list)=(yyvsp[-1].t_parameter_symbol_list); (yyval.t_parameter_symbol_list)->push_back((yyvsp[0].t_const_symbol)); }
#line 2402 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 50:
#line 480 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_parameter_symbol_list)=(yyvsp[-2].t_parameter_symbol_list); (yyval.t_parameter_symbol_list)->push_back((yyvsp[0].t_var_symbol)); }
#line 2408 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 51:
#line 481 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_parameter_symbol_list)= new parameter_symbol_list;}
#line 2414 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 52:
#line 488 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_var_symbol)= current_analysis->var_tab_stack.top()->symbol_put((yyvsp[0].cp)); delete [] (yyvsp[0].cp); }
#line 2420 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 53:
#line 494 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_var_symbol)= current_analysis->var_tab_stack.symbol_get((yyvsp[0].cp)); delete [] (yyvsp[0].cp); }
#line 2426 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 54:
#line 498 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_const_symbol)= current_analysis->const_tab.symbol_get((yyvsp[0].cp)); delete [] (yyvsp[0].cp); }
#line 2432 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 55:
#line 502 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_const_symbol)= current_analysis->const_tab.symbol_put((yyvsp[0].cp)); delete [] (yyvsp[0].cp);}
#line 2438 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 56:
#line 507 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_type_list)= (yyvsp[-1].t_type_list); }
#line 2444 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 57:
#line 512 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_type)= current_analysis->pddl_type_tab.symbol_ref((yyvsp[0].cp)); delete [] (yyvsp[0].cp);}
#line 2450 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 58:
#line 519 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_type)= current_analysis->pddl_type_tab.symbol_ref((yyvsp[0].cp)); delete [] (yyvsp[0].cp);}
#line 2456 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 59:
#line 524 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_type_list)= (yyvsp[-1].t_type_list); (yyval.t_type_list)->push_back((yyvsp[0].t_type));}
#line 2462 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 60:
#line 525 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_type_list)= new pddl_type_list;}
#line 2468 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 61:
#line 530 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_type_list)= (yyvsp[-1].t_type_list); (yyval.t_type_list)->push_back((yyvsp[0].t_type));}
#line 2474 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 62:
#line 531 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_type_list)= new pddl_type_list;}
#line 2480 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 63:
#line 536 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-5].t_effect_lists);
	  (yyval.t_effect_lists)->assign_effects.push_back(new assignment((yyvsp[-2].t_func_term),E_ASSIGN,(yyvsp[-1].t_num_expression)));  
          if((yyvsp[-2].t_func_term)->getFunction()->getName()=="total-cost")
          {
          	requires(E_ACTIONCOSTS); 
          	// Should also check that $5 is 0...
		  }
          else
          {
          	requires(E_NFLUENTS); 
          }
	}
#line 2497 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 64:
#line 549 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists); (yyval.t_effect_lists)->add_effects.push_back((yyvsp[0].t_simple_effect)); }
#line 2503 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 65:
#line 551 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists); (yyval.t_effect_lists)->del_effects.push_back((yyvsp[0].t_simple_effect)); }
#line 2509 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 66:
#line 553 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists); (yyval.t_effect_lists)->timed_effects.push_back((yyvsp[0].t_timed_effect)); }
#line 2515 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 67:
#line 555 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists;}
#line 2521 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 68:
#line 560 "pddl+.yacc" /* yacc.c:1646  */
    { requires(E_TIMED_INITIAL_LITERALS); 
   		(yyval.t_timed_effect)=new timed_initial_literal((yyvsp[-1].t_effect_lists),(yyvsp[-2].fval));}
#line 2528 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 69:
#line 565 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=(yyvsp[0].t_effect_lists); (yyval.t_effect_lists)->append_effects((yyvsp[-1].t_effect_lists)); delete (yyvsp[-1].t_effect_lists);}
#line 2534 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 70:
#line 566 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=(yyvsp[0].t_effect_lists); (yyval.t_effect_lists)->cond_effects.push_front((yyvsp[-1].t_cond_effect)); 
                                      requires(E_COND_EFFS);}
#line 2541 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 71:
#line 568 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=(yyvsp[0].t_effect_lists); (yyval.t_effect_lists)->forall_effects.push_front((yyvsp[-1].t_forall_effect));
                                      requires(E_COND_EFFS);}
#line 2548 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 72:
#line 570 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists(); }
#line 2554 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 73:
#line 579 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[0].t_effect_lists);}
#line 2560 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 74:
#line 580 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->add_effects.push_front((yyvsp[0].t_simple_effect));}
#line 2566 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 75:
#line 581 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->del_effects.push_front((yyvsp[0].t_simple_effect));}
#line 2572 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 76:
#line 582 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->cond_effects.push_front((yyvsp[0].t_cond_effect));}
#line 2578 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 77:
#line 583 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->forall_effects.push_front((yyvsp[0].t_forall_effect));}
#line 2584 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 78:
#line 587 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[-1].t_effect_lists);}
#line 2590 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 79:
#line 588 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[0].t_effect_lists);}
#line 2596 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 80:
#line 593 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->del_effects.push_front((yyvsp[0].t_simple_effect));}
#line 2602 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 81:
#line 595 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->add_effects.push_front((yyvsp[0].t_simple_effect));}
#line 2608 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 82:
#line 597 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->assign_effects.push_front((yyvsp[0].t_assignment));
         requires(E_NFLUENTS);}
#line 2615 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 83:
#line 603 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[-1].t_effect_lists); (yyval.t_effect_lists)->del_effects.push_back((yyvsp[0].t_simple_effect));}
#line 2621 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 84:
#line 604 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[-1].t_effect_lists); (yyval.t_effect_lists)->add_effects.push_back((yyvsp[0].t_simple_effect));}
#line 2627 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 85:
#line 605 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[-1].t_effect_lists); (yyval.t_effect_lists)->assign_effects.push_back((yyvsp[0].t_assignment));
                                     requires(E_NFLUENTS); }
#line 2634 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 86:
#line 607 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists; }
#line 2640 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 87:
#line 612 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists); }
#line 2646 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 88:
#line 614 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; (yyval.t_effect_lists)=NULL;
	 log_error(E_FATAL,"Syntax error in (and ...)");
	}
#line 2654 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 89:
#line 622 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists); }
#line 2660 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 90:
#line 627 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists; 
          (yyval.t_effect_lists)->forall_effects.push_back(
	       new forall_effect((yyvsp[-1].t_effect_lists), (yyvsp[-3].t_var_symbol_list), current_analysis->var_tab_stack.pop())); 
          requires(E_COND_EFFS);}
#line 2669 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 91:
#line 632 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists;
	  (yyval.t_effect_lists)->cond_effects.push_back(
	       new cond_effect((yyvsp[-2].t_goal),(yyvsp[-1].t_effect_lists)));
          requires(E_COND_EFFS); }
#line 2678 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 92:
#line 637 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists;
	  (yyval.t_effect_lists)->cond_assign_effects.push_back(
	       new cond_effect((yyvsp[-2].t_goal),(yyvsp[-1].t_effect_lists)));
          requires(E_COND_EFFS); }
#line 2687 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 93:
#line 642 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=new effect_lists;
          (yyval.t_effect_lists)->timed_effects.push_back((yyvsp[0].t_timed_effect)); }
#line 2694 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 94:
#line 645 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists;
	  (yyval.t_effect_lists)->assign_effects.push_front((yyvsp[0].t_assignment));
          requires(E_NFLUENTS); }
#line 2702 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 95:
#line 651 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists); (yyvsp[-1].t_effect_lists)->append_effects((yyvsp[0].t_effect_lists)); delete (yyvsp[0].t_effect_lists); }
#line 2708 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 96:
#line 652 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists; }
#line 2714 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 97:
#line 657 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_timed_effect)=new timed_effect((yyvsp[-1].t_effect_lists),E_AT_START);}
#line 2720 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 98:
#line 659 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_timed_effect)=new timed_effect((yyvsp[-1].t_effect_lists),E_AT_END);}
#line 2726 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 99:
#line 661 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_timed_effect)=new timed_effect(new effect_lists,E_CONTINUOUS);
         (yyval.t_timed_effect)->effs->assign_effects.push_front(
	     new assignment((yyvsp[-2].t_func_term),E_INCREASE,(yyvsp[-1].t_expression))); }
#line 2734 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 100:
#line 665 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_timed_effect)=new timed_effect(new effect_lists,E_CONTINUOUS);
         (yyval.t_timed_effect)->effs->assign_effects.push_front(
	     new assignment((yyvsp[-2].t_func_term),E_DECREASE,(yyvsp[-1].t_expression))); }
#line 2742 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 101:
#line 669 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; (yyval.t_timed_effect)=NULL;
	log_error(E_FATAL,"Syntax error in timed effect"); }
#line 2749 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 102:
#line 675 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_timed_effect)=new timed_effect(new effect_lists,E_CONTINUOUS);
         (yyval.t_timed_effect)->effs->assign_effects.push_front(
	     new assignment((yyvsp[-2].t_func_term),E_INCREASE,(yyvsp[-1].t_expression))); }
#line 2757 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 103:
#line 679 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_timed_effect)=new timed_effect(new effect_lists,E_CONTINUOUS);
         (yyval.t_timed_effect)->effs->assign_effects.push_front(
	     new assignment((yyvsp[-2].t_func_term),E_DECREASE,(yyvsp[-1].t_expression))); }
#line 2765 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 104:
#line 683 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; (yyval.t_timed_effect)=NULL;
	log_error(E_FATAL,"Syntax error in conditional continuous effect"); }
#line 2772 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 105:
#line 689 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists); }
#line 2778 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 106:
#line 694 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists; 
          (yyval.t_effect_lists)->forall_effects.push_back(
	       new forall_effect((yyvsp[-1].t_effect_lists), (yyvsp[-3].t_var_symbol_list), current_analysis->var_tab_stack.pop())); 
          requires(E_COND_EFFS);}
#line 2787 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 107:
#line 699 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists;
	  (yyval.t_effect_lists)->cond_assign_effects.push_back(
	       new cond_effect((yyvsp[-2].t_goal),(yyvsp[-1].t_effect_lists)));
          requires(E_COND_EFFS); }
#line 2796 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 108:
#line 704 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=new effect_lists;
          (yyval.t_effect_lists)->timed_effects.push_back((yyvsp[0].t_timed_effect)); }
#line 2803 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 109:
#line 709 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists); (yyvsp[-1].t_effect_lists)->append_effects((yyvsp[0].t_effect_lists)); delete (yyvsp[0].t_effect_lists); }
#line 2809 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 110:
#line 710 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists; }
#line 2815 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 111:
#line 714 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[-1].t_effect_lists);}
#line 2821 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 112:
#line 715 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[0].t_effect_lists);}
#line 2827 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 113:
#line 720 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->del_effects.push_front((yyvsp[0].t_simple_effect));}
#line 2833 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 114:
#line 722 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->add_effects.push_front((yyvsp[0].t_simple_effect));}
#line 2839 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 115:
#line 724 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; (yyval.t_effect_lists)->assign_effects.push_front((yyvsp[0].t_assignment));
         requires(E_NFLUENTS);}
#line 2846 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 116:
#line 730 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[-1].t_effect_lists); (yyval.t_effect_lists)->del_effects.push_back((yyvsp[0].t_simple_effect));}
#line 2852 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 117:
#line 731 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[-1].t_effect_lists); (yyval.t_effect_lists)->add_effects.push_back((yyvsp[0].t_simple_effect));}
#line 2858 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 118:
#line 732 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)= (yyvsp[-1].t_effect_lists); (yyval.t_effect_lists)->assign_effects.push_back((yyvsp[0].t_assignment));
                                     requires(E_NFLUENTS); }
#line 2865 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 119:
#line 734 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists; }
#line 2871 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 120:
#line 740 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_ASSIGN,(yyvsp[-1].t_expression)); }
#line 2877 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 121:
#line 742 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_INCREASE,(yyvsp[-1].t_expression)); }
#line 2883 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 122:
#line 744 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_DECREASE,(yyvsp[-1].t_expression)); }
#line 2889 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 123:
#line 746 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_SCALE_UP,(yyvsp[-1].t_expression)); }
#line 2895 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 124:
#line 748 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_SCALE_DOWN,(yyvsp[-1].t_expression)); }
#line 2901 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 125:
#line 753 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; 
         timed_effect * te = new timed_effect(new effect_lists,E_CONTINUOUS);
         (yyval.t_effect_lists)->timed_effects.push_front(te);
         te->effs->assign_effects.push_front(
	     new assignment((yyvsp[-2].t_func_term),E_INCREASE,(yyvsp[-1].t_expression))); }
#line 2911 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 126:
#line 759 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=new effect_lists; 
         timed_effect * te = new timed_effect(new effect_lists,E_CONTINUOUS);
         (yyval.t_effect_lists)->timed_effects.push_front(te);
         te->effs->assign_effects.push_front(
	     new assignment((yyvsp[-2].t_func_term),E_DECREASE,(yyvsp[-1].t_expression))); }
#line 2921 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 127:
#line 765 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists) = (yyvsp[-1].t_effect_lists);}
#line 2927 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 128:
#line 769 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists); (yyvsp[-1].t_effect_lists)->append_effects((yyvsp[0].t_effect_lists)); delete (yyvsp[0].t_effect_lists); }
#line 2933 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 129:
#line 770 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_effect_lists)= new effect_lists; }
#line 2939 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 130:
#line 774 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression)= (yyvsp[0].t_expression);}
#line 2945 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 131:
#line 775 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression)= new special_val_expr(E_DURATION_VAR);
                    requires( E_DURATION_INEQUALITIES );}
#line 2952 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 132:
#line 777 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)=(yyvsp[0].t_num_expression); }
#line 2958 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 133:
#line 778 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= (yyvsp[0].t_func_term); }
#line 2964 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 134:
#line 783 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new plus_expression((yyvsp[-2].t_expression),(yyvsp[-1].t_expression)); }
#line 2970 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 135:
#line 785 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new minus_expression((yyvsp[-2].t_expression),(yyvsp[-1].t_expression)); }
#line 2976 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 136:
#line 787 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new mul_expression((yyvsp[-2].t_expression),(yyvsp[-1].t_expression)); }
#line 2982 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 137:
#line 789 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new div_expression((yyvsp[-2].t_expression),(yyvsp[-1].t_expression)); }
#line 2988 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 138:
#line 794 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal)= new conj_goal((yyvsp[-1].t_goal_list)); }
#line 2994 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 139:
#line 796 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal)= new timed_goal(new comparison((yyvsp[-4].t_comparison_op),
        			new special_val_expr(E_DURATION_VAR),(yyvsp[-1].t_expression)),E_AT_START); }
#line 3001 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 140:
#line 799 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal) = new timed_goal(new comparison((yyvsp[-5].t_comparison_op),
					new special_val_expr(E_DURATION_VAR),(yyvsp[-2].t_expression)),E_AT_START);}
#line 3008 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 141:
#line 802 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal) = new timed_goal(new comparison((yyvsp[-5].t_comparison_op),
					new special_val_expr(E_DURATION_VAR),(yyvsp[-2].t_expression)),E_AT_END);}
#line 3015 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 142:
#line 807 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_comparison_op)= E_LESSEQ; requires(E_DURATION_INEQUALITIES);}
#line 3021 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 143:
#line 808 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_comparison_op)= E_GREATEQ; requires(E_DURATION_INEQUALITIES);}
#line 3027 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 144:
#line 809 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_comparison_op)= E_EQUALS; }
#line 3033 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 145:
#line 817 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression)= (yyvsp[0].t_expression); }
#line 3039 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 146:
#line 822 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal_list)=(yyvsp[-1].t_goal_list); (yyval.t_goal_list)->push_back((yyvsp[0].t_goal)); }
#line 3045 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 147:
#line 824 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal_list)= new goal_list; }
#line 3051 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 148:
#line 829 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_simple_effect)= new simple_effect((yyvsp[-1].t_proposition)); }
#line 3057 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 149:
#line 834 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_simple_effect)= new simple_effect((yyvsp[0].t_proposition)); }
#line 3063 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 150:
#line 841 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_simple_effect)= new simple_effect((yyvsp[-1].t_proposition)); }
#line 3069 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 151:
#line 846 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_simple_effect)= new simple_effect((yyvsp[0].t_proposition)); }
#line 3075 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 152:
#line 851 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_forall_effect)= new forall_effect((yyvsp[-1].t_effect_lists), (yyvsp[-3].t_var_symbol_list), current_analysis->var_tab_stack.pop());}
#line 3081 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 153:
#line 856 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_cond_effect)= new cond_effect((yyvsp[-2].t_goal),(yyvsp[-1].t_effect_lists)); }
#line 3087 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 154:
#line 861 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_ASSIGN,(yyvsp[-1].t_expression)); }
#line 3093 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 155:
#line 863 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_INCREASE,(yyvsp[-1].t_expression)); }
#line 3099 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 156:
#line 865 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_DECREASE,(yyvsp[-1].t_expression)); }
#line 3105 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 157:
#line 867 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_SCALE_UP,(yyvsp[-1].t_expression)); }
#line 3111 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 158:
#line 869 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_assignment)= new assignment((yyvsp[-2].t_func_term),E_SCALE_DOWN,(yyvsp[-1].t_expression)); }
#line 3117 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 159:
#line 874 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new uminus_expression((yyvsp[-1].t_expression)); requires(E_NFLUENTS); }
#line 3123 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 160:
#line 876 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new plus_expression((yyvsp[-2].t_expression),(yyvsp[-1].t_expression)); requires(E_NFLUENTS); }
#line 3129 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 161:
#line 878 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new minus_expression((yyvsp[-2].t_expression),(yyvsp[-1].t_expression)); requires(E_NFLUENTS); }
#line 3135 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 162:
#line 880 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new mul_expression((yyvsp[-2].t_expression),(yyvsp[-1].t_expression)); requires(E_NFLUENTS); }
#line 3141 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 163:
#line 882 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new div_expression((yyvsp[-2].t_expression),(yyvsp[-1].t_expression)); requires(E_NFLUENTS); }
#line 3147 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 164:
#line 883 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)=(yyvsp[0].t_num_expression); }
#line 3153 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 165:
#line 884 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= (yyvsp[0].t_func_term); requires(E_NFLUENTS); }
#line 3159 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 166:
#line 889 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new mul_expression(new special_val_expr(E_HASHT),(yyvsp[-1].t_expression)); }
#line 3165 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 167:
#line 891 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new mul_expression((yyvsp[-2].t_expression), new special_val_expr(E_HASHT)); }
#line 3171 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 168:
#line 893 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new special_val_expr(E_HASHT); }
#line 3177 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 169:
#line 898 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_num_expression)=new int_expression((yyvsp[0].ival));   }
#line 3183 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 170:
#line 899 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_num_expression)=new float_expression((yyvsp[0].fval)); }
#line 3189 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 171:
#line 903 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_func_term)=new func_term( current_analysis->func_tab.symbol_get((yyvsp[-2].cp)), (yyvsp[-1].t_parameter_symbol_list)); delete [] (yyvsp[-2].cp); }
#line 3195 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 172:
#line 906 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_func_term)=new func_term( current_analysis->func_tab.symbol_get((yyvsp[-2].cp)), (yyvsp[-1].t_parameter_symbol_list)); delete [] (yyvsp[-2].cp); }
#line 3201 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 173:
#line 908 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_func_term)=new func_term( current_analysis->func_tab.symbol_get((yyvsp[0].cp)),
                            new parameter_symbol_list); delete [] (yyvsp[0].cp);}
#line 3208 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 174:
#line 926 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_func_term)=new func_term( current_analysis->func_tab.symbol_get((yyvsp[-2].cp)), (yyvsp[-1].t_parameter_symbol_list)); delete [] (yyvsp[-2].cp); }
#line 3214 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 175:
#line 928 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_func_term)=new func_term( current_analysis->func_tab.symbol_get((yyvsp[-2].cp)), (yyvsp[-1].t_parameter_symbol_list)); delete [] (yyvsp[-2].cp); }
#line 3220 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 176:
#line 930 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_func_term)=new func_term( current_analysis->func_tab.symbol_get((yyvsp[0].cp)),
                            new parameter_symbol_list); delete [] (yyvsp[0].cp);}
#line 3227 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 177:
#line 935 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_comparison_op)= E_GREATER; }
#line 3233 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 178:
#line 936 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_comparison_op)= E_GREATEQ; }
#line 3239 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 179:
#line 937 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_comparison_op)= E_LESS; }
#line 3245 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 180:
#line 938 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_comparison_op)= E_LESSEQ; }
#line 3251 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 181:
#line 939 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_comparison_op)= E_EQUALS; }
#line 3257 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 182:
#line 952 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= (yyvsp[0].t_goal);}
#line 3263 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 183:
#line 959 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal) = new conj_goal((yyvsp[-1].t_goal_list));}
#line 3269 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 184:
#line 962 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new qfied_goal(E_FORALL,(yyvsp[-3].t_var_symbol_list),(yyvsp[-1].t_goal),current_analysis->var_tab_stack.pop());
        requires(E_UNIV_PRECS);}
#line 3276 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 185:
#line 964 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal) = new conj_goal(new goal_list);}
#line 3282 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 186:
#line 965 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal) = new conj_goal(new goal_list);}
#line 3288 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 187:
#line 970 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new preference((yyvsp[-1].t_con_goal));requires(E_PREFERENCES);}
#line 3294 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 188:
#line 972 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new preference((yyvsp[-2].cp),(yyvsp[-1].t_con_goal));requires(E_PREFERENCES);}
#line 3300 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 189:
#line 974 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new conj_goal((yyvsp[-1].t_goal_list));}
#line 3306 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 190:
#line 977 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal)= new qfied_goal(E_FORALL,(yyvsp[-3].t_var_symbol_list),(yyvsp[-1].t_con_goal),current_analysis->var_tab_stack.pop());
                requires(E_UNIV_PRECS);}
#line 3313 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 191:
#line 980 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = (yyvsp[0].t_con_goal);}
#line 3319 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 192:
#line 985 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new preference((yyvsp[-1].t_con_goal));requires(E_PREFERENCES);}
#line 3325 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 193:
#line 987 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new preference((yyvsp[-2].cp),(yyvsp[-1].t_con_goal));requires(E_PREFERENCES);}
#line 3331 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 194:
#line 989 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new conj_goal((yyvsp[-1].t_goal_list));}
#line 3337 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 195:
#line 992 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal)= new qfied_goal(E_FORALL,(yyvsp[-3].t_var_symbol_list),(yyvsp[-1].t_con_goal),current_analysis->var_tab_stack.pop());
                requires(E_UNIV_PRECS);}
#line 3344 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 196:
#line 998 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal_list)=(yyvsp[-1].t_goal_list); (yyvsp[-1].t_goal_list)->push_back((yyvsp[0].t_con_goal));}
#line 3350 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 197:
#line 1000 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal_list)= new goal_list; (yyval.t_goal_list)->push_back((yyvsp[0].t_con_goal));}
#line 3356 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 198:
#line 1005 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new preference((yyvsp[-1].t_goal)); requires(E_PREFERENCES);}
#line 3362 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 199:
#line 1007 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new preference((yyvsp[-2].cp),(yyvsp[-1].t_goal)); requires(E_PREFERENCES);}
#line 3368 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 200:
#line 1011 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)=(yyvsp[0].t_goal);}
#line 3374 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 201:
#line 1016 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal_list) = (yyvsp[-1].t_goal_list); (yyval.t_goal_list)->push_back((yyvsp[0].t_con_goal));}
#line 3380 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 202:
#line 1018 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal_list) = new goal_list; (yyval.t_goal_list)->push_back((yyvsp[0].t_con_goal));}
#line 3386 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 203:
#line 1023 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal)= new conj_goal((yyvsp[-1].t_goal_list));}
#line 3392 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 204:
#line 1025 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new qfied_goal(E_FORALL,(yyvsp[-3].t_var_symbol_list),(yyvsp[-1].t_con_goal),current_analysis->var_tab_stack.pop());
        requires(E_UNIV_PRECS);}
#line 3399 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 205:
#line 1028 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_ATEND,(yyvsp[-1].t_goal));}
#line 3405 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 206:
#line 1030 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_ALWAYS,(yyvsp[-1].t_goal));}
#line 3411 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 207:
#line 1032 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_SOMETIME,(yyvsp[-1].t_goal));}
#line 3417 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 208:
#line 1034 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_WITHIN,(yyvsp[-1].t_goal),NULL,(yyvsp[-2].t_num_expression)->double_value(),0.0);delete (yyvsp[-2].t_num_expression);}
#line 3423 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 209:
#line 1036 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_ATMOSTONCE,(yyvsp[-1].t_goal));}
#line 3429 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 210:
#line 1038 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_SOMETIMEAFTER,(yyvsp[-1].t_goal),(yyvsp[-2].t_goal));}
#line 3435 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 211:
#line 1040 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_SOMETIMEBEFORE,(yyvsp[-1].t_goal),(yyvsp[-2].t_goal));}
#line 3441 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 212:
#line 1042 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_ALWAYSWITHIN,(yyvsp[-1].t_goal),(yyvsp[-2].t_goal),(yyvsp[-3].t_num_expression)->double_value(),0.0);delete (yyvsp[-3].t_num_expression);}
#line 3447 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 213:
#line 1044 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_HOLDDURING,(yyvsp[-1].t_goal),NULL,(yyvsp[-2].t_num_expression)->double_value(),(yyvsp[-3].t_num_expression)->double_value());delete (yyvsp[-3].t_num_expression);delete (yyvsp[-2].t_num_expression);}
#line 3453 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 214:
#line 1046 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = new constraint_goal(E_HOLDAFTER,(yyvsp[-1].t_goal),NULL,0.0,(yyvsp[-2].t_num_expression)->double_value());delete (yyvsp[-2].t_num_expression);}
#line 3459 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 215:
#line 1051 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new simple_goal((yyvsp[0].t_proposition),E_POS);}
#line 3465 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 216:
#line 1053 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new neg_goal((yyvsp[-1].t_goal));simple_goal * s = dynamic_cast<simple_goal *>((yyvsp[-1].t_goal));
       if(s && s->getProp()->head->getName()=="=") {requires(E_EQUALITY);} 
       else{requires(E_NEGATIVE_PRECONDITIONS);};}
#line 3473 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 217:
#line 1057 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new conj_goal((yyvsp[-1].t_goal_list));}
#line 3479 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 218:
#line 1059 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new disj_goal((yyvsp[-1].t_goal_list));
        requires(E_DISJUNCTIVE_PRECONDS);}
#line 3486 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 219:
#line 1062 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new imply_goal((yyvsp[-2].t_goal),(yyvsp[-1].t_goal));
        requires(E_DISJUNCTIVE_PRECONDS);}
#line 3493 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 220:
#line 1066 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new qfied_goal((yyvsp[-5].t_quantifier),(yyvsp[-3].t_var_symbol_list),(yyvsp[-1].t_goal),current_analysis->var_tab_stack.pop());}
#line 3499 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 221:
#line 1069 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new qfied_goal((yyvsp[-5].t_quantifier),(yyvsp[-3].t_var_symbol_list),(yyvsp[-1].t_goal),current_analysis->var_tab_stack.pop());}
#line 3505 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 222:
#line 1071 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new comparison((yyvsp[-3].t_comparison_op),(yyvsp[-2].t_expression),(yyvsp[-1].t_expression)); 
        requires(E_NFLUENTS);}
#line 3512 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 223:
#line 1077 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal_list)=(yyvsp[-1].t_goal_list); (yyvsp[-1].t_goal_list)->push_back((yyvsp[0].t_goal));}
#line 3518 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 224:
#line 1079 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal_list)= new goal_list; (yyval.t_goal_list)->push_back((yyvsp[0].t_goal));}
#line 3524 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 225:
#line 1084 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal_list)=(yyvsp[-1].t_goal_list); (yyvsp[-1].t_goal_list)->push_back((yyvsp[0].t_goal));}
#line 3530 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 226:
#line 1086 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal_list)= new goal_list; (yyval.t_goal_list)->push_back((yyvsp[0].t_goal));}
#line 3536 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 227:
#line 1096 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_quantifier)=E_FORALL; 
        current_analysis->var_tab_stack.push(
        		current_analysis->buildForallTab());}
#line 3544 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 228:
#line 1103 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_quantifier)=E_EXISTS;
        current_analysis->var_tab_stack.push(
        	current_analysis->buildExistsTab());}
#line 3552 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 229:
#line 1110 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_proposition)=new proposition((yyvsp[-2].t_pred_symbol),(yyvsp[-1].t_parameter_symbol_list));}
#line 3558 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 230:
#line 1115 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_proposition) = new proposition((yyvsp[-2].t_pred_symbol),(yyvsp[-1].t_var_symbol_list));}
#line 3564 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 231:
#line 1120 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_proposition)=new proposition((yyvsp[-2].t_pred_symbol),(yyvsp[-1].t_parameter_symbol_list));}
#line 3570 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 232:
#line 1125 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pred_decl_list)= (yyvsp[-1].t_pred_decl_list);}
#line 3576 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 233:
#line 1127 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; (yyval.t_pred_decl_list)=NULL;
	 log_error(E_FATAL,"Syntax error in (:predicates ...)");
	}
#line 3584 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 234:
#line 1134 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_func_decl_list)= (yyvsp[-1].t_func_decl_list);}
#line 3590 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 235:
#line 1136 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; (yyval.t_func_decl_list)=NULL;
	 log_error(E_FATAL,"Syntax error in (:functions ...)");
	}
#line 3598 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 236:
#line 1143 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = (yyvsp[-1].t_con_goal);}
#line 3604 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 237:
#line 1145 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; (yyval.t_con_goal)=NULL;
      log_error(E_FATAL,"Syntax error in (:constraints ...)");
      }
#line 3612 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 238:
#line 1152 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_con_goal) = (yyvsp[-1].t_con_goal);}
#line 3618 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 239:
#line 1154 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; (yyval.t_con_goal)=NULL;
      log_error(E_FATAL,"Syntax error in (:constraints ...)");
      }
#line 3626 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 240:
#line 1160 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_structure_store)=(yyvsp[-1].t_structure_store); (yyval.t_structure_store)->push_back((yyvsp[0].t_structure_def)); }
#line 3632 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 241:
#line 1161 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_structure_store)= new structure_store; (yyval.t_structure_store)->push_back((yyvsp[0].t_structure_def)); }
#line 3638 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 242:
#line 1165 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_structure_def)= (yyvsp[0].t_action_def); }
#line 3644 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 243:
#line 1166 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_structure_def)= (yyvsp[0].t_event_def); requires(E_TIME); }
#line 3650 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 244:
#line 1167 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_structure_def)= (yyvsp[0].t_process_def); requires(E_TIME); }
#line 3656 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 245:
#line 1168 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_structure_def)= (yyvsp[0].t_durative_action_def); requires(E_DURATIVE_ACTIONS); }
#line 3662 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 246:
#line 1169 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_structure_def)= (yyvsp[0].t_derivation_rule); requires(E_DERIVED_PREDICATES);}
#line 3668 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 247:
#line 1173 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_dummy)= 0; 
    	current_analysis->var_tab_stack.push(
    					current_analysis->buildRuleTab());}
#line 3676 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 248:
#line 1184 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_derivation_rule) = new derivation_rule((yyvsp[-2].t_proposition),(yyvsp[-1].t_goal),current_analysis->var_tab_stack.pop());}
#line 3682 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 249:
#line 1196 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_action_def)= current_analysis->buildAction(current_analysis->op_tab.symbol_put((yyvsp[-9].cp)),
			(yyvsp[-6].t_var_symbol_list),(yyvsp[-3].t_goal),(yyvsp[-1].t_effect_lists),
			current_analysis->var_tab_stack.pop()); delete [] (yyvsp[-9].cp); }
#line 3690 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 250:
#line 1200 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; 
	 log_error(E_FATAL,"Syntax error in action declaration.");
	 (yyval.t_action_def)= NULL; }
#line 3698 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 251:
#line 1213 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_event_def)= current_analysis->buildEvent(current_analysis->op_tab.symbol_put((yyvsp[-9].cp)),
		   (yyvsp[-6].t_var_symbol_list),(yyvsp[-3].t_goal),(yyvsp[-1].t_effect_lists),
		   current_analysis->var_tab_stack.pop()); delete [] (yyvsp[-9].cp);}
#line 3706 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 252:
#line 1218 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; 
	 log_error(E_FATAL,"Syntax error in event declaration.");
	 (yyval.t_event_def)= NULL; }
#line 3714 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 253:
#line 1230 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_process_def)= current_analysis->buildProcess(current_analysis->op_tab.symbol_put((yyvsp[-9].cp)),
		     (yyvsp[-6].t_var_symbol_list),(yyvsp[-3].t_goal),(yyvsp[-1].t_effect_lists),
                     current_analysis->var_tab_stack.pop()); delete [] (yyvsp[-9].cp);}
#line 3722 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 254:
#line 1234 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; 
	 log_error(E_FATAL,"Syntax error in process declaration.");
	 (yyval.t_process_def)= NULL; }
#line 3730 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 255:
#line 1246 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_durative_action_def)= (yyvsp[-1].t_durative_action_def);
      (yyval.t_durative_action_def)->name= current_analysis->op_tab.symbol_put((yyvsp[-8].cp));
      (yyval.t_durative_action_def)->symtab= current_analysis->var_tab_stack.pop();
      (yyval.t_durative_action_def)->parameters= (yyvsp[-5].t_var_symbol_list);
      (yyval.t_durative_action_def)->dur_constraint= (yyvsp[-2].t_goal); 
      delete [] (yyvsp[-8].cp);
    }
#line 3742 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 256:
#line 1255 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; 
	 log_error(E_FATAL,"Syntax error in durative-action declaration.");
	 (yyval.t_durative_action_def)= NULL; }
#line 3750 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 257:
#line 1262 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_durative_action_def)=(yyvsp[-2].t_durative_action_def); (yyval.t_durative_action_def)->effects=(yyvsp[0].t_effect_lists);}
#line 3756 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 258:
#line 1264 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_durative_action_def)=(yyvsp[-2].t_durative_action_def); (yyval.t_durative_action_def)->precondition=(yyvsp[0].t_goal);}
#line 3762 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 259:
#line 1265 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_durative_action_def)= current_analysis->buildDurativeAction();}
#line 3768 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 260:
#line 1270 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal)=(yyvsp[0].t_goal); }
#line 3774 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 261:
#line 1272 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal)= new conj_goal((yyvsp[-1].t_goal_list)); }
#line 3780 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 262:
#line 1277 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal_list)=(yyvsp[-1].t_goal_list); (yyval.t_goal_list)->push_back((yyvsp[0].t_goal)); }
#line 3786 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 263:
#line 1279 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_goal_list)= new goal_list; }
#line 3792 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 264:
#line 1284 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new timed_goal((yyvsp[-1].t_goal),E_AT_START);}
#line 3798 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 265:
#line 1286 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new timed_goal((yyvsp[-1].t_goal),E_AT_END);}
#line 3804 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 266:
#line 1288 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)= new timed_goal((yyvsp[-1].t_goal),E_OVER_ALL);}
#line 3810 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 267:
#line 1290 "pddl+.yacc" /* yacc.c:1646  */
    {timed_goal * tg = dynamic_cast<timed_goal *>((yyvsp[-1].t_goal));
		(yyval.t_goal) = new timed_goal(new preference((yyvsp[-2].cp),tg->clearGoal()),tg->getTime());
			delete tg;
			requires(E_PREFERENCES);}
#line 3819 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 268:
#line 1295 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal) = new preference((yyvsp[-1].t_goal));requires(E_PREFERENCES);}
#line 3825 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 269:
#line 1299 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_dummy)= 0; current_analysis->var_tab_stack.push(
    				current_analysis->buildOpTab());}
#line 3832 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 270:
#line 1304 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_EQUALITY;}
#line 3838 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 271:
#line 1305 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_STRIPS;}
#line 3844 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 272:
#line 1307 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_TYPING;}
#line 3850 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 273:
#line 1309 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_NEGATIVE_PRECONDITIONS;}
#line 3856 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 274:
#line 1311 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_DISJUNCTIVE_PRECONDS;}
#line 3862 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 275:
#line 1312 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_EXT_PRECS;}
#line 3868 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 276:
#line 1313 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_UNIV_PRECS;}
#line 3874 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 277:
#line 1314 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_COND_EFFS;}
#line 3880 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 278:
#line 1315 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_NFLUENTS | E_OFLUENTS;}
#line 3886 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 279:
#line 1317 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_DURATIVE_ACTIONS;}
#line 3892 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 280:
#line 1318 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_TIME |
                      E_NFLUENTS |
                      E_DURATIVE_ACTIONS; }
#line 3900 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 281:
#line 1321 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)=E_ACTIONCOSTS | E_NFLUENTS;}
#line 3906 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 282:
#line 1324 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)=E_OFLUENTS;}
#line 3912 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 283:
#line 1325 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)=E_NFLUENTS;}
#line 3918 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 284:
#line 1327 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_STRIPS |
		      E_TYPING | 
		      E_NEGATIVE_PRECONDITIONS |
		      E_DISJUNCTIVE_PRECONDS |
		      E_EQUALITY |
		      E_EXT_PRECS |
		      E_UNIV_PRECS |
		      E_COND_EFFS;}
#line 3931 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 285:
#line 1336 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_EXT_PRECS |
		      E_UNIV_PRECS;}
#line 3938 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 286:
#line 1340 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_DURATION_INEQUALITIES;}
#line 3944 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 287:
#line 1343 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag)= E_CONTINUOUS_EFFECTS;}
#line 3950 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 288:
#line 1345 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag) = E_DERIVED_PREDICATES;}
#line 3956 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 289:
#line 1347 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag) = E_TIMED_INITIAL_LITERALS;}
#line 3962 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 290:
#line 1349 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag) = E_PREFERENCES;}
#line 3968 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 291:
#line 1351 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_pddl_req_flag) = E_CONSTRAINTS;}
#line 3974 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 292:
#line 1353 "pddl+.yacc" /* yacc.c:1646  */
    {log_error(E_WARNING,"Unrecognised requirements declaration ");
       (yyval.t_pddl_req_flag)= 0; delete [] (yyvsp[0].cp);}
#line 3981 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 293:
#line 1359 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_const_symbol_list)=(yyvsp[-1].t_const_symbol_list);}
#line 3987 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 294:
#line 1363 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_type_list)=(yyvsp[-1].t_type_list); requires(E_TYPING);}
#line 3993 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 295:
#line 1373 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_problem)=(yyvsp[-1].t_problem); (yyval.t_problem)->name = (yyvsp[-7].cp); (yyval.t_problem)->domain_name = (yyvsp[-3].cp);
		if (types_used && !types_defined) {
			yyerrok; log_error(E_FATAL,"Syntax error in problem file - types used, but no :types section in domain file."); 
		}

	}
#line 4004 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 296:
#line 1380 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; (yyval.t_problem)=NULL;
       	log_error(E_FATAL,"Syntax error in problem definition."); }
#line 4011 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 297:
#line 1386 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_problem)=(yyvsp[0].t_problem); (yyval.t_problem)->req= (yyvsp[-1].t_pddl_req_flag);}
#line 4017 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 298:
#line 1387 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_problem)=(yyvsp[0].t_problem); (yyval.t_problem)->objects= (yyvsp[-1].t_const_symbol_list);}
#line 4023 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 299:
#line 1388 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_problem)=(yyvsp[0].t_problem); (yyval.t_problem)->initial_state= (yyvsp[-1].t_effect_lists);}
#line 4029 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 300:
#line 1389 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_problem)=(yyvsp[0].t_problem); (yyval.t_problem)->the_goal= (yyvsp[-1].t_goal);}
#line 4035 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 301:
#line 1391 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_problem)=(yyvsp[0].t_problem); (yyval.t_problem)->constraints = (yyvsp[-1].t_con_goal);}
#line 4041 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 302:
#line 1392 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_problem)=(yyvsp[0].t_problem); if((yyval.t_problem)->metric == 0) {(yyval.t_problem)->metric= (yyvsp[-1].t_metric);}
											else {(yyval.t_problem)->metric->add((yyvsp[-1].t_metric));}}
#line 4048 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 303:
#line 1394 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_problem)=(yyvsp[0].t_problem); (yyval.t_problem)->length= (yyvsp[-1].t_length_spec);}
#line 4054 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 304:
#line 1395 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_problem)=new problem;}
#line 4060 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 305:
#line 1398 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_const_symbol_list)=(yyvsp[-1].t_const_symbol_list);}
#line 4066 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 306:
#line 1401 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_effect_lists)=(yyvsp[-1].t_effect_lists);}
#line 4072 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 307:
#line 1404 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.vtab) = current_analysis->buildOpTab();}
#line 4078 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 308:
#line 1407 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_goal)=(yyvsp[-1].t_goal);delete (yyvsp[-2].vtab);}
#line 4084 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 309:
#line 1412 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_metric)= new metric_spec((yyvsp[-2].t_optimization),(yyvsp[-1].t_expression)); }
#line 4090 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 310:
#line 1414 "pddl+.yacc" /* yacc.c:1646  */
    {yyerrok; 
        log_error(E_FATAL,"Syntax error in metric declaration.");
        (yyval.t_metric)= NULL; }
#line 4098 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 311:
#line 1421 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_length_spec)= new length_spec(E_BOTH,(yyvsp[-3].ival),(yyvsp[-1].ival));}
#line 4104 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 312:
#line 1424 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_length_spec) = new length_spec(E_SERIAL,(yyvsp[-1].ival));}
#line 4110 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 313:
#line 1428 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_length_spec) = new length_spec(E_PARALLEL,(yyvsp[-1].ival));}
#line 4116 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 314:
#line 1434 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_optimization)= E_MINIMIZE;}
#line 4122 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 315:
#line 1435 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_optimization)= E_MAXIMIZE;}
#line 4128 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 316:
#line 1440 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression)= (yyvsp[-1].t_expression);}
#line 4134 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 317:
#line 1441 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression)= (yyvsp[0].t_func_term);}
#line 4140 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 318:
#line 1442 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression)= (yyvsp[0].t_num_expression);}
#line 4146 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 319:
#line 1443 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new special_val_expr(E_TOTAL_TIME); }
#line 4152 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 320:
#line 1445 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression) = new violation_term((yyvsp[-1].cp));}
#line 4158 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 321:
#line 1446 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new special_val_expr(E_TOTAL_TIME); }
#line 4164 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 322:
#line 1450 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new plus_expression((yyvsp[-1].t_expression),(yyvsp[0].t_expression)); }
#line 4170 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 323:
#line 1451 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new minus_expression((yyvsp[-1].t_expression),(yyvsp[0].t_expression)); }
#line 4176 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 324:
#line 1452 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new mul_expression((yyvsp[-1].t_expression),(yyvsp[0].t_expression)); }
#line 4182 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 325:
#line 1453 "pddl+.yacc" /* yacc.c:1646  */
    { (yyval.t_expression)= new div_expression((yyvsp[-1].t_expression),(yyvsp[0].t_expression)); }
#line 4188 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 326:
#line 1457 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression) = (yyvsp[0].t_expression);}
#line 4194 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 327:
#line 1459 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression) = new plus_expression((yyvsp[-1].t_expression),(yyvsp[0].t_expression));}
#line 4200 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 328:
#line 1463 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression) = (yyvsp[0].t_expression);}
#line 4206 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 329:
#line 1465 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_expression) = new mul_expression((yyvsp[-1].t_expression),(yyvsp[0].t_expression));}
#line 4212 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 330:
#line 1471 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_plan)= (yyvsp[0].t_plan); 
         (yyval.t_plan)->push_front((yyvsp[-1].t_step)); }
#line 4219 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 331:
#line 1474 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_plan) = (yyvsp[0].t_plan);(yyval.t_plan)->insertTime((yyvsp[-1].fval));}
#line 4225 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 332:
#line 1476 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_plan) = (yyvsp[0].t_plan);(yyval.t_plan)->insertTime((yyvsp[-1].ival));}
#line 4231 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 333:
#line 1478 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_plan)= new plan;}
#line 4237 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 334:
#line 1483 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_step)=(yyvsp[0].t_step); 
         (yyval.t_step)->start_time_given=1; 
         (yyval.t_step)->start_time=(yyvsp[-2].fval);}
#line 4245 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 335:
#line 1487 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_step)=(yyvsp[0].t_step);
	 (yyval.t_step)->start_time_given=0;}
#line 4252 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 336:
#line 1493 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_step)= (yyvsp[-3].t_step); 
	 (yyval.t_step)->duration_given=1;
         (yyval.t_step)->duration= (yyvsp[-1].fval);}
#line 4260 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 337:
#line 1497 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_step)= (yyvsp[0].t_step);
         (yyval.t_step)->duration_given=0;}
#line 4267 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 338:
#line 1503 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.t_step)= new plan_step( 
              current_analysis->op_tab.symbol_get((yyvsp[-2].cp)), 
	      (yyvsp[-1].t_const_symbol_list)); delete [] (yyvsp[-2].cp);
      }
#line 4276 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 339:
#line 1510 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.fval)= (yyvsp[0].fval);}
#line 4282 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;

  case 340:
#line 1511 "pddl+.yacc" /* yacc.c:1646  */
    {(yyval.fval)= (float) (yyvsp[0].ival);}
#line 4288 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
    break;


#line 4292 "/home/yochan/Desktop/FAST-DOWNWARD/builds/release32/VAL/pddl+.cpp" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 1514 "pddl+.yacc" /* yacc.c:1906  */


#include <cstdio>
#include <iostream>
int line_no= 1;
using std::istream;
#include "lex.yy.cc"

namespace VAL {
extern yyFlexLexer* yfl;
};


int yyerror(char * s)
{
    return 0;
}

int yylex()
{
    return yfl->yylex();
}
