.class public Lu/aly/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/dh$a;,
        Lu/aly/dh$b;
    }
.end annotation


# static fields
.field private static final i:I = 0x30

.field private static final j:I = 0x31

.field private static k:Landroid/content/Context;


# instance fields
.field private a:Lu/aly/h;

.field private b:Lu/aly/dj;

.field private c:Lu/aly/p;

.field private d:Z

.field private e:Z

.field private f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lu/aly/dh$a;

.field private final n:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lu/aly/dh;->a:Lu/aly/h;

    .line 43
    iput-object v2, p0, Lu/aly/dh;->b:Lu/aly/dj;

    .line 44
    iput-object v2, p0, Lu/aly/dh;->c:Lu/aly/p;

    .line 46
    iput-boolean v0, p0, Lu/aly/dh;->d:Z

    .line 47
    iput-boolean v0, p0, Lu/aly/dh;->e:Z

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/dh;->f:J

    .line 50
    const-string v0, "main_fest_mode"

    iput-object v0, p0, Lu/aly/dh;->g:Ljava/lang/String;

    .line 51
    const-string v0, "main_fest_timestamp"

    iput-object v0, p0, Lu/aly/dh;->h:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/dh;->l:Ljava/util/List;

    .line 59
    iput-object v2, p0, Lu/aly/dh;->m:Lu/aly/dh$a;

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lu/aly/dh$1;

    invoke-direct {v1, p0}, Lu/aly/dh$1;-><init>(Lu/aly/dh;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lu/aly/dh;->n:Ljava/lang/Thread;

    .line 105
    sget-object v0, Lu/aly/dh;->k:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lu/aly/dh;->a:Lu/aly/h;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lu/aly/h;

    invoke-direct {v0}, Lu/aly/h;-><init>()V

    iput-object v0, p0, Lu/aly/dh;->a:Lu/aly/h;

    .line 110
    :cond_0
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    if-nez v0, :cond_1

    .line 111
    sget-object v0, Lu/aly/dh;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/dj;->a(Landroid/content/Context;)Lu/aly/dj;

    move-result-object v0

    iput-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    .line 113
    :cond_1
    iget-object v0, p0, Lu/aly/dh;->c:Lu/aly/p;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Lu/aly/p;

    invoke-direct {v0}, Lu/aly/p;-><init>()V

    iput-object v0, p0, Lu/aly/dh;->c:Lu/aly/p;

    .line 117
    :cond_2
    iget-object v0, p0, Lu/aly/dh;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lu/aly/dh$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/dh;-><init>()V

    return-void
.end method

.method static synthetic a(Lu/aly/dh;)Lu/aly/dh$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/dh;->m:Lu/aly/dh$a;

    return-object v0
.end method

.method static synthetic a(Lu/aly/dh;Lu/aly/dh$a;)Lu/aly/dh$a;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lu/aly/dh;->m:Lu/aly/dh$a;

    return-object p1
.end method

.method public static final a(Landroid/content/Context;)Lu/aly/dh;
    .locals 1

    .prologue
    .line 127
    sput-object p0, Lu/aly/dh;->k:Landroid/content/Context;

    .line 128
    invoke-static {}, Lu/aly/dh$b;->a()Lu/aly/dh;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lu/aly/dh;Lu/aly/h;)Lu/aly/h;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lu/aly/dh;->a:Lu/aly/h;

    return-object p1
.end method

.method static synthetic a(Lu/aly/dh;Lu/aly/p;)Lu/aly/p;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lu/aly/dh;->c:Lu/aly/p;

    return-object p1
.end method

.method private a(Lu/aly/l;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/l;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lu/aly/dh;->a:Lu/aly/h;

    new-instance v1, Lu/aly/dh$13;

    invoke-direct {v1, p0}, Lu/aly/dh$13;-><init>(Lu/aly/dh;)V

    iget-object v2, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2, v2}, Lu/aly/h;->a(Lu/aly/dd;Lu/aly/l;Ljava/util/List;Ljava/util/List;)V

    .line 263
    return-void
.end method

