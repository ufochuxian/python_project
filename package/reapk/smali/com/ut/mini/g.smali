.class public Lcom/ut/mini/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/g$a;
    }
.end annotation


# static fields
.field private static b:Lcom/ut/mini/g;


# instance fields
.field private a:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/ut/mini/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/ut/mini/g;

    invoke-direct {v0}, Lcom/ut/mini/g;-><init>()V

    sput-object v0, Lcom/ut/mini/g;->b:Lcom/ut/mini/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/g;->a:Z

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/g;->c:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    .line 191
    iput-object v1, p0, Lcom/ut/mini/g;->e:Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;

    .line 193
    iput-object v1, p0, Lcom/ut/mini/g;->g:Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/g;->h:Ljava/util/Queue;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/g;->i:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/ut/mini/g;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/ut/mini/g;->b:Lcom/ut/mini/g;

    return-object v0
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 741
    if-eqz p0, :cond_1

    .line 742
    const-string v0, "ttid"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_1

    .line 744
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 745
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 746
    const-string v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 754
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/ut/mini/g$a;)V
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/ut/mini/g$a;)V
    .locals 2

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ut/mini/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ut/mini/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_0
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    .line 274
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 275
    check-cast v0, Ljava/lang/String;

    .line 279
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized g(Ljava/lang/Object;)Lcom/ut/mini/g$a;
    .locals 3

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 307
    iget-object v0, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/g$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :goto_0
    monitor-exit p0

    return-object v0

    .line 310
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/g$a;

    invoke-direct {v0}, Lcom/ut/mini/g$a;-><init>()V

    .line 311
    iget-object v2, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {v0, v1}, Lcom/ut/mini/g$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 759
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 763
    :cond_0
    return-object v0
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 1
    .param p1, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/ut/mini/g;->a:Z

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/g;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method declared-synchronized a(Lcom/ut/mini/g$a;)V
    .locals 4

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/ut/mini/g$a;->b()V

    .line 226
    iget-object v0, p0, Lcom/ut/mini/g;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/ut/mini/g;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/g;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    .line 230
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x64

    if-ge v1, v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/ut/mini/g;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/g$a;

    .line 232
    if-eqz v0, :cond_1

    .line 233
    iget-object v2, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ut/mini/g$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/ut/mini/g;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ut/mini/g$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 239
    :cond_2
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aUrl"    # Landroid/net/Uri;

    .prologue
    .line 492
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 498
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 495
    :cond_1
    :try_start_0
    const-string v0, "url"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->g(Ljava/lang/Object;)Lcom/ut/mini/g$a;

    move-result-object v0

    .line 497
    invoke-virtual {v0, p2}, Lcom/ut/mini/g$a;->a(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageStatus"    # Lcom/ut/mini/UTPageStatus;

    .prologue
    .line 502
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 507
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 505
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->g(Ljava/lang/Object;)Lcom/ut/mini/g$a;

    move-result-object v0

    .line 506
    invoke-virtual {v0, p2}, Lcom/ut/mini/g$a;->a(Lcom/ut/mini/UTPageStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aCustomPageName"    # Ljava/lang/String;

    .prologue
    .line 429
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/ut/mini/g;->a(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 349
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 351
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ut/mini/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    :goto_0
    monitor-exit p0

    return-void

    .line 358
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ut/mini/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 359
    const-string v0, "lost 2001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last page requires leave("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ut/mini/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    :cond_1
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->g(Ljava/lang/Object;)Lcom/ut/mini/g$a;

    move-result-object v1

    .line 365
    if-nez p3, :cond_2

    invoke-virtual {v1}, Lcom/ut/mini/g$a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    const-string v0, "skip page[pageAppear]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/ut/mini/a/a;->d()Lcom/ut/mini/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/a/a;->e()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 373
    if-eqz v0, :cond_3

    .line 377
    :try_start_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 378
    const-string v2, "spm"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    iget-object v2, p0, Lcom/ut/mini/g;->c:Ljava/util/Map;

    const-string v3, "spm"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/ut/mini/a/a;->d()Lcom/ut/mini/a/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ut/mini/a/a;->a(Ljava/lang/String;)V

    .line 387
    :cond_3
    invoke-static {p1}, Lcom/ut/mini/g;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, p2

    .line 392
    :cond_4
    invoke-virtual {v1}, Lcom/ut/mini/g$a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 393
    invoke-virtual {v1}, Lcom/ut/mini/g$a;->m()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_5
    iput-object v0, p0, Lcom/ut/mini/g;->g:Ljava/lang/String;

    .line 396
    invoke-virtual {v1, v0}, Lcom/ut/mini/g$a;->b(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ut/mini/g$a;->a(J)V

    .line 398
    invoke-static {}, Lcom/ut/mini/a/a;->d()Lcom/ut/mini/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ut/mini/g$a;->c(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1}, Lcom/ut/mini/g$a;->g()V

    .line 401
    iget-object v0, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 402
    invoke-virtual {v1}, Lcom/ut/mini/g$a;->j()Ljava/util/Map;

    move-result-object v0

    .line 404
    if-nez v0, :cond_7

    .line 405
    iget-object v0, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/ut/mini/g$a;->a(Ljava/util/Map;)V

    .line 413
    :cond_6
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;

    .line 414
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/mini/g;->e:Ljava/lang/String;

    .line 418
    invoke-direct {p0, v1}, Lcom/ut/mini/g;->b(Lcom/ut/mini/g$a;)V

    .line 420
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ut/mini/g;->a(Ljava/lang/String;Lcom/ut/mini/g$a;)V

    goto/16 :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 407
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 408
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 409
    iget-object v0, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 410
    invoke-virtual {v1, v2}, Lcom/ut/mini/g$a;->a(Ljava/util/Map;)V

    goto :goto_2

    .line 423
    :cond_8
    const-string v0, "pageAppear"

    const-string v1, "The page object should not be null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method declared-synchronized a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p2, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    const-string v0, "updatePageProperties"

    const-string v1, "failed to update project, parameters should not be null and the map should not be empty"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :goto_0
    monitor-exit p0

    return-void

    .line 460
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 461
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 462
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->g(Ljava/lang/Object;)Lcom/ut/mini/g$a;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Lcom/ut/mini/g$a;->j()Ljava/util/Map;

    move-result-object v2

    .line 464
    if-nez v2, :cond_2

    .line 465
    invoke-virtual {v1, v0}, Lcom/ut/mini/g$a;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 467
    :cond_2
    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 468
    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 469
    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 470
    invoke-virtual {v1, v3}, Lcom/ut/mini/g$a;->a(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 441
    .local p1, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_0
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 284
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 285
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->g(Ljava/lang/Object;)Lcom/ut/mini/g$a;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/ut/mini/g$a;->i()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/ut/mini/g$a;->i()Lcom/ut/mini/UTPageStatus;

    move-result-object v0

    sget-object v1, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 292
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 211
    iget-object v1, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/app/Activity;)V
    .locals 1
    .param p1, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/ut/mini/g;->a:Z

    if-eqz v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/g;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method declared-synchronized b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 296
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 297
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->g(Ljava/lang/Object;)Lcom/ut/mini/g$a;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/ut/mini/g$a;->i()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/ut/mini/g$a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageName"    # Ljava/lang/String;

    .prologue
    .line 483
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 486
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->g(Ljava/lang/Object;)Lcom/ut/mini/g$a;

    move-result-object v0

    .line 487
    invoke-virtual {v0, p2}, Lcom/ut/mini/g$a;->b(Ljava/lang/String;)V

    .line 488
    iput-object p2, p0, Lcom/ut/mini/g;->g:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 511
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 512
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 513
    iput-object v0, p0, Lcom/ut/mini/g;->f:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_0
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ut/mini/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/ut/mini/g;->a(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ut/mini/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized d(Ljava/lang/Object;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 525
    monitor-enter p0

    if-nez p1, :cond_0

    .line 531
    :goto_0
    monitor-exit p0

    return-void

    .line 528
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->g(Ljava/lang/Object;)Lcom/ut/mini/g$a;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/ut/mini/g$a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/Object;)V
    .locals 14
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    monitor-enter p0

    if-eqz p1, :cond_13

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/g;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 738
    :goto_0
    monitor-exit p0

    return-void

    .line 550
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->g(Ljava/lang/Object;)Lcom/ut/mini/g$a;

    move-result-object v8

    .line 553
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->h()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 556
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->i()Lcom/ut/mini/UTPageStatus;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v8}, Lcom/ut/mini/g$a;->i()Lcom/ut/mini/UTPageStatus;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 560
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    invoke-virtual {p0, v8}, Lcom/ut/mini/g;->a(Lcom/ut/mini/g$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 567
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/ut/mini/g$a;->k()J

    move-result-wide v4

    sub-long v10, v2, v4

    .line 571
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->l()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    .line 572
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 573
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/ut/mini/g$a;->a(Landroid/net/Uri;)V

    .line 578
    :cond_2
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->m()Ljava/lang/String;

    move-result-object v5

    .line 580
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->n()Ljava/lang/String;

    move-result-object v4

    .line 587
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 588
    :cond_3
    const-string v4, "-"

    .line 591
    :cond_4
    iget-object v3, p0, Lcom/ut/mini/g;->c:Ljava/util/Map;

    .line 593
    if-nez v3, :cond_5

    .line 594
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 597
    :cond_5
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->j()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 598
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->j()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 602
    :cond_6
    instance-of v2, p1, Lcom/ut/mini/a;

    if-eqz v2, :cond_14

    .line 604
    move-object v0, p1

    check-cast v0, Lcom/ut/mini/a;

    move-object v2, v0

    .line 607
    invoke-interface {v2}, Lcom/ut/mini/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 608
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    move-object v4, v6

    .line 612
    :cond_7
    invoke-interface {v2}, Lcom/ut/mini/a;->c()Ljava/util/Map;

    move-result-object v6

    .line 615
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 616
    iget-object v3, p0, Lcom/ut/mini/g;->c:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 617
    iget-object v3, p0, Lcom/ut/mini/g;->c:Ljava/util/Map;

    .line 621
    :cond_8
    invoke-interface {v2}, Lcom/ut/mini/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    move-object v5, v3

    move-object v6, v4

    move-object v7, v2

    .line 629
    :goto_1
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->l()Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 630
    if-eqz v3, :cond_d

    .line 634
    :try_start_3
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 635
    const-string v2, "spm"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 636
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_e

    .line 638
    :try_start_4
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "UTF-8"

    invoke-static {v2, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 640
    const-string v2, "spm"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    move-object v4, v3

    move-object v3, v2

    .line 646
    :goto_2
    :try_start_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 647
    const/4 v2, 0x0

    .line 649
    iget-object v12, p0, Lcom/ut/mini/g;->i:Ljava/util/Map;

    invoke-interface {v12, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 650
    iget-object v12, p0, Lcom/ut/mini/g;->i:Ljava/util/Map;

    invoke-interface {v12, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 651
    const/4 v2, 0x1

    .line 654
    :cond_9
    if-nez v2, :cond_a

    .line 655
    const-string v2, "spm"

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v2, p0, Lcom/ut/mini/g;->i:Ljava/util/Map;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_a
    const-string v2, "scm"

    invoke-virtual {v4, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 661
    const-string v3, "scm"

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_b
    invoke-static {v4}, Lcom/ut/mini/g;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 666
    invoke-static {}, Lcom/alibaba/mtl/log/c;->a()Lcom/alibaba/mtl/log/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/mtl/log/c;->a(Ljava/lang/String;)V

    .line 670
    :cond_c
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 671
    invoke-interface {v5, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 691
    :cond_d
    :goto_3
    :try_start_6
    new-instance v2, Lcom/ut/mini/d$d;

    invoke-direct {v2, v7}, Lcom/ut/mini/d$d;-><init>(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v2, v6}, Lcom/ut/mini/d$d;->a(Ljava/lang/String;)Lcom/ut/mini/d$d;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Lcom/ut/mini/d$d;->a(J)Lcom/ut/mini/d$d;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/ut/mini/d$d;->a(Ljava/util/Map;)Lcom/ut/mini/d$c;

    .line 704
    invoke-static {}, Lcom/ut/mini/a/a;->d()Lcom/ut/mini/a/a;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/ut/mini/a/a;->b(Ljava/lang/String;)V

    .line 706
    invoke-static {}, Lcom/ut/mini/b;->a()Lcom/ut/mini/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ut/mini/b;->b()Lcom/ut/mini/h;

    move-result-object v3

    .line 708
    if-eqz v3, :cond_f

    .line 709
    invoke-virtual {v2}, Lcom/ut/mini/d$d;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ut/mini/h;->a(Ljava/util/Map;)V

    .line 720
    :goto_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ut/mini/g;->c:Ljava/util/Map;

    .line 722
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->f()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 723
    invoke-virtual {p0, v8}, Lcom/ut/mini/g;->a(Lcom/ut/mini/g$a;)V

    .line 732
    :goto_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ut/mini/g;->e:Ljava/lang/String;

    .line 733
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ut/mini/g;->g:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 641
    :catch_0
    move-exception v2

    .line 643
    :try_start_7
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_e
    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    goto/16 :goto_2

    .line 673
    :catch_1
    move-exception v2

    .line 674
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 711
    :cond_f
    const-string v2, "Record page event error"

    const-string v3, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 716
    :cond_10
    const-string v2, "UT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Please call pageAppear first("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/ut/mini/g;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 724
    :cond_11
    invoke-virtual {v8}, Lcom/ut/mini/g$a;->i()Lcom/ut/mini/UTPageStatus;

    move-result-object v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v8}, Lcom/ut/mini/g$a;->i()Lcom/ut/mini/UTPageStatus;

    move-result-object v3

    if-ne v2, v3, :cond_12

    .line 728
    invoke-virtual {p0, v8}, Lcom/ut/mini/g;->a(Lcom/ut/mini/g$a;)V

    goto :goto_5

    .line 730
    :cond_12
    invoke-direct {p0, p1}, Lcom/ut/mini/g;->h(Ljava/lang/Object;)V

    goto :goto_5

    .line 735
    :cond_13
    const-string v2, "pageDisAppear"

    const-string v3, "The page object should not be null"

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :cond_14
    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_1
.end method
