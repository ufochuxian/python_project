.class Lorg/jsoup/select/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field private c:Lorg/jsoup/b/i;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/select/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ","

    aput-object v1, v0, v2

    const-string v1, ">"

    aput-object v1, v0, v4

    const-string v1, "+"

    aput-object v1, v0, v3

    const-string v1, "~"

    aput-object v1, v0, v5

    const-string v1, " "

    aput-object v1, v0, v6

    sput-object v0, Lorg/jsoup/select/g;->a:[Ljava/lang/String;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "="

    aput-object v1, v0, v2

    const-string v1, "!="

    aput-object v1, v0, v4

    const-string v1, "^="

    aput-object v1, v0, v3

    const-string v1, "$="

    aput-object v1, v0, v5

    const-string v1, "*="

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "~="

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/select/g;->b:[Ljava/lang/String;

    .line 275
    const-string v0, "((\\+|-)?(\\d+)?)n(\\s*(\\+|-)?\\s*\\d+)?"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/g;->f:Ljava/util/regex/Pattern;

    .line 276
    const-string v0, "(\\+|-)?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/g;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lorg/jsoup/select/g;->d:Ljava/lang/String;

    .line 29
    new-instance v0, Lorg/jsoup/b/i;

    invoke-direct {v0, p1}, Lorg/jsoup/b/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/jsoup/select/d;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Lorg/jsoup/select/g;

    invoke-direct {v0, p0}, Lorg/jsoup/select/g;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "p":Lorg/jsoup/select/g;
    invoke-virtual {v0}, Lorg/jsoup/select/g;->a()Lorg/jsoup/select/d;

    move-result-object v1

    return-object v1
.end method

.method private a(C)V
    .locals 12
    .param p1, "combinator"    # C

    .prologue
    const/16 v11, 0x2c

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 76
    iget-object v7, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v7}, Lorg/jsoup/b/i;->h()Z

    .line 77
    invoke-direct {p0}, Lorg/jsoup/select/g;->b()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "subQuery":Ljava/lang/String;
    invoke-static {v6}, Lorg/jsoup/select/g;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object v2

    .line 82
    .local v2, "newEval":Lorg/jsoup/select/d;
    const/4 v4, 0x0

    .line 84
    .local v4, "replaceRightMost":Z
    iget-object v7, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 85
    iget-object v7, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/d;

    .local v0, "currentEval":Lorg/jsoup/select/d;
    move-object v5, v0

    .line 87
    .local v5, "rootEval":Lorg/jsoup/select/d;
    instance-of v7, v5, Lorg/jsoup/select/b$b;

    if-eqz v7, :cond_0

    if-eq p1, v11, :cond_0

    .line 88
    check-cast v0, Lorg/jsoup/select/b$b;

    .end local v0    # "currentEval":Lorg/jsoup/select/d;
    invoke-virtual {v0}, Lorg/jsoup/select/b$b;->a()Lorg/jsoup/select/d;

    move-result-object v0

    .line 89
    .restart local v0    # "currentEval":Lorg/jsoup/select/d;
    const/4 v4, 0x1

    .line 95
    :cond_0
    :goto_0
    iget-object v7, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 98
    const/16 v7, 0x3e

    if-ne p1, v7, :cond_2

    .line 99
    new-instance v1, Lorg/jsoup/select/b$a;

    new-array v7, v8, [Lorg/jsoup/select/d;

    aput-object v2, v7, v10

    new-instance v8, Lorg/jsoup/select/h$b;

    invoke-direct {v8, v0}, Lorg/jsoup/select/h$b;-><init>(Lorg/jsoup/select/d;)V

    aput-object v8, v7, v9

    invoke-direct {v1, v7}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/d;)V

    .end local v0    # "currentEval":Lorg/jsoup/select/d;
    .local v1, "currentEval":Lorg/jsoup/select/d;
    move-object v0, v1

    .line 121
    .end local v1    # "currentEval":Lorg/jsoup/select/d;
    .restart local v0    # "currentEval":Lorg/jsoup/select/d;
    :goto_1
    if-eqz v4, :cond_8

    move-object v7, v5

    .line 122
    check-cast v7, Lorg/jsoup/select/b$b;

    invoke-virtual {v7, v0}, Lorg/jsoup/select/b$b;->a(Lorg/jsoup/select/d;)V

    .line 124
    :goto_2
    iget-object v7, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void

    .line 93
    .end local v0    # "currentEval":Lorg/jsoup/select/d;
    .end local v5    # "rootEval":Lorg/jsoup/select/d;
    :cond_1
    new-instance v0, Lorg/jsoup/select/b$a;

    iget-object v7, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    invoke-direct {v0, v7}, Lorg/jsoup/select/b$a;-><init>(Ljava/util/Collection;)V

    .restart local v0    # "currentEval":Lorg/jsoup/select/d;
    move-object v5, v0

    .restart local v5    # "rootEval":Lorg/jsoup/select/d;
    goto :goto_0

    .line 100
    :cond_2
    const/16 v7, 0x20

    if-ne p1, v7, :cond_3

    .line 101
    new-instance v1, Lorg/jsoup/select/b$a;

    new-array v7, v8, [Lorg/jsoup/select/d;

    aput-object v2, v7, v10

    new-instance v8, Lorg/jsoup/select/h$e;

    invoke-direct {v8, v0}, Lorg/jsoup/select/h$e;-><init>(Lorg/jsoup/select/d;)V

    aput-object v8, v7, v9

    invoke-direct {v1, v7}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/d;)V

    .end local v0    # "currentEval":Lorg/jsoup/select/d;
    .restart local v1    # "currentEval":Lorg/jsoup/select/d;
    move-object v0, v1

    .end local v1    # "currentEval":Lorg/jsoup/select/d;
    .restart local v0    # "currentEval":Lorg/jsoup/select/d;
    goto :goto_1

    .line 102
    :cond_3
    const/16 v7, 0x2b

    if-ne p1, v7, :cond_4

    .line 103
    new-instance v1, Lorg/jsoup/select/b$a;

    new-array v7, v8, [Lorg/jsoup/select/d;

    aput-object v2, v7, v10

    new-instance v8, Lorg/jsoup/select/h$c;

    invoke-direct {v8, v0}, Lorg/jsoup/select/h$c;-><init>(Lorg/jsoup/select/d;)V

    aput-object v8, v7, v9

    invoke-direct {v1, v7}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/d;)V

    .end local v0    # "currentEval":Lorg/jsoup/select/d;
    .restart local v1    # "currentEval":Lorg/jsoup/select/d;
    move-object v0, v1

    .end local v1    # "currentEval":Lorg/jsoup/select/d;
    .restart local v0    # "currentEval":Lorg/jsoup/select/d;
    goto :goto_1

    .line 104
    :cond_4
    const/16 v7, 0x7e

    if-ne p1, v7, :cond_5

    .line 105
    new-instance v1, Lorg/jsoup/select/b$a;

    new-array v7, v8, [Lorg/jsoup/select/d;

    aput-object v2, v7, v10

    new-instance v8, Lorg/jsoup/select/h$f;

    invoke-direct {v8, v0}, Lorg/jsoup/select/h$f;-><init>(Lorg/jsoup/select/d;)V

    aput-object v8, v7, v9

    invoke-direct {v1, v7}, Lorg/jsoup/select/b$a;-><init>([Lorg/jsoup/select/d;)V

    .end local v0    # "currentEval":Lorg/jsoup/select/d;
    .restart local v1    # "currentEval":Lorg/jsoup/select/d;
    move-object v0, v1

    .end local v1    # "currentEval":Lorg/jsoup/select/d;
    .restart local v0    # "currentEval":Lorg/jsoup/select/d;
    goto :goto_1

    .line 106
    :cond_5
    if-ne p1, v11, :cond_7

    .line 108
    instance-of v7, v0, Lorg/jsoup/select/b$b;

    if-eqz v7, :cond_6

    move-object v3, v0

    .line 109
    check-cast v3, Lorg/jsoup/select/b$b;

    .line 110
    .local v3, "or":Lorg/jsoup/select/b$b;
    invoke-virtual {v3, v2}, Lorg/jsoup/select/b$b;->b(Lorg/jsoup/select/d;)V

    .line 116
    :goto_3
    move-object v0, v3

    .line 117
    goto :goto_1

    .line 112
    .end local v3    # "or":Lorg/jsoup/select/b$b;
    :cond_6
    new-instance v3, Lorg/jsoup/select/b$b;

    invoke-direct {v3}, Lorg/jsoup/select/b$b;-><init>()V

    .line 113
    .restart local v3    # "or":Lorg/jsoup/select/b$b;
    invoke-virtual {v3, v0}, Lorg/jsoup/select/b$b;->b(Lorg/jsoup/select/d;)V

    .line 114
    invoke-virtual {v3, v2}, Lorg/jsoup/select/b$b;->b(Lorg/jsoup/select/d;)V

    goto :goto_3

    .line 119
    .end local v3    # "or":Lorg/jsoup/select/b$b;
    :cond_7
    new-instance v7, Lorg/jsoup/select/Selector$SelectorParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown combinator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .line 123
    :cond_8
    move-object v5, v0

    goto/16 :goto_2
.end method

.method private a(Z)V
    .locals 4
    .param p1, "own"    # Z

    .prologue
    .line 327
    iget-object v2, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    if-eqz p1, :cond_0

    const-string v1, ":containsOwn"

    :goto_0
    invoke-virtual {v2, v1}, Lorg/jsoup/b/i;->e(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/b/i;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/b/i;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "searchText":Ljava/lang/String;
    const-string v1, ":contains(text) query must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    if-eqz p1, :cond_1

    .line 331
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$l;

    invoke-direct {v2, v0}, Lorg/jsoup/select/d$l;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :goto_1
    return-void

    .line 327
    .end local v0    # "searchText":Ljava/lang/String;
    :cond_0
    const-string v1, ":contains"

    goto :goto_0

    .line 333
    .restart local v0    # "searchText":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$m;

    invoke-direct {v2, v0}, Lorg/jsoup/select/d$m;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(ZZ)V
    .locals 9
    .param p1, "backwards"    # Z
    .param p2, "ofType"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 279
    iget-object v5, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Lorg/jsoup/b/i;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "argS":Ljava/lang/String;
    sget-object v5, Lorg/jsoup/select/g;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 281
    .local v3, "mAB":Ljava/util/regex/Matcher;
    sget-object v5, Lorg/jsoup/select/g;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 283
    .local v4, "mB":Ljava/util/regex/Matcher;
    const-string v5, "odd"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 284
    const/4 v0, 0x2

    .line 285
    .local v0, "a":I
    const/4 v2, 0x1

    .line 298
    .local v2, "b":I
    :goto_0
    if-eqz p2, :cond_7

    .line 299
    if-eqz p1, :cond_6

    .line 300
    iget-object v5, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v6, Lorg/jsoup/select/d$aa;

    invoke-direct {v6, v0, v2}, Lorg/jsoup/select/d$aa;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :goto_1
    return-void

    .line 286
    .end local v0    # "a":I
    .end local v2    # "b":I
    :cond_0
    const-string v5, "even"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    const/4 v0, 0x2

    .line 288
    .restart local v0    # "a":I
    const/4 v2, 0x0

    .restart local v2    # "b":I
    goto :goto_0

    .line 289
    .end local v0    # "a":I
    .end local v2    # "b":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 290
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^\\+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 291
    .restart local v0    # "a":I
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^\\+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "b":I
    :cond_3
    goto :goto_0

    .line 292
    .end local v0    # "a":I
    .end local v2    # "b":I
    :cond_4
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 293
    const/4 v0, 0x0

    .line 294
    .restart local v0    # "a":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string v6, "^\\+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "b":I
    goto :goto_0

    .line 296
    .end local v0    # "a":I
    .end local v2    # "b":I
    :cond_5
    new-instance v5, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v6, "Could not parse nth-index \'%s\': unexpected format"

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v1, v7, v2

    invoke-direct {v5, v6, v7}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 302
    .restart local v0    # "a":I
    .restart local v2    # "b":I
    :cond_6
    iget-object v5, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v6, Lorg/jsoup/select/d$ab;

    invoke-direct {v6, v0, v2}, Lorg/jsoup/select/d$ab;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    :cond_7
    if-eqz p1, :cond_8

    .line 305
    iget-object v5, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v6, Lorg/jsoup/select/d$z;

    invoke-direct {v6, v0, v2}, Lorg/jsoup/select/d$z;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    :cond_8
    iget-object v5, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v6, Lorg/jsoup/select/d$y;

    invoke-direct {v6, v0, v2}, Lorg/jsoup/select/d$y;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, "sq":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const/16 v3, 0x28

    const/16 v4, 0x29

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/b/i;->a(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/b/i;->a(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    sget-object v2, Lorg/jsoup/select/g;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jsoup/b/i;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 137
    :cond_3
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->g()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4
    .param p1, "own"    # Z

    .prologue
    .line 338
    iget-object v2, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    if-eqz p1, :cond_0

    const-string v1, ":matchesOwn"

    :goto_0
    invoke-virtual {v2, v1}, Lorg/jsoup/b/i;->e(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/b/i;->a(CC)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "regex":Ljava/lang/String;
    const-string v1, ":matches(regex) query must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-eqz p1, :cond_1

    .line 343
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$ag;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/d$ag;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :goto_1
    return-void

    .line 338
    .end local v0    # "regex":Ljava/lang/String;
    :cond_0
    const-string v1, ":matches"

    goto :goto_0

    .line 345
    .restart local v0    # "regex":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$af;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/d$af;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lorg/jsoup/select/g;->d()V

    .line 198
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0}, Lorg/jsoup/select/g;->e()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v0}, Lorg/jsoup/b/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-direct {p0}, Lorg/jsoup/select/g;->f()V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    invoke-direct {p0}, Lorg/jsoup/select/g;->g()V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-direct {p0}, Lorg/jsoup/select/g;->h()V

    goto :goto_0

    .line 153
    :cond_4
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    invoke-direct {p0}, Lorg/jsoup/select/g;->i()V

    goto :goto_0

    .line 155
    :cond_5
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    invoke-direct {p0}, Lorg/jsoup/select/g;->j()V

    goto :goto_0

    .line 157
    :cond_6
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    invoke-direct {p0}, Lorg/jsoup/select/g;->k()V

    goto :goto_0

    .line 159
    :cond_7
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    invoke-direct {p0}, Lorg/jsoup/select/g;->m()V

    goto :goto_0

    .line 161
    :cond_8
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 162
    invoke-direct {p0, v4}, Lorg/jsoup/select/g;->a(Z)V

    goto :goto_0

    .line 163
    :cond_9
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":containsOwn("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 164
    invoke-direct {p0, v5}, Lorg/jsoup/select/g;->a(Z)V

    goto/16 :goto_0

    .line 165
    :cond_a
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":matches("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    invoke-direct {p0, v4}, Lorg/jsoup/select/g;->b(Z)V

    goto/16 :goto_0

    .line 167
    :cond_b
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":matchesOwn("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 168
    invoke-direct {p0, v5}, Lorg/jsoup/select/g;->b(Z)V

    goto/16 :goto_0

    .line 169
    :cond_c
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":not("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 170
    invoke-direct {p0}, Lorg/jsoup/select/g;->n()V

    goto/16 :goto_0

    .line 171
    :cond_d
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":nth-child("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 172
    invoke-direct {p0, v4, v4}, Lorg/jsoup/select/g;->a(ZZ)V

    goto/16 :goto_0

    .line 173
    :cond_e
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":nth-last-child("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 174
    invoke-direct {p0, v5, v4}, Lorg/jsoup/select/g;->a(ZZ)V

    goto/16 :goto_0

    .line 175
    :cond_f
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":nth-of-type("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 176
    invoke-direct {p0, v4, v5}, Lorg/jsoup/select/g;->a(ZZ)V

    goto/16 :goto_0

    .line 177
    :cond_10
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":nth-last-of-type("

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 178
    invoke-direct {p0, v5, v5}, Lorg/jsoup/select/g;->a(ZZ)V

    goto/16 :goto_0

    .line 179
    :cond_11
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":first-child"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 180
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$u;

    invoke-direct {v1}, Lorg/jsoup/select/d$u;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 181
    :cond_12
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":last-child"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 182
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$w;

    invoke-direct {v1}, Lorg/jsoup/select/d$w;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 183
    :cond_13
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":first-of-type"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 184
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$v;

    invoke-direct {v1}, Lorg/jsoup/select/d$v;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 185
    :cond_14
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":last-of-type"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 186
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$x;

    invoke-direct {v1}, Lorg/jsoup/select/d$x;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 187
    :cond_15
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":only-child"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 188
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$ac;

    invoke-direct {v1}, Lorg/jsoup/select/d$ac;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 189
    :cond_16
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":only-of-type"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 190
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$ad;

    invoke-direct {v1}, Lorg/jsoup/select/d$ad;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 191
    :cond_17
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":empty"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 192
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$t;

    invoke-direct {v1}, Lorg/jsoup/select/d$t;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 193
    :cond_18
    iget-object v0, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v1, ":root"

    invoke-virtual {v0, v1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 194
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$ae;

    invoke-direct {v1}, Lorg/jsoup/select/d$ae;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 196
    :cond_19
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jsoup/select/g;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v3}, Lorg/jsoup/b/i;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->l()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$o;

    invoke-direct {v2, v0}, Lorg/jsoup/select/d$o;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->l()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$k;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/d$k;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 213
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->k()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "tagName":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 217
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "|"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/d$ah;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/d$ah;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 224
    new-instance v0, Lorg/jsoup/b/i;

    iget-object v2, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/b/i;->a(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jsoup/b/i;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "cq":Lorg/jsoup/b/i;
    sget-object v2, Lorg/jsoup/select/g;->b:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jsoup/b/i;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Lorg/jsoup/b/i;->h()Z

    .line 229
    invoke-virtual {v0}, Lorg/jsoup/b/i;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$d;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jsoup/select/d$d;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v2, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$b;

    invoke-direct {v3, v1}, Lorg/jsoup/select/d$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    const-string v2, "="

    invoke-virtual {v0, v2}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$e;

    invoke-virtual {v0}, Lorg/jsoup/b/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/d$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_2
    const-string v2, "!="

    invoke-virtual {v0, v2}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    iget-object v2, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$i;

    invoke-virtual {v0}, Lorg/jsoup/b/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/d$i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_3
    const-string v2, "^="

    invoke-virtual {v0, v2}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    iget-object v2, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$j;

    invoke-virtual {v0}, Lorg/jsoup/b/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/d$j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_4
    const-string v2, "$="

    invoke-virtual {v0, v2}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 245
    iget-object v2, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$g;

    invoke-virtual {v0}, Lorg/jsoup/b/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/d$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_5
    const-string v2, "*="

    invoke-virtual {v0, v2}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 248
    iget-object v2, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$f;

    invoke-virtual {v0}, Lorg/jsoup/b/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/d$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_6
    const-string v2, "~="

    invoke-virtual {v0, v2}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 251
    iget-object v2, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/d$h;

    invoke-virtual {v0}, Lorg/jsoup/b/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/d$h;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 253
    :cond_7
    new-instance v2, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v3, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jsoup/select/g;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0}, Lorg/jsoup/b/i;->n()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private h()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$a;

    invoke-direct {v1}, Lorg/jsoup/select/d$a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$s;

    invoke-direct {p0}, Lorg/jsoup/select/g;->l()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/d$s;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$r;

    invoke-direct {p0}, Lorg/jsoup/select/g;->l()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/d$r;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/d$p;

    invoke-direct {p0}, Lorg/jsoup/select/g;->l()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/d$p;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method private l()I
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lorg/jsoup/b/i;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "indexS":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/c;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private m()V
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v2, ":has"

    invoke-virtual {v1, v2}, Lorg/jsoup/b/i;->e(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/b/i;->a(CC)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "subQuery":Ljava/lang/String;
    const-string v1, ":has(el) subselect must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/h$a;

    invoke-static {v0}, Lorg/jsoup/select/g;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/h$a;-><init>(Lorg/jsoup/select/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 350
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const-string v2, ":not"

    invoke-virtual {v1, v2}, Lorg/jsoup/b/i;->e(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/b/i;->a(CC)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "subQuery":Ljava/lang/String;
    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/h$d;

    invoke-static {v0}, Lorg/jsoup/select/g;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/h$d;-><init>(Lorg/jsoup/select/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method


# virtual methods
.method a()Lorg/jsoup/select/d;
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->h()Z

    .line 49
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    sget-object v2, Lorg/jsoup/select/g;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jsoup/b/i;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/h$g;

    invoke-direct {v2}, Lorg/jsoup/select/h$g;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->g()C

    move-result v1

    invoke-direct {p0, v1}, Lorg/jsoup/select/g;->a(C)V

    .line 56
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 58
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->h()Z

    move-result v0

    .line 60
    .local v0, "seenWhite":Z
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    sget-object v2, Lorg/jsoup/select/g;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jsoup/b/i;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lorg/jsoup/select/g;->c:Lorg/jsoup/b/i;

    invoke-virtual {v1}, Lorg/jsoup/b/i;->g()C

    move-result v1

    invoke-direct {p0, v1}, Lorg/jsoup/select/g;->a(C)V

    goto :goto_0

    .line 53
    .end local v0    # "seenWhite":Z
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/select/g;->c()V

    goto :goto_0

    .line 62
    .restart local v0    # "seenWhite":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 63
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/jsoup/select/g;->a(C)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-direct {p0}, Lorg/jsoup/select/g;->c()V

    goto :goto_0

    .line 69
    .end local v0    # "seenWhite":Z
    :cond_3
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 70
    iget-object v1, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/d;

    .line 72
    :goto_1
    return-object v1

    :cond_4
    new-instance v1, Lorg/jsoup/select/b$a;

    iget-object v2, p0, Lorg/jsoup/select/g;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/jsoup/select/b$a;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method