.method static synthetic a(Lu/aly/dh;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lu/aly/dh;->d:Z

    return p1
.end method

.method static synthetic b(Lu/aly/dh;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/dh;->h()V

    return-void
.end method

.method static synthetic c(Lu/aly/dh;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/dh;->p()V

    return-void
.end method

.method static synthetic d(Lu/aly/dh;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/dh;->o()V

    return-void
.end method

.method static synthetic e(Lu/aly/dh;)Lu/aly/h;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/dh;->a:Lu/aly/h;

    return-object v0
.end method

.method static synthetic f(Lu/aly/dh;)Lu/aly/dj;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    return-object v0
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/dh;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lu/aly/dh;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/dh;->l()V

    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    iget-object v2, p0, Lu/aly/dh;->m:Lu/aly/dh$a;

    const/16 v3, 0x30

    invoke-static {v0, v1}, Lu/aly/dl;->c(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lu/aly/dh$a;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    iget-object v2, p0, Lu/aly/dh;->m:Lu/aly/dh$a;

    const/16 v3, 0x31

    invoke-static {v0, v1}, Lu/aly/dl;->d(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lu/aly/dh$a;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    return-void
.end method

.method static synthetic h(Lu/aly/dh;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/dh;->q()V

    return-void
.end method

.method static synthetic i(Lu/aly/dh;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/dh;->n()V

    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lu/aly/di;->a()Lu/aly/di;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/di;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lu/aly/dh;)Lu/aly/p;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/dh;->c:Lu/aly/p;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 283
    sget-object v0, Lu/aly/dh;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aj;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    const-string v1, "main_fest_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iput-boolean v3, p0, Lu/aly/dh;->e:Z

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    const-string v1, "main_fest_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v1, "main_fest_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    :cond_0
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 297
    sget-object v0, Lu/aly/dh;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aj;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    const-string v1, "main_fest_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 300
    const-string v1, "main_fest_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    iput-boolean v4, p0, Lu/aly/dh;->e:Z

    .line 303
    return-void
.end method

.method static synthetic k(Lu/aly/dh;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lu/aly/dh;->m()V

    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 309
    sget-object v0, Lu/aly/dh;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aj;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    const-string v1, "main_fest_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lu/aly/dh;->e:Z

    .line 311
    const-string v1, "main_fest_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/dh;->f:J

    .line 312
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 380
    .line 381
    iget-object v0, p0, Lu/aly/dh;->a:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 385
    iget-object v2, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iget-object v2, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-static {v0}, Lu/aly/bx;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 390
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v1, Lu/aly/dd;

    invoke-direct {v1}, Lu/aly/dd;-><init>()V

    iget-object v2, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lu/aly/dj;->a(Lu/aly/dd;Ljava/util/List;)V

    .line 392
    :cond_2
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lu/aly/dh;->c:Lu/aly/p;

    new-instance v1, Lu/aly/dh$4;

    invoke-direct {v1, p0}, Lu/aly/dh$4;-><init>(Lu/aly/dh;)V

    const-string v2, "__ag_of"

    invoke-virtual {v0, v1, v2}, Lu/aly/p;->a(Lu/aly/dd;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 434
    :try_start_0
    iget-object v0, p0, Lu/aly/dh;->a:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 435
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v1, Lu/aly/dh$6;

    invoke-direct {v1, p0}, Lu/aly/dh$6;-><init>(Lu/aly/dh;)V

    iget-object v2, p0, Lu/aly/dh;->a:Lu/aly/h;

    .line 442
    invoke-virtual {v2}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v2

    .line 435
    invoke-virtual {v0, v1, v2}, Lu/aly/dj;->c(Lu/aly/dd;Ljava/util/Map;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lu/aly/dh;->c:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 445
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v1, Lu/aly/dh$7;

    invoke-direct {v1, p0}, Lu/aly/dh$7;-><init>(Lu/aly/dh;)V

    iget-object v2, p0, Lu/aly/dh;->c:Lu/aly/p;

    .line 453
    invoke-virtual {v2}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v2

    .line 445
    invoke-virtual {v0, v1, v2}, Lu/aly/dj;->b(Lu/aly/dd;Ljava/util/Map;)V

    .line 455
    :cond_1
    iget-object v0, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 456
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v1, Lu/aly/dd;

    invoke-direct {v1}, Lu/aly/dd;-><init>()V

    iget-object v2, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lu/aly/dj;->a(Lu/aly/dd;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_2
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "converyMemoryToDataTable happen error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ay;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 471
    :try_start_0
    iget-object v0, p0, Lu/aly/dh;->a:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 472
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v1, Lu/aly/dh$8;

    invoke-direct {v1, p0}, Lu/aly/dh$8;-><init>(Lu/aly/dh;)V

    iget-object v2, p0, Lu/aly/dh;->a:Lu/aly/h;

    .line 475
    invoke-virtual {v2}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v2

    .line 472
    invoke-virtual {v0, v1, v2}, Lu/aly/dj;->a(Lu/aly/dd;Ljava/util/Map;)V

    .line 477
    :cond_0
    iget-object v0, p0, Lu/aly/dh;->c:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 478
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v1, Lu/aly/dh$9;

    invoke-direct {v1, p0}, Lu/aly/dh$9;-><init>(Lu/aly/dh;)V

    iget-object v2, p0, Lu/aly/dh;->c:Lu/aly/p;

    .line 486
    invoke-virtual {v2}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v2

    .line 478
    invoke-virtual {v0, v1, v2}, Lu/aly/dj;->b(Lu/aly/dd;Ljava/util/Map;)V

    .line 488
    :cond_1
    iget-object v0, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 489
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v1, Lu/aly/dd;

    invoke-direct {v1}, Lu/aly/dd;-><init>()V

    iget-object v2, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lu/aly/dj;->a(Lu/aly/dd;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_2
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertMemoryToCacheTable happen error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ay;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    invoke-virtual {v0}, Lu/aly/dj;->b()Ljava/util/List;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_0

    .line 503
    iput-object v0, p0, Lu/aly/dh;->l:Ljava/util/List;

    .line 506
    :cond_0
    return-void
.end method


# virtual methods
.method public a(JJLjava/lang/String;)V
    .locals 9

    .prologue
    .line 417
    iget-object v1, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v2, Lu/aly/dh$5;

    invoke-direct {v2, p0}, Lu/aly/dh$5;-><init>(Lu/aly/dh;)V

    move-object v3, p5

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lu/aly/dj;->a(Lu/aly/dd;Ljava/lang/String;JJ)V

    .line 425
    return-void
.end method

.method public a(Lu/aly/dd;)V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lu/aly/dh;->d:Z

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Lu/aly/dh$10;

    invoke-direct {v0, p0, p1}, Lu/aly/dh$10;-><init>(Lu/aly/dh;Lu/aly/dd;)V

    invoke-static {v0}, Lu/aly/az;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lu/aly/dd;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/dd;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lu/aly/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lu/aly/l;

    .line 196
    invoke-virtual {v0}, Lu/aly/l;->a()Ljava/util/List;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 198
    iget-object v2, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-static {v1}, Lu/aly/bx;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v1, p0, Lu/aly/dh;->a:Lu/aly/h;

    new-instance v2, Lu/aly/dh$11;

    invoke-direct {v2, p0, p1}, Lu/aly/dh$11;-><init>(Lu/aly/dh;Lu/aly/dd;)V

    invoke-virtual {v1, v2, v0}, Lu/aly/h;->a(Lu/aly/dd;Lu/aly/l;)V

    .line 243
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-boolean v2, p0, Lu/aly/dh;->e:Z

    if-eqz v2, :cond_1

    .line 214
    invoke-direct {p0, v0, v1}, Lu/aly/dh;->a(Lu/aly/l;Ljava/util/List;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-direct {p0}, Lu/aly/dh;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    invoke-static {v1}, Lu/aly/bx;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 222
    iget-object v3, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    iget-object v3, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    iget-object v2, p0, Lu/aly/dh;->a:Lu/aly/h;

    new-instance v3, Lu/aly/dh$12;

    invoke-direct {v3, p0}, Lu/aly/dh$12;-><init>(Lu/aly/dh;)V

    invoke-virtual {v2, v3, v1, v0}, Lu/aly/h;->a(Lu/aly/dd;Ljava/util/List;Lu/aly/l;)V

    goto :goto_0

    .line 238
    :cond_3
    invoke-direct {p0, v0, v1}, Lu/aly/dh;->a(Lu/aly/l;Ljava/util/List;)V

    .line 240
    invoke-direct {p0}, Lu/aly/dh;->j()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lu/aly/dh;->d:Z

    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 317
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    invoke-virtual {v0}, Lu/aly/dj;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 318
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 319
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 320
    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 322
    :cond_1
    iget-object v0, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 326
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 330
    goto :goto_0
.end method

.method public b(Lu/aly/dd;)V
    .locals 4

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    iget-boolean v1, p0, Lu/aly/dh;->e:Z

    if-eqz v1, :cond_1

    .line 354
    iget-wide v0, p0, Lu/aly/dh;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lu/aly/dh;->l()V

    .line 357
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/dh;->f:J

    invoke-static {v0, v1, v2, v3}, Lu/aly/dl;->a(JJ)Z

    move-result v0

    .line 359
    :cond_1
    if-nez v0, :cond_2

    .line 360
    invoke-direct {p0}, Lu/aly/dh;->k()V

    .line 361
    iget-object v1, p0, Lu/aly/dh;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 364
    :cond_2
    iget-object v1, p0, Lu/aly/dh;->c:Lu/aly/p;

    invoke-virtual {v1}, Lu/aly/p;->b()V

    .line 365
    iget-object v1, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v2, Lu/aly/dh$3;

    invoke-direct {v2, p0}, Lu/aly/dh$3;-><init>(Lu/aly/dh;)V

    invoke-virtual {v1, v2, v0}, Lu/aly/dj;->a(Lu/aly/dd;Z)V

    .line 374
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lu/aly/dh;->c:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v1, Lu/aly/dh$2;

    invoke-direct {v1, p0}, Lu/aly/dh$2;-><init>(Lu/aly/dh;)V

    iget-object v2, p0, Lu/aly/dh;->c:Lu/aly/p;

    .line 342
    invoke-virtual {v2}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v2

    .line 335
    invoke-virtual {v0, v1, v2}, Lu/aly/dj;->b(Lu/aly/dd;Ljava/util/Map;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lu/aly/dh;->b:Lu/aly/dj;

    new-instance v1, Lu/aly/dd;

    invoke-direct {v1}, Lu/aly/dd;-><init>()V

    invoke-virtual {v0, v1}, Lu/aly/dj;->b(Lu/aly/dd;)Lorg/json/JSONObject;

    move-result-object v0

    .line 345
    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Lu/aly/dh;->p()V

    .line 510
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Lu/aly/dh;->p()V

    .line 514
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lu/aly/dh;->p()V

    .line 518
    return-void
.end method
