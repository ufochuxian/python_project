.class public final Lcom/nineoldandroids/a/l;
.super Lcom/nineoldandroids/a/q;
.source "SourceFile"


# static fields
.field private static final p:Z

.field private static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nineoldandroids/util/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/String;

.field private t:Lcom/nineoldandroids/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "alpha"

    sget-object v2, Lcom/nineoldandroids/a/m;->a:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "pivotX"

    sget-object v2, Lcom/nineoldandroids/a/m;->b:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "pivotY"

    sget-object v2, Lcom/nineoldandroids/a/m;->c:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "translationX"

    sget-object v2, Lcom/nineoldandroids/a/m;->d:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "translationY"

    sget-object v2, Lcom/nineoldandroids/a/m;->e:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "rotation"

    sget-object v2, Lcom/nineoldandroids/a/m;->f:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "rotationX"

    sget-object v2, Lcom/nineoldandroids/a/m;->g:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "rotationY"

    sget-object v2, Lcom/nineoldandroids/a/m;->h:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "scaleX"

    sget-object v2, Lcom/nineoldandroids/a/m;->i:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "scaleY"

    sget-object v2, Lcom/nineoldandroids/a/m;->j:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "scrollX"

    sget-object v2, Lcom/nineoldandroids/a/m;->k:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "scrollY"

    sget-object v2, Lcom/nineoldandroids/a/m;->l:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "x"

    sget-object v2, Lcom/nineoldandroids/a/m;->m:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    const-string v1, "y"

    sget-object v2, Lcom/nineoldandroids/a/m;->n:Lcom/nineoldandroids/util/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nineoldandroids/a/q;-><init>()V

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<TT;*>;"
    invoke-direct {p0}, Lcom/nineoldandroids/a/q;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    .line 97
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/util/c;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/nineoldandroids/a/q;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    .line 85
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/p;[Ljava/lang/Object;)Lcom/nineoldandroids/a/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c",
            "<TT;TV;>;",
            "Lcom/nineoldandroids/a/p",
            "<TV;>;[TV;)",
            "Lcom/nineoldandroids/a/l;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<TT;TV;>;"
    .local p2, "evaluator":Lcom/nineoldandroids/a/p;, "Lcom/nineoldandroids/a/p<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Lcom/nineoldandroids/a/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/l;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V

    .line 231
    .local v0, "anim":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p3}, Lcom/nineoldandroids/a/l;->a([Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/p;)V

    .line 233
    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Lcom/nineoldandroids/util/c;[F)Lcom/nineoldandroids/a/l;
    .locals 1
    .param p2, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c",
            "<TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/nineoldandroids/a/l;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<TT;Ljava/lang/Float;>;"
    new-instance v0, Lcom/nineoldandroids/a/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/l;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V

    .line 180
    .local v0, "anim":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a([F)V

    .line 181
    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Lcom/nineoldandroids/util/c;[I)Lcom/nineoldandroids/a/l;
    .locals 1
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/nineoldandroids/a/l;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<TT;Ljava/lang/Integer;>;"
    new-instance v0, Lcom/nineoldandroids/a/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/l;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V

    .line 138
    .local v0, "anim":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a([I)V

    .line 139
    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;Lcom/nineoldandroids/a/p;[Ljava/lang/Object;)Lcom/nineoldandroids/a/l;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "evaluator"    # Lcom/nineoldandroids/a/p;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 205
    new-instance v0, Lcom/nineoldandroids/a/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .local v0, "anim":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p3}, Lcom/nineoldandroids/a/l;->a([Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/p;)V

    .line 208
    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 159
    new-instance v0, Lcom/nineoldandroids/a/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .local v0, "anim":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a([F)V

    .line 161
    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/a/l;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 117
    new-instance v0, Lcom/nineoldandroids/a/l;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .local v0, "anim":Lcom/nineoldandroids/a/l;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/l;->a([I)V

    .line 119
    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;[Lcom/nineoldandroids/a/n;)Lcom/nineoldandroids/a/l;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "values"    # [Lcom/nineoldandroids/a/n;

    .prologue
    .line 254
    new-instance v0, Lcom/nineoldandroids/a/l;

    invoke-direct {v0}, Lcom/nineoldandroids/a/l;-><init>()V

    .line 255
    .local v0, "anim":Lcom/nineoldandroids/a/l;
    iput-object p0, v0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    .line 256
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/l;->b([Lcom/nineoldandroids/a/n;)V

    .line 257
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 392
    invoke-super {p0}, Lcom/nineoldandroids/a/q;->a()V

    .line 393
    return-void
.end method

.method a(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 494
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/q;->a(F)V

    .line 495
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    array-length v1, v2

    .line 496
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 497
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/a/n;->d(Ljava/lang/Object;)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_0
    return-void
.end method

.method public a(Lcom/nineoldandroids/util/c;)V
    .locals 5
    .param p1, "property"    # Lcom/nineoldandroids/util/c;

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    aget-object v1, v2, v4

    .line 272
    .local v1, "valuesHolder":Lcom/nineoldandroids/a/n;
    invoke-virtual {v1}, Lcom/nineoldandroids/a/n;->c()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Lcom/nineoldandroids/a/n;->a(Lcom/nineoldandroids/util/c;)V

    .line 274
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->o:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nineoldandroids/a/l;->s:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Lcom/nineoldandroids/a/n;
    :cond_0
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->t:Lcom/nineoldandroids/util/c;

    if-eqz v2, :cond_1

    .line 278
    invoke-virtual {p1}, Lcom/nineoldandroids/util/c;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nineoldandroids/a/l;->s:Ljava/lang/String;

    .line 280
    :cond_1
    iput-object p1, p0, Lcom/nineoldandroids/a/l;->t:Lcom/nineoldandroids/util/c;

    .line 282
    iput-boolean v4, p0, Lcom/nineoldandroids/a/l;->m:Z

    .line 283
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 452
    iget-object v1, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    .line 454
    .local v0, "oldTarget":Ljava/lang/Object;
    iput-object p1, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    .line 455
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 461
    .end local v0    # "oldTarget":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 459
    .restart local v0    # "oldTarget":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nineoldandroids/a/l;->m:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    aget-object v1, v2, v3

    .line 325
    .local v1, "valuesHolder":Lcom/nineoldandroids/a/n;
    invoke-virtual {v1}, Lcom/nineoldandroids/a/n;->c()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->o:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Lcom/nineoldandroids/a/n;
    :cond_0
    iput-object p1, p0, Lcom/nineoldandroids/a/l;->s:Ljava/lang/String;

    .line 332
    iput-boolean v3, p0, Lcom/nineoldandroids/a/l;->m:Z

    .line 333
    return-void
.end method

.method public varargs a([F)V
    .locals 3
    .param p1, "values"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/a/l;->t:Lcom/nineoldandroids/util/c;

    if-eqz v0, :cond_1

    .line 356
    new-array v0, v1, [Lcom/nineoldandroids/a/n;

    iget-object v1, p0, Lcom/nineoldandroids/a/l;->t:Lcom/nineoldandroids/util/c;

    invoke-static {v1, p1}, Lcom/nineoldandroids/a/n;->a(Lcom/nineoldandroids/util/c;[F)Lcom/nineoldandroids/a/n;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/l;->b([Lcom/nineoldandroids/a/n;)V

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_1
    new-array v0, v1, [Lcom/nineoldandroids/a/n;

    iget-object v1, p0, Lcom/nineoldandroids/a/l;->s:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/String;[F)Lcom/nineoldandroids/a/n;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/l;->b([Lcom/nineoldandroids/a/n;)V

    goto :goto_0

    .line 361
    :cond_2
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/q;->a([F)V

    goto :goto_0
.end method

.method public varargs a([I)V
    .locals 3
    .param p1, "values"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/a/l;->t:Lcom/nineoldandroids/util/c;

    if-eqz v0, :cond_1

    .line 341
    new-array v0, v1, [Lcom/nineoldandroids/a/n;

    iget-object v1, p0, Lcom/nineoldandroids/a/l;->t:Lcom/nineoldandroids/util/c;

    invoke-static {v1, p1}, Lcom/nineoldandroids/a/n;->a(Lcom/nineoldandroids/util/c;[I)Lcom/nineoldandroids/a/n;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/l;->b([Lcom/nineoldandroids/a/n;)V

    .line 348
    :goto_0
    return-void

    .line 343
    :cond_1
    new-array v0, v1, [Lcom/nineoldandroids/a/n;

    iget-object v1, p0, Lcom/nineoldandroids/a/l;->s:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/String;[I)Lcom/nineoldandroids/a/n;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/l;->b([Lcom/nineoldandroids/a/n;)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/q;->a([I)V

    goto :goto_0
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/nineoldandroids/a/l;->t:Lcom/nineoldandroids/util/c;

    if-eqz v1, :cond_1

    .line 371
    new-array v1, v2, [Lcom/nineoldandroids/a/n;

    iget-object v2, p0, Lcom/nineoldandroids/a/l;->t:Lcom/nineoldandroids/util/c;

    check-cast v0, Lcom/nineoldandroids/a/p;

    invoke-static {v2, v0, p1}, Lcom/nineoldandroids/a/n;->a(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/p;[Ljava/lang/Object;)Lcom/nineoldandroids/a/n;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/a/l;->b([Lcom/nineoldandroids/a/n;)V

    .line 378
    :goto_0
    return-void

    .line 373
    :cond_1
    new-array v1, v2, [Lcom/nineoldandroids/a/n;

    iget-object v2, p0, Lcom/nineoldandroids/a/l;->s:Ljava/lang/String;

    check-cast v0, Lcom/nineoldandroids/a/p;

    invoke-static {v2, v0, p1}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/String;Lcom/nineoldandroids/a/p;[Ljava/lang/Object;)Lcom/nineoldandroids/a/n;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/a/l;->b([Lcom/nineoldandroids/a/n;)V

    goto :goto_0

    .line 376
    :cond_2
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/q;->a([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a_(J)Lcom/nineoldandroids/a/l;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 433
    invoke-super {p0, p1, p2}, Lcom/nineoldandroids/a/q;->d(J)Lcom/nineoldandroids/a/q;

    .line 434
    return-object p0
.end method

.method public synthetic b(J)Lcom/nineoldandroids/a/a;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/nineoldandroids/a/l;->p()Lcom/nineoldandroids/a/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(J)Lcom/nineoldandroids/a/q;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/nineoldandroids/a/a;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/nineoldandroids/a/l;->p()Lcom/nineoldandroids/a/l;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 4

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/nineoldandroids/a/l;->n()V

    .line 466
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    array-length v1, v2

    .line 467
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 468
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/a/n;->b(Ljava/lang/Object;)V

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    return-void
.end method

.method public l()V
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/nineoldandroids/a/l;->n()V

    .line 475
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    array-length v1, v2

    .line 476
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 477
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/a/n;->c(Ljava/lang/Object;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nineoldandroids/a/l;->s:Ljava/lang/String;

    return-object v0
.end method

.method n()V
    .locals 4

    .prologue
    .line 408
    iget-boolean v2, p0, Lcom/nineoldandroids/a/l;->m:Z

    if-nez v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->t:Lcom/nineoldandroids/util/c;

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    iget-object v3, p0, Lcom/nineoldandroids/a/l;->s:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    sget-object v2, Lcom/nineoldandroids/a/l;->q:Ljava/util/Map;

    iget-object v3, p0, Lcom/nineoldandroids/a/l;->s:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/util/c;

    invoke-virtual {p0, v2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/util/c;)V

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    array-length v1, v2

    .line 415
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 416
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/Object;)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_1
    invoke-super {p0}, Lcom/nineoldandroids/a/q;->n()V

    .line 420
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_2
    return-void
.end method

.method public o()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public p()Lcom/nineoldandroids/a/l;
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Lcom/nineoldandroids/a/q;->q()Lcom/nineoldandroids/a/q;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/l;

    .line 504
    .local v0, "anim":Lcom/nineoldandroids/a/l;
    return-object v0
.end method

.method public synthetic q()Lcom/nineoldandroids/a/q;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/nineoldandroids/a/l;->p()Lcom/nineoldandroids/a/l;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nineoldandroids/a/l;->r:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    if-eqz v2, :cond_0

    .line 511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nineoldandroids/a/l;->n:[Lcom/nineoldandroids/a/n;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/nineoldandroids/a/n;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
