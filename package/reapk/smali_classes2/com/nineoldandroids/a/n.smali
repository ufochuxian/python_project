.class public Lcom/nineoldandroids/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/a/n$a;,
        Lcom/nineoldandroids/a/n$b;
    }
.end annotation


# static fields
.field private static final h:Lcom/nineoldandroids/a/p;

.field private static final i:Lcom/nineoldandroids/a/p;

.field private static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static l:[Ljava/lang/Class;

.field private static m:[Ljava/lang/Class;

.field private static n:[Ljava/lang/Class;


# instance fields
.field final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field final b:[Ljava/lang/Object;

.field protected c:Lcom/nineoldandroids/util/c;

.field d:Ljava/lang/String;

.field e:Ljava/lang/reflect/Method;

.field f:Ljava/lang/Class;

.field g:Lcom/nineoldandroids/a/k;

.field private o:Ljava/lang/reflect/Method;

.field private p:Lcom/nineoldandroids/a/p;

.field private q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/nineoldandroids/a/h;

    invoke-direct {v0}, Lcom/nineoldandroids/a/h;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/n;->h:Lcom/nineoldandroids/a/p;

    .line 40
    new-instance v0, Lcom/nineoldandroids/a/f;

    invoke-direct {v0}, Lcom/nineoldandroids/a/f;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/n;->i:Lcom/nineoldandroids/a/p;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/n;->j:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/n;->k:Ljava/util/HashMap;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nineoldandroids/a/n;->l:[Ljava/lang/Class;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nineoldandroids/a/n;->m:[Ljava/lang/Class;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nineoldandroids/a/n;->n:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Lcom/nineoldandroids/util/c;)V
    .locals 2
    .param p1, "property"    # Lcom/nineoldandroids/util/c;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->b:[Ljava/lang/Object;

    .line 77
    iput-object v1, p0, Lcom/nineoldandroids/a/n;->e:Ljava/lang/reflect/Method;

    .line 86
    iput-object v1, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    .line 94
    iput-object v1, p0, Lcom/nineoldandroids/a/n;->o:Ljava/lang/reflect/Method;

    .line 125
    iput-object p1, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/nineoldandroids/util/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    .line 129
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/n$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nineoldandroids/util/c;
    .param p2, "x1"    # Lcom/nineoldandroids/a/n$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nineoldandroids/a/n;-><init>(Lcom/nineoldandroids/util/c;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->b:[Ljava/lang/Object;

    .line 77
    iput-object v1, p0, Lcom/nineoldandroids/a/n;->e:Ljava/lang/reflect/Method;

    .line 86
    iput-object v1, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    .line 94
    iput-object v1, p0, Lcom/nineoldandroids/a/n;->o:Ljava/lang/reflect/Method;

    .line 116
    iput-object p1, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/a/n$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/nineoldandroids/a/n$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nineoldandroids/a/n;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/p;[Ljava/lang/Object;)Lcom/nineoldandroids/a/n;
    .locals 1
    .param p0, "property"    # Lcom/nineoldandroids/util/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nineoldandroids/util/c;",
            "Lcom/nineoldandroids/a/p",
            "<TV;>;[TV;)",
            "Lcom/nineoldandroids/a/n;"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "evaluator":Lcom/nineoldandroids/a/p;, "Lcom/nineoldandroids/a/p<TV;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Lcom/nineoldandroids/a/n;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/a/n;-><init>(Lcom/nineoldandroids/util/c;)V

    .line 220
    .local v0, "pvh":Lcom/nineoldandroids/a/n;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/n;->a([Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/n;->a(Lcom/nineoldandroids/a/p;)V

    .line 222
    return-object v0
.end method

.method public static varargs a(Lcom/nineoldandroids/util/c;[F)Lcom/nineoldandroids/a/n;
    .locals 1
    .param p1, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nineoldandroids/util/c",
            "<*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/nineoldandroids/a/n;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "property":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<*Ljava/lang/Float;>;"
    new-instance v0, Lcom/nineoldandroids/a/n$a;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/n$a;-><init>(Lcom/nineoldandroids/util/c;[F)V

    return-object v0
.end method

.method public static varargs a(Lcom/nineoldandroids/util/c;[I)Lcom/nineoldandroids/a/n;
    .locals 1
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nineoldandroids/util/c",
            "<*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/nineoldandroids/a/n;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "property":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<*Ljava/lang/Integer;>;"
    new-instance v0, Lcom/nineoldandroids/a/n$b;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/n$b;-><init>(Lcom/nineoldandroids/util/c;[I)V

    return-object v0
.end method

.method public static varargs a(Lcom/nineoldandroids/util/c;[Lcom/nineoldandroids/a/j;)Lcom/nineoldandroids/a/n;
    .locals 3
    .param p0, "property"    # Lcom/nineoldandroids/util/c;
    .param p1, "values"    # [Lcom/nineoldandroids/a/j;

    .prologue
    .line 276
    invoke-static {p1}, Lcom/nineoldandroids/a/k;->a([Lcom/nineoldandroids/a/j;)Lcom/nineoldandroids/a/k;

    move-result-object v0

    .line 277
    .local v0, "keyframeSet":Lcom/nineoldandroids/a/k;
    instance-of v2, v0, Lcom/nineoldandroids/a/i;

    if-eqz v2, :cond_0

    .line 278
    new-instance v1, Lcom/nineoldandroids/a/n$b;

    check-cast v0, Lcom/nineoldandroids/a/i;

    .end local v0    # "keyframeSet":Lcom/nineoldandroids/a/k;
    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/a/n$b;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/i;)V

    .line 285
    :goto_0
    return-object v1

    .line 279
    .restart local v0    # "keyframeSet":Lcom/nineoldandroids/a/k;
    :cond_0
    instance-of v2, v0, Lcom/nineoldandroids/a/g;

    if-eqz v2, :cond_1

    .line 280
    new-instance v1, Lcom/nineoldandroids/a/n$a;

    check-cast v0, Lcom/nineoldandroids/a/g;

    .end local v0    # "keyframeSet":Lcom/nineoldandroids/a/k;
    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/a/n$a;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/g;)V

    goto :goto_0

    .line 282
    .restart local v0    # "keyframeSet":Lcom/nineoldandroids/a/k;
    :cond_1
    new-instance v1, Lcom/nineoldandroids/a/n;

    invoke-direct {v1, p0}, Lcom/nineoldandroids/a/n;-><init>(Lcom/nineoldandroids/util/c;)V

    .line 283
    .local v1, "pvh":Lcom/nineoldandroids/a/n;
    iput-object v0, v1, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    .line 284
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/nineoldandroids/a/j;->e()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Lcom/nineoldandroids/a/p;[Ljava/lang/Object;)Lcom/nineoldandroids/a/n;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "evaluator"    # Lcom/nineoldandroids/a/p;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 198
    new-instance v0, Lcom/nineoldandroids/a/n;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/a/n;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "pvh":Lcom/nineoldandroids/a/n;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/n;->a([Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/n;->a(Lcom/nineoldandroids/a/p;)V

    .line 201
    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[F)Lcom/nineoldandroids/a/n;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [F

    .prologue
    .line 167
    new-instance v0, Lcom/nineoldandroids/a/n$a;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/n$a;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[I)Lcom/nineoldandroids/a/n;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 141
    new-instance v0, Lcom/nineoldandroids/a/n$b;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/n$b;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Lcom/nineoldandroids/a/j;)Lcom/nineoldandroids/a/n;
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [Lcom/nineoldandroids/a/j;

    .prologue
    .line 246
    invoke-static {p1}, Lcom/nineoldandroids/a/k;->a([Lcom/nineoldandroids/a/j;)Lcom/nineoldandroids/a/k;

    move-result-object v0

    .line 247
    .local v0, "keyframeSet":Lcom/nineoldandroids/a/k;
    instance-of v2, v0, Lcom/nineoldandroids/a/i;

    if-eqz v2, :cond_0

    .line 248
    new-instance v1, Lcom/nineoldandroids/a/n$b;

    check-cast v0, Lcom/nineoldandroids/a/i;

    .end local v0    # "keyframeSet":Lcom/nineoldandroids/a/k;
    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/a/n$b;-><init>(Ljava/lang/String;Lcom/nineoldandroids/a/i;)V

    .line 255
    :goto_0
    return-object v1

    .line 249
    .restart local v0    # "keyframeSet":Lcom/nineoldandroids/a/k;
    :cond_0
    instance-of v2, v0, Lcom/nineoldandroids/a/g;

    if-eqz v2, :cond_1

    .line 250
    new-instance v1, Lcom/nineoldandroids/a/n$a;

    check-cast v0, Lcom/nineoldandroids/a/g;

    .end local v0    # "keyframeSet":Lcom/nineoldandroids/a/k;
    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/a/n$a;-><init>(Ljava/lang/String;Lcom/nineoldandroids/a/g;)V

    goto :goto_0

    .line 252
    .restart local v0    # "keyframeSet":Lcom/nineoldandroids/a/k;
    :cond_1
    new-instance v1, Lcom/nineoldandroids/a/n;

    invoke-direct {v1, p0}, Lcom/nineoldandroids/a/n;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, "pvh":Lcom/nineoldandroids/a/n;
    iput-object v0, v1, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    .line 254
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/nineoldandroids/a/j;->e()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 310
    .end local p0    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 308
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 309
    .local v0, "firstLetter":C
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "theRest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 12
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "valueType"    # Ljava/lang/Class;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 398
    const/4 v4, 0x0

    .line 399
    .local v4, "returnVal":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    invoke-static {p2, v8}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "methodName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 401
    .local v0, "args":[Ljava/lang/Class;
    if-nez p3, :cond_0

    .line 403
    :try_start_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 456
    .end local v4    # "returnVal":Ljava/lang/reflect/Method;
    .local v5, "returnVal":Ljava/lang/reflect/Method;
    :goto_1
    return-object v5

    .line 404
    .end local v5    # "returnVal":Ljava/lang/reflect/Method;
    .restart local v4    # "returnVal":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 411
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 412
    :catch_1
    move-exception v2

    .line 413
    .local v2, "e2":Ljava/lang/NoSuchMethodException;
    const-string v8, "PropertyValuesHolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find no-arg method for property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "e2":Ljava/lang/NoSuchMethodException;
    :cond_0
    new-array v0, v11, [Ljava/lang/Class;

    .line 419
    iget-object v8, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    const-class v10, Ljava/lang/Float;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 420
    sget-object v7, Lcom/nineoldandroids/a/n;->l:[Ljava/lang/Class;

    .line 429
    .local v7, "typeVariants":[Ljava/lang/Class;
    :goto_2
    array-length v10, v7

    move v8, v9

    :goto_3
    if-ge v8, v10, :cond_4

    aget-object v6, v7, v8

    .line 430
    .local v6, "typeVariant":Ljava/lang/Class;
    aput-object v6, v0, v9

    .line 432
    :try_start_2
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 434
    iput-object v6, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v4

    .line 435
    .end local v4    # "returnVal":Ljava/lang/reflect/Method;
    .restart local v5    # "returnVal":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 421
    .end local v5    # "returnVal":Ljava/lang/reflect/Method;
    .end local v6    # "typeVariant":Ljava/lang/Class;
    .end local v7    # "typeVariants":[Ljava/lang/Class;
    .restart local v4    # "returnVal":Ljava/lang/reflect/Method;
    :cond_1
    iget-object v8, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 422
    sget-object v7, Lcom/nineoldandroids/a/n;->m:[Ljava/lang/Class;

    .restart local v7    # "typeVariants":[Ljava/lang/Class;
    goto :goto_2

    .line 423
    .end local v7    # "typeVariants":[Ljava/lang/Class;
    :cond_2
    iget-object v8, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    const-class v10, Ljava/lang/Double;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 424
    sget-object v7, Lcom/nineoldandroids/a/n;->n:[Ljava/lang/Class;

    .restart local v7    # "typeVariants":[Ljava/lang/Class;
    goto :goto_2

    .line 426
    .end local v7    # "typeVariants":[Ljava/lang/Class;
    :cond_3
    new-array v7, v11, [Ljava/lang/Class;

    .line 427
    .restart local v7    # "typeVariants":[Ljava/lang/Class;
    iget-object v8, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    aput-object v8, v7, v9

    goto :goto_2

    .line 436
    .restart local v6    # "typeVariant":Ljava/lang/Class;
    :catch_2
    move-exception v1

    .line 442
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    :try_start_3
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 443
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 445
    iput-object v6, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v4

    .line 446
    .end local v4    # "returnVal":Ljava/lang/reflect/Method;
    .restart local v5    # "returnVal":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 447
    .end local v5    # "returnVal":Ljava/lang/reflect/Method;
    .restart local v4    # "returnVal":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v11

    .line 429
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 453
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v6    # "typeVariant":Ljava/lang/Class;
    :cond_4
    const-string v8, "PropertyValuesHolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find setter/getter for property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with value type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "valueType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "propertyMapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    const/4 v2, 0x0

    .line 479
    .local v2, "setterOrGetter":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v3, p0, Lcom/nineoldandroids/a/n;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 480
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 481
    .local v1, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-eqz v1, :cond_0

    .line 482
    iget-object v3, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v2, v0

    .line 484
    :cond_0
    if-nez v2, :cond_2

    .line 485
    invoke-direct {p0, p1, p3, p4}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 486
    if-nez v1, :cond_1

    .line 487
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 488
    .restart local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_1
    iget-object v3, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_2
    iget-object v3, p0, Lcom/nineoldandroids/a/n;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 495
    return-object v2

    .line 493
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/nineoldandroids/a/n;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 494
    throw v3
.end method

.method private a(Ljava/lang/Object;Lcom/nineoldandroids/a/j;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "kf"    # Lcom/nineoldandroids/a/j;

    .prologue
    .line 571
    iget-object v2, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    invoke-virtual {v2, p1}, Lcom/nineoldandroids/util/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/nineoldandroids/a/j;->a(Ljava/lang/Object;)V

    .line 575
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/nineoldandroids/a/n;->o:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 576
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 577
    .local v1, "targetClass":Ljava/lang/Class;
    invoke-direct {p0, v1}, Lcom/nineoldandroids/a/n;->b(Ljava/lang/Class;)V

    .line 579
    .end local v1    # "targetClass":Ljava/lang/Class;
    :cond_1
    iget-object v2, p0, Lcom/nineoldandroids/a/n;->o:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/nineoldandroids/a/j;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 511
    sget-object v0, Lcom/nineoldandroids/a/n;->k:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->o:Ljava/lang/reflect/Method;

    .line 512
    return-void
.end method


# virtual methods
.method public a()Lcom/nineoldandroids/a/n;
    .locals 3

    .prologue
    .line 614
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/n;

    .line 615
    .local v1, "newPVH":Lcom/nineoldandroids/a/n;
    iget-object v2, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    .line 616
    iget-object v2, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    iput-object v2, v1, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    .line 617
    iget-object v2, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/k;->b()Lcom/nineoldandroids/a/k;

    move-result-object v2

    iput-object v2, v1, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    .line 618
    iget-object v2, p0, Lcom/nineoldandroids/a/n;->p:Lcom/nineoldandroids/a/p;

    iput-object v2, v1, Lcom/nineoldandroids/a/n;->p:Lcom/nineoldandroids/a/p;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v1    # "newPVH":Lcom/nineoldandroids/a/n;
    :goto_0
    return-object v1

    .line 620
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method a(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 665
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/k;->a(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->q:Ljava/lang/Object;

    .line 666
    return-void
.end method

.method public a(Lcom/nineoldandroids/a/p;)V
    .locals 1
    .param p1, "evaluator"    # Lcom/nineoldandroids/a/p;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/nineoldandroids/a/n;->p:Lcom/nineoldandroids/a/p;

    .line 655
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/k;->a(Lcom/nineoldandroids/a/p;)V

    .line 656
    return-void
.end method

.method public a(Lcom/nineoldandroids/util/c;)V
    .locals 0
    .param p1, "property"    # Lcom/nineoldandroids/util/c;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    .line 677
    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 504
    sget-object v0, Lcom/nineoldandroids/a/n;->j:Ljava/util/HashMap;

    const-string v1, "set"

    iget-object v2, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->e:Ljava/lang/reflect/Method;

    .line 505
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 526
    iget-object v4, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    if-eqz v4, :cond_1

    .line 529
    :try_start_0
    iget-object v4, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    invoke-virtual {v4, p1}, Lcom/nineoldandroids/util/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 530
    .local v3, "testValue":Ljava/lang/Object;
    iget-object v4, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    iget-object v4, v4, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/j;

    .line 531
    .local v1, "kf":Lcom/nineoldandroids/a/j;
    invoke-virtual {v1}, Lcom/nineoldandroids/a/j;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 532
    iget-object v5, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    invoke-virtual {v5, p1}, Lcom/nineoldandroids/util/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/nineoldandroids/a/j;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    .end local v1    # "kf":Lcom/nineoldandroids/a/j;
    .end local v3    # "testValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "PropertyValuesHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such property ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    invoke-virtual {v6}, Lcom/nineoldandroids/util/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") on target object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Trying reflection instead"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    .line 542
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 543
    .local v2, "targetClass":Ljava/lang/Class;
    iget-object v4, p0, Lcom/nineoldandroids/a/n;->e:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 544
    invoke-virtual {p0, v2}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/Class;)V

    .line 546
    :cond_2
    iget-object v4, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    iget-object v4, v4, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/j;

    .line 547
    .restart local v1    # "kf":Lcom/nineoldandroids/a/j;
    invoke-virtual {v1}, Lcom/nineoldandroids/a/j;->a()Z

    move-result v5

    if-nez v5, :cond_3

    .line 548
    iget-object v5, p0, Lcom/nineoldandroids/a/n;->o:Ljava/lang/reflect/Method;

    if-nez v5, :cond_4

    .line 549
    invoke-direct {p0, v2}, Lcom/nineoldandroids/a/n;->b(Ljava/lang/Class;)V

    .line 552
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/nineoldandroids/a/n;->o:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/nineoldandroids/a/j;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 553
    :catch_1
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 555
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 560
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "kf":Lcom/nineoldandroids/a/j;
    .end local v2    # "targetClass":Ljava/lang/Class;
    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    .line 707
    return-void
.end method

.method public varargs a([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 343
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    .line 344
    invoke-static {p1}, Lcom/nineoldandroids/a/k;->a([F)Lcom/nineoldandroids/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    .line 345
    return-void
.end method

.method public varargs a([I)V
    .locals 1
    .param p1, "values"    # [I

    .prologue
    .line 326
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    .line 327
    invoke-static {p1}, Lcom/nineoldandroids/a/k;->a([I)Lcom/nineoldandroids/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    .line 328
    return-void
.end method

.method public varargs a([Lcom/nineoldandroids/a/j;)V
    .locals 4
    .param p1, "values"    # [Lcom/nineoldandroids/a/j;

    .prologue
    .line 353
    array-length v2, p1

    .line 354
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/nineoldandroids/a/j;

    .line 355
    .local v1, "keyframes":[Lcom/nineoldandroids/a/j;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/nineoldandroids/a/j;->e()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 357
    aget-object v3, p1, v0

    aput-object v3, v1, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    new-instance v3, Lcom/nineoldandroids/a/k;

    invoke-direct {v3, v1}, Lcom/nineoldandroids/a/k;-><init>([Lcom/nineoldandroids/a/j;)V

    iput-object v3, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    .line 360
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 375
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    .line 376
    invoke-static {p1}, Lcom/nineoldandroids/a/k;->a([Ljava/lang/Object;)Lcom/nineoldandroids/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    .line 377
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->p:Lcom/nineoldandroids/a/p;

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/nineoldandroids/a/n;->h:Lcom/nineoldandroids/a/p;

    :goto_0
    iput-object v0, p0, Lcom/nineoldandroids/a/n;->p:Lcom/nineoldandroids/a/p;

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->p:Lcom/nineoldandroids/a/p;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    iget-object v1, p0, Lcom/nineoldandroids/a/n;->p:Lcom/nineoldandroids/a/p;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/k;->a(Lcom/nineoldandroids/a/p;)V

    .line 641
    :cond_1
    return-void

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->f:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/nineoldandroids/a/n;->i:Lcom/nineoldandroids/a/p;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    iget-object v0, v0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/j;

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/Object;Lcom/nineoldandroids/a/j;)V

    .line 597
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    iget-object v0, v0, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    iget-object v1, v1, Lcom/nineoldandroids/a/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/j;

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/Object;Lcom/nineoldandroids/a/j;)V

    .line 609
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/nineoldandroids/a/n;->a()Lcom/nineoldandroids/a/n;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/nineoldandroids/a/n;->q:Ljava/lang/Object;

    return-object v0
.end method

.method d(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 727
    iget-object v1, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    if-eqz v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/nineoldandroids/a/n;->c:Lcom/nineoldandroids/util/c;

    invoke-virtual {p0}, Lcom/nineoldandroids/a/n;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/nineoldandroids/a/n;->e:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/nineoldandroids/a/n;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nineoldandroids/a/n;->d()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 733
    iget-object v1, p0, Lcom/nineoldandroids/a/n;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nineoldandroids/a/n;->b:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 740
    :cond_1
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nineoldandroids/a/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nineoldandroids/a/n;->g:Lcom/nineoldandroids/a/k;

    invoke-virtual {v1}, Lcom/nineoldandroids/a/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
