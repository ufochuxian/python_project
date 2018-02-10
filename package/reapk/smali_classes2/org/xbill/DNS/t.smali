.class public final Lorg/xbill/DNS/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final I:[Lorg/xbill/DNS/Name;

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field static f:Ljava/lang/Class;

.field private static g:Lorg/xbill/DNS/ad;

.field private static h:[Lorg/xbill/DNS/Name;

.field private static i:Ljava/util/Map;

.field private static j:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private k:Lorg/xbill/DNS/ad;

.field private l:[Lorg/xbill/DNS/Name;

.field private m:Lorg/xbill/DNS/b;

.field private n:Z

.field private o:I

.field private p:Lorg/xbill/DNS/Name;

.field private q:I

.field private r:I

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/util/List;

.field private y:[Lorg/xbill/DNS/Record;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/t;->I:[Lorg/xbill/DNS/Name;

    .line 97
    invoke-static {}, Lorg/xbill/DNS/t;->a()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 285
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-direct {p0, p1, v0, v0}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 270
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;II)V
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {p2}, Lorg/xbill/DNS/au;->a(I)V

    .line 231
    invoke-static {p3}, Lorg/xbill/DNS/g;->a(I)V

    .line 232
    invoke-static {p2}, Lorg/xbill/DNS/au;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-eq p2, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot query for meta-types other than ANY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/t;->p:Lorg/xbill/DNS/Name;

    .line 236
    iput p2, p0, Lorg/xbill/DNS/t;->q:I

    .line 237
    iput p3, p0, Lorg/xbill/DNS/t;->r:I

    .line 238
    sget-object v0, Lorg/xbill/DNS/t;->f:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.xbill.DNS.t"

    invoke-static {v0}, Lorg/xbill/DNS/t;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/t;->f:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 239
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/t;->b()Lorg/xbill/DNS/ad;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/t;->k:Lorg/xbill/DNS/ad;

    .line 240
    invoke-static {}, Lorg/xbill/DNS/t;->c()[Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/t;->l:[Lorg/xbill/DNS/Name;

    .line 241
    invoke-static {p3}, Lorg/xbill/DNS/t;->a(I)Lorg/xbill/DNS/b;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/t;->m:Lorg/xbill/DNS/b;

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/t;->o:I

    .line 244
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/t;->s:Z

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/t;->z:I

    .line 246
    return-void

    .line 238
    :cond_1
    sget-object v0, Lorg/xbill/DNS/t;->f:Ljava/lang/Class;

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static declared-synchronized a(I)Lorg/xbill/DNS/b;
    .locals 4
    .param p0, "dclass"    # I

    .prologue
    .line 126
    const-class v2, Lorg/xbill/DNS/t;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/g;->a(I)V

    .line 127
    sget-object v1, Lorg/xbill/DNS/t;->i:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/w;->c(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/b;

    .line 128
    .local v0, "c":Lorg/xbill/DNS/b;
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lorg/xbill/DNS/b;

    .end local v0    # "c":Lorg/xbill/DNS/b;
    invoke-direct {v0, p0}, Lorg/xbill/DNS/b;-><init>(I)V

    .line 130
    .restart local v0    # "c":Lorg/xbill/DNS/b;
    sget-object v1, Lorg/xbill/DNS/t;->i:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/w;->c(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit v2

    return-object v0

    .line 126
    .end local v0    # "c":Lorg/xbill/DNS/b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized a()V
    .locals 4

    .prologue
    .line 86
    const-class v2, Lorg/xbill/DNS/t;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lorg/xbill/DNS/m;

    invoke-direct {v1}, Lorg/xbill/DNS/m;-><init>()V

    sput-object v1, Lorg/xbill/DNS/t;->g:Lorg/xbill/DNS/ad;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-static {}, Lorg/xbill/DNS/ae;->e()Lorg/xbill/DNS/ae;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ae;->c()[Lorg/xbill/DNS/Name;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/t;->h:[Lorg/xbill/DNS/Name;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/xbill/DNS/t;->i:Ljava/util/Map;

    .line 93
    invoke-static {}, Lorg/xbill/DNS/ae;->e()Lorg/xbill/DNS/ae;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ae;->d()I

    move-result v1

    sput v1, Lorg/xbill/DNS/t;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit v2

    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to initialize resolver"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private a(Lorg/xbill/DNS/Name;)V
    .locals 10
    .param p1, "current"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v9, 0x1

    .line 463
    iget-object v6, p0, Lorg/xbill/DNS/t;->m:Lorg/xbill/DNS/b;

    iget v7, p0, Lorg/xbill/DNS/t;->q:I

    iget v8, p0, Lorg/xbill/DNS/t;->o:I

    invoke-virtual {v6, p1, v7, v8}, Lorg/xbill/DNS/b;->b(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/al;

    move-result-object v5

    .line 464
    .local v5, "sr":Lorg/xbill/DNS/al;
    iget-boolean v6, p0, Lorg/xbill/DNS/t;->s:Z

    if-eqz v6, :cond_0

    .line 465
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "lookup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/xbill/DNS/t;->q:I

    invoke-static {v8}, Lorg/xbill/DNS/au;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 469
    :cond_0
    invoke-direct {p0, p1, v5}, Lorg/xbill/DNS/t;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/al;)V

    .line 470
    iget-boolean v6, p0, Lorg/xbill/DNS/t;->v:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lorg/xbill/DNS/t;->w:Z

    if-eqz v6, :cond_2

    .line 512
    :cond_1
    :goto_0
    return-void

    .line 473
    :cond_2
    iget v6, p0, Lorg/xbill/DNS/t;->q:I

    iget v7, p0, Lorg/xbill/DNS/t;->r:I

    invoke-static {p1, v6, v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 474
    .local v2, "question":Lorg/xbill/DNS/Record;
    invoke-static {v2}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/v;

    move-result-object v1

    .line 475
    .local v1, "query":Lorg/xbill/DNS/v;
    const/4 v4, 0x0

    .line 477
    .local v4, "response":Lorg/xbill/DNS/v;
    :try_start_0
    iget-object v6, p0, Lorg/xbill/DNS/t;->k:Lorg/xbill/DNS/ad;

    invoke-interface {v6, v1}, Lorg/xbill/DNS/ad;->a(Lorg/xbill/DNS/v;)Lorg/xbill/DNS/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 487
    invoke-virtual {v4}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/r;->d()I

    move-result v3

    .line 488
    .local v3, "rcode":I
    if-eqz v3, :cond_4

    const/4 v6, 0x3

    if-eq v3, v6, :cond_4

    .line 491
    iput-boolean v9, p0, Lorg/xbill/DNS/t;->C:Z

    .line 492
    invoke-static {v3}, Lorg/xbill/DNS/ab;->a(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/xbill/DNS/t;->D:Ljava/lang/String;

    goto :goto_0

    .line 479
    .end local v3    # "rcode":I
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    instance-of v6, v0, Ljava/io/InterruptedIOException;

    if-eqz v6, :cond_3

    .line 482
    iput-boolean v9, p0, Lorg/xbill/DNS/t;->F:Z

    goto :goto_0

    .line 484
    :cond_3
    iput-boolean v9, p0, Lorg/xbill/DNS/t;->E:Z

    goto :goto_0

    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "rcode":I
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/v;->b()Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-virtual {v4}, Lorg/xbill/DNS/v;->b()Lorg/xbill/DNS/Record;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 498
    iput-boolean v9, p0, Lorg/xbill/DNS/t;->C:Z

    .line 499
    const-string v6, "response does not match query"

    iput-object v6, p0, Lorg/xbill/DNS/t;->D:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_5
    iget-object v6, p0, Lorg/xbill/DNS/t;->m:Lorg/xbill/DNS/b;

    invoke-virtual {v6, v4}, Lorg/xbill/DNS/b;->a(Lorg/xbill/DNS/v;)Lorg/xbill/DNS/al;

    move-result-object v5

    .line 504
    if-nez v5, :cond_6

    .line 505
    iget-object v6, p0, Lorg/xbill/DNS/t;->m:Lorg/xbill/DNS/b;

    iget v7, p0, Lorg/xbill/DNS/t;->q:I

    iget v8, p0, Lorg/xbill/DNS/t;->o:I

    invoke-virtual {v6, p1, v7, v8}, Lorg/xbill/DNS/b;->b(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/al;

    move-result-object v5

    .line 506
    :cond_6
    iget-boolean v6, p0, Lorg/xbill/DNS/t;->s:Z

    if-eqz v6, :cond_7

    .line 507
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "queried "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/xbill/DNS/t;->q:I

    invoke-static {v8}, Lorg/xbill/DNS/au;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 509
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 511
    :cond_7
    invoke-direct {p0, p1, v5}, Lorg/xbill/DNS/t;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/al;)V

    goto/16 :goto_0
.end method

.method private a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "oldname"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 396
    iput-boolean v2, p0, Lorg/xbill/DNS/t;->u:Z

    .line 397
    iput-boolean v0, p0, Lorg/xbill/DNS/t;->C:Z

    .line 398
    iput-boolean v0, p0, Lorg/xbill/DNS/t;->E:Z

    .line 399
    iput-boolean v0, p0, Lorg/xbill/DNS/t;->F:Z

    .line 400
    iput-boolean v0, p0, Lorg/xbill/DNS/t;->B:Z

    .line 401
    iput-boolean v0, p0, Lorg/xbill/DNS/t;->H:Z

    .line 402
    iget v0, p0, Lorg/xbill/DNS/t;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/t;->t:I

    .line 403
    iget v0, p0, Lorg/xbill/DNS/t;->t:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    iput v2, p0, Lorg/xbill/DNS/t;->z:I

    .line 405
    const-string v0, "CNAME loop"

    iput-object v0, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    .line 406
    iput-boolean v2, p0, Lorg/xbill/DNS/t;->v:Z

    .line 413
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/t;->x:Ljava/util/List;

    if-nez v0, :cond_2

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/t;->x:Ljava/util/List;

    .line 411
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/t;->x:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-direct {p0, p1}, Lorg/xbill/DNS/t;->a(Lorg/xbill/DNS/Name;)V

    goto :goto_0
.end method

.method private a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/al;)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "response"    # Lorg/xbill/DNS/al;

    .prologue
    const/4 v8, 0x1

    .line 417
    invoke-virtual {p2}, Lorg/xbill/DNS/al;->g()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 418
    invoke-virtual {p2}, Lorg/xbill/DNS/al;->h()[Lorg/xbill/DNS/RRset;

    move-result-object v6

    .line 419
    .local v6, "rrsets":[Lorg/xbill/DNS/RRset;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v5, "l":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 424
    aget-object v7, v6, v3

    invoke-virtual {v7}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v4

    .line 425
    .local v4, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 426
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_1
    const/4 v7, 0x0

    iput v7, p0, Lorg/xbill/DNS/t;->z:I

    .line 430
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/xbill/DNS/Record;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/xbill/DNS/Record;

    check-cast v7, [Lorg/xbill/DNS/Record;

    iput-object v7, p0, Lorg/xbill/DNS/t;->y:[Lorg/xbill/DNS/Record;

    .line 431
    iput-boolean v8, p0, Lorg/xbill/DNS/t;->v:Z

    .line 459
    .end local v3    # "i":I
    .end local v5    # "l":Ljava/util/List;
    .end local v6    # "rrsets":[Lorg/xbill/DNS/RRset;
    :cond_2
    :goto_2
    return-void

    .line 432
    :cond_3
    invoke-virtual {p2}, Lorg/xbill/DNS/al;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 433
    iput-boolean v8, p0, Lorg/xbill/DNS/t;->B:Z

    .line 434
    iput-boolean v8, p0, Lorg/xbill/DNS/t;->w:Z

    .line 435
    iget v7, p0, Lorg/xbill/DNS/t;->t:I

    if-lez v7, :cond_2

    .line 436
    const/4 v7, 0x3

    iput v7, p0, Lorg/xbill/DNS/t;->z:I

    .line 437
    iput-boolean v8, p0, Lorg/xbill/DNS/t;->v:Z

    goto :goto_2

    .line 439
    :cond_4
    invoke-virtual {p2}, Lorg/xbill/DNS/al;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 440
    const/4 v7, 0x4

    iput v7, p0, Lorg/xbill/DNS/t;->z:I

    .line 441
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/xbill/DNS/t;->y:[Lorg/xbill/DNS/Record;

    .line 442
    iput-boolean v8, p0, Lorg/xbill/DNS/t;->v:Z

    goto :goto_2

    .line 443
    :cond_5
    invoke-virtual {p2}, Lorg/xbill/DNS/al;->e()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 444
    invoke-virtual {p2}, Lorg/xbill/DNS/al;->i()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v0

    .line 445
    .local v0, "cname":Lorg/xbill/DNS/CNAMERecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lorg/xbill/DNS/t;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_2

    .line 446
    .end local v0    # "cname":Lorg/xbill/DNS/CNAMERecord;
    :cond_6
    invoke-virtual {p2}, Lorg/xbill/DNS/al;->f()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 447
    invoke-virtual {p2}, Lorg/xbill/DNS/al;->j()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v1

    .line 449
    .local v1, "dname":Lorg/xbill/DNS/DNAMERecord;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lorg/xbill/DNS/t;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 450
    :catch_0
    move-exception v2

    .line 451
    .local v2, "e":Lorg/xbill/DNS/NameTooLongException;
    iput v8, p0, Lorg/xbill/DNS/t;->z:I

    .line 452
    const-string v7, "Invalid DNAME target"

    iput-object v7, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    .line 453
    iput-boolean v8, p0, Lorg/xbill/DNS/t;->v:Z

    goto :goto_2

    .line 455
    .end local v1    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .end local v2    # "e":Lorg/xbill/DNS/NameTooLongException;
    :cond_7
    invoke-virtual {p2}, Lorg/xbill/DNS/al;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 457
    iput-boolean v8, p0, Lorg/xbill/DNS/t;->H:Z

    goto :goto_2
.end method

.method public static declared-synchronized a(Lorg/xbill/DNS/aa;)V
    .locals 2
    .param p0, "logger"    # Lorg/xbill/DNS/aa;

    .prologue
    .line 189
    const-class v0, Lorg/xbill/DNS/t;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/c;->a(Lorg/xbill/DNS/aa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit v0

    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lorg/xbill/DNS/ad;)V
    .locals 2
    .param p0, "resolver"    # Lorg/xbill/DNS/ad;

    .prologue
    .line 115
    const-class v0, Lorg/xbill/DNS/t;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/t;->g:Lorg/xbill/DNS/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lorg/xbill/DNS/b;I)V
    .locals 3
    .param p0, "cache"    # Lorg/xbill/DNS/b;
    .param p1, "dclass"    # I

    .prologue
    .line 143
    const-class v1, Lorg/xbill/DNS/t;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/xbill/DNS/g;->a(I)V

    .line 144
    sget-object v0, Lorg/xbill/DNS/t;->i:Ljava/util/Map;

    invoke-static {p1}, Lorg/xbill/DNS/w;->c(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v1

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a([Ljava/lang/String;)V
    .locals 5
    .param p0, "domains"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 172
    const-class v3, Lorg/xbill/DNS/t;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 173
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lorg/xbill/DNS/t;->h:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    monitor-exit v3

    return-void

    .line 176
    :cond_0
    :try_start_1
    array-length v2, p0

    new-array v1, v2, [Lorg/xbill/DNS/Name;

    .line 177
    .local v1, "newdomains":[Lorg/xbill/DNS/Name;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 178
    aget-object v2, p0, v0

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v2, v4}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_1
    sput-object v1, Lorg/xbill/DNS/t;->h:[Lorg/xbill/DNS/Name;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    .end local v1    # "newdomains":[Lorg/xbill/DNS/Name;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized a([Lorg/xbill/DNS/Name;)V
    .locals 2
    .param p0, "domains"    # [Lorg/xbill/DNS/Name;

    .prologue
    .line 162
    const-class v0, Lorg/xbill/DNS/t;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/t;->h:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit v0

    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Lorg/xbill/DNS/ad;
    .locals 2

    .prologue
    .line 106
    const-class v0, Lorg/xbill/DNS/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/t;->g:Lorg/xbill/DNS/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "current"    # Lorg/xbill/DNS/Name;
    .param p2, "suffix"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 516
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/xbill/DNS/t;->w:Z

    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, "tname":Lorg/xbill/DNS/Name;
    if-nez p2, :cond_0

    .line 519
    move-object v1, p1

    .line 529
    :goto_0
    invoke-direct {p0, v1}, Lorg/xbill/DNS/t;->a(Lorg/xbill/DNS/Name;)V

    .line 530
    :goto_1
    return-void

    .line 522
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/xbill/DNS/t;->G:Z

    goto :goto_1
.end method

.method public static declared-synchronized c()[Lorg/xbill/DNS/Name;
    .locals 2

    .prologue
    .line 153
    const-class v0, Lorg/xbill/DNS/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/t;->h:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    iput v1, p0, Lorg/xbill/DNS/t;->t:I

    .line 195
    iput-boolean v1, p0, Lorg/xbill/DNS/t;->u:Z

    .line 196
    iput-boolean v1, p0, Lorg/xbill/DNS/t;->v:Z

    .line 197
    iput-boolean v1, p0, Lorg/xbill/DNS/t;->w:Z

    .line 198
    iput-object v2, p0, Lorg/xbill/DNS/t;->x:Ljava/util/List;

    .line 199
    iput-object v2, p0, Lorg/xbill/DNS/t;->y:[Lorg/xbill/DNS/Record;

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/t;->z:I

    .line 201
    iput-object v2, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    .line 202
    iput-boolean v1, p0, Lorg/xbill/DNS/t;->B:Z

    .line 203
    iput-boolean v1, p0, Lorg/xbill/DNS/t;->C:Z

    .line 204
    iput-object v2, p0, Lorg/xbill/DNS/t;->D:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lorg/xbill/DNS/t;->E:Z

    .line 206
    iput-boolean v1, p0, Lorg/xbill/DNS/t;->F:Z

    .line 207
    iput-boolean v1, p0, Lorg/xbill/DNS/t;->G:Z

    .line 208
    iput-boolean v1, p0, Lorg/xbill/DNS/t;->H:Z

    .line 209
    iget-boolean v0, p0, Lorg/xbill/DNS/t;->n:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/xbill/DNS/t;->m:Lorg/xbill/DNS/b;

    invoke-virtual {v0}, Lorg/xbill/DNS/b;->a()V

    .line 211
    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 589
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->v:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/xbill/DNS/t;->z:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 590
    return-void

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Lookup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/t;->p:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/t;->r:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 593
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/t;->r:I

    invoke-static {v2}, Lorg/xbill/DNS/g;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/t;->q:I

    invoke-static {v2}, Lorg/xbill/DNS/au;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " isn\'t done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Lorg/xbill/DNS/b;)V
    .locals 2
    .param p1, "cache"    # Lorg/xbill/DNS/b;

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Lorg/xbill/DNS/b;

    iget v1, p0, Lorg/xbill/DNS/t;->r:I

    invoke-direct {v0, v1}, Lorg/xbill/DNS/b;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/t;->m:Lorg/xbill/DNS/b;

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/t;->n:Z

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/t;->m:Lorg/xbill/DNS/b;

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/t;->n:Z

    goto :goto_0
.end method

.method public b(I)V
    .locals 3
    .param p1, "ndots"    # I

    .prologue
    .line 378
    if-gez p1, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal ndots value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    sput p1, Lorg/xbill/DNS/t;->j:I

    .line 382
    return-void
.end method

.method public b(Lorg/xbill/DNS/ad;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xbill/DNS/ad;

    .prologue
    .line 320
    iput-object p1, p0, Lorg/xbill/DNS/t;->k:Lorg/xbill/DNS/ad;

    .line 321
    return-void
.end method

.method public b([Ljava/lang/String;)V
    .locals 4
    .param p1, "domains"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xbill/DNS/t;->l:[Lorg/xbill/DNS/Name;

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Lorg/xbill/DNS/Name;

    .line 346
    .local v1, "newdomains":[Lorg/xbill/DNS/Name;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 347
    aget-object v2, p1, v0

    sget-object v3, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v2, v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_1
    iput-object v1, p0, Lorg/xbill/DNS/t;->l:[Lorg/xbill/DNS/Name;

    goto :goto_0
.end method

.method public b([Lorg/xbill/DNS/Name;)V
    .locals 0
    .param p1, "domains"    # [Lorg/xbill/DNS/Name;

    .prologue
    .line 330
    iput-object p1, p0, Lorg/xbill/DNS/t;->l:[Lorg/xbill/DNS/Name;

    .line 331
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "credibility"    # I

    .prologue
    .line 391
    iput p1, p0, Lorg/xbill/DNS/t;->o:I

    .line 392
    return-void
.end method

.method public d()[Lorg/xbill/DNS/Record;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 538
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->v:Z

    if-eqz v1, :cond_0

    .line 539
    invoke-direct {p0}, Lorg/xbill/DNS/t;->i()V

    .line 540
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/t;->p:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    iget-object v1, p0, Lorg/xbill/DNS/t;->p:Lorg/xbill/DNS/Name;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/t;->b(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 558
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->v:Z

    if-nez v1, :cond_2

    .line 559
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->C:Z

    if-eqz v1, :cond_8

    .line 560
    iput v4, p0, Lorg/xbill/DNS/t;->z:I

    .line 561
    iget-object v1, p0, Lorg/xbill/DNS/t;->D:Ljava/lang/String;

    iput-object v1, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    .line 562
    iput-boolean v3, p0, Lorg/xbill/DNS/t;->v:Z

    .line 584
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/xbill/DNS/t;->y:[Lorg/xbill/DNS/Record;

    :goto_2
    return-object v1

    .line 542
    :cond_3
    iget-object v1, p0, Lorg/xbill/DNS/t;->l:[Lorg/xbill/DNS/Name;

    if-nez v1, :cond_4

    .line 543
    iget-object v1, p0, Lorg/xbill/DNS/t;->p:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/t;->b(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 545
    :cond_4
    iget-object v1, p0, Lorg/xbill/DNS/t;->p:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    sget v2, Lorg/xbill/DNS/t;->j:I

    if-le v1, v2, :cond_5

    .line 546
    iget-object v1, p0, Lorg/xbill/DNS/t;->p:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/t;->b(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 547
    :cond_5
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->v:Z

    if-eqz v1, :cond_6

    .line 548
    iget-object v1, p0, Lorg/xbill/DNS/t;->y:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 550
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lorg/xbill/DNS/t;->l:[Lorg/xbill/DNS/Name;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 551
    iget-object v1, p0, Lorg/xbill/DNS/t;->p:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/t;->l:[Lorg/xbill/DNS/Name;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/t;->b(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 552
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->v:Z

    if-eqz v1, :cond_7

    .line 553
    iget-object v1, p0, Lorg/xbill/DNS/t;->y:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 554
    :cond_7
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->u:Z

    if-nez v1, :cond_1

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 563
    .end local v0    # "i":I
    :cond_8
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->F:Z

    if-eqz v1, :cond_9

    .line 564
    iput v4, p0, Lorg/xbill/DNS/t;->z:I

    .line 565
    const-string v1, "timed out"

    iput-object v1, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    .line 566
    iput-boolean v3, p0, Lorg/xbill/DNS/t;->v:Z

    goto :goto_1

    .line 567
    :cond_9
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->E:Z

    if-eqz v1, :cond_a

    .line 568
    iput v4, p0, Lorg/xbill/DNS/t;->z:I

    .line 569
    const-string v1, "network error"

    iput-object v1, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    .line 570
    iput-boolean v3, p0, Lorg/xbill/DNS/t;->v:Z

    goto :goto_1

    .line 571
    :cond_a
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->B:Z

    if-eqz v1, :cond_b

    .line 572
    const/4 v1, 0x3

    iput v1, p0, Lorg/xbill/DNS/t;->z:I

    .line 573
    iput-boolean v3, p0, Lorg/xbill/DNS/t;->v:Z

    goto :goto_1

    .line 574
    :cond_b
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->H:Z

    if-eqz v1, :cond_c

    .line 575
    iput v3, p0, Lorg/xbill/DNS/t;->z:I

    .line 576
    const-string v1, "referral"

    iput-object v1, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    .line 577
    iput-boolean v3, p0, Lorg/xbill/DNS/t;->v:Z

    goto :goto_1

    .line 578
    :cond_c
    iget-boolean v1, p0, Lorg/xbill/DNS/t;->G:Z

    if-eqz v1, :cond_2

    .line 579
    iput v3, p0, Lorg/xbill/DNS/t;->z:I

    .line 580
    const-string v1, "name too long"

    iput-object v1, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    .line 581
    iput-boolean v3, p0, Lorg/xbill/DNS/t;->v:Z

    goto/16 :goto_1
.end method

.method public e()[Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Lorg/xbill/DNS/t;->j()V

    .line 606
    iget-object v0, p0, Lorg/xbill/DNS/t;->y:[Lorg/xbill/DNS/Record;

    return-object v0
.end method

.method public f()[Lorg/xbill/DNS/Name;
    .locals 2

    .prologue
    .line 618
    invoke-direct {p0}, Lorg/xbill/DNS/t;->j()V

    .line 619
    iget-object v0, p0, Lorg/xbill/DNS/t;->x:Ljava/util/List;

    if-nez v0, :cond_0

    .line 620
    sget-object v0, Lorg/xbill/DNS/t;->I:[Lorg/xbill/DNS/Name;

    .line 621
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/t;->x:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/t;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    check-cast v0, [Lorg/xbill/DNS/Name;

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 632
    invoke-direct {p0}, Lorg/xbill/DNS/t;->j()V

    .line 633
    iget v0, p0, Lorg/xbill/DNS/t;->z:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    invoke-direct {p0}, Lorg/xbill/DNS/t;->j()V

    .line 645
    iget-object v0, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/xbill/DNS/t;->A:Ljava/lang/String;

    .line 652
    :goto_0
    return-object v0

    .line 647
    :cond_0
    iget v0, p0, Lorg/xbill/DNS/t;->z:I

    packed-switch v0, :pswitch_data_0

    .line 654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :pswitch_0
    const-string v0, "successful"

    goto :goto_0

    .line 649
    :pswitch_1
    const-string v0, "unrecoverable error"

    goto :goto_0

    .line 650
    :pswitch_2
    const-string v0, "try again"

    goto :goto_0

    .line 651
    :pswitch_3
    const-string v0, "host not found"

    goto :goto_0

    .line 652
    :pswitch_4
    const-string v0, "type not found"

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
