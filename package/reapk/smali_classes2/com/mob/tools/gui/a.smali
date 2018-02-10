.class public Lcom/mob/tools/gui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/a$b;,
        Lcom/mob/tools/gui/a$c;,
        Lcom/mob/tools/gui/a$a;,
        Lcom/mob/tools/gui/a$e;,
        Lcom/mob/tools/gui/a$f;,
        Lcom/mob/tools/gui/a$d;
    }
.end annotation


# static fields
.field private static final a:I = 0x3

.field private static final b:I = 0x4e20

.field private static final c:I = 0xea60

.field private static final d:I = 0x4e20

.field private static final e:I = 0x64

.field private static final f:I = 0x78

.field private static final g:I = 0x32

.field private static h:Lcom/mob/tools/a/n$a;

.field private static i:Lcom/mob/tools/gui/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/gui/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static k:[Lcom/mob/tools/gui/a$f;

.field private static l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/gui/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/io/File;

.field private static n:Z

.field private static o:Lcom/mob/tools/gui/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/mob/tools/a/n$a;

    invoke-direct {v0}, Lcom/mob/tools/a/n$a;-><init>()V

    .line 48
    .local v0, "timeout":Lcom/mob/tools/a/n$a;
    const/16 v1, 0x1388

    iput v1, v0, Lcom/mob/tools/a/n$a;->b:I

    .line 49
    iget v1, v0, Lcom/mob/tools/a/n$a;->b:I

    rsub-int v1, v1, 0x4e20

    iput v1, v0, Lcom/mob/tools/a/n$a;->a:I

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/mob/tools/gui/a;->l:Ljava/util/ArrayList;

    .line 53
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mob/tools/gui/a$f;

    sput-object v1, Lcom/mob/tools/gui/a;->k:[Lcom/mob/tools/gui/a$f;

    .line 54
    new-instance v1, Lcom/mob/tools/gui/b;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/b;-><init>(I)V

    sput-object v1, Lcom/mob/tools/gui/a;->i:Lcom/mob/tools/gui/b;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mob/tools/gui/a;->a(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/a$b;

    .prologue
    .line 144
    sget-object v0, Lcom/mob/tools/gui/a;->i:Lcom/mob/tools/gui/b;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mob/tools/gui/a;->i:Lcom/mob/tools/gui/b;

    invoke-static {p0, p1}, Lcom/mob/tools/gui/a;->e(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/mob/tools/gui/a;->i:Lcom/mob/tools/gui/b;

    invoke-static {p0, p1}, Lcom/mob/tools/gui/a;->e(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/mob/tools/gui/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/mob/tools/gui/a;->n:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mob/tools/gui/a;->n:Z

    .line 64
    new-instance v0, Lcom/mob/tools/gui/a$d;

    invoke-direct {v0}, Lcom/mob/tools/gui/a$d;-><init>()V

    sput-object v0, Lcom/mob/tools/gui/a;->o:Lcom/mob/tools/gui/a$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-class v1, Lcom/mob/tools/gui/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/mob/tools/c/l;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mob/tools/gui/a;->m:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/mob/tools/gui/a$a;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/mob/tools/gui/a$a;

    .prologue
    .line 80
    const-class v0, Lcom/mob/tools/gui/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/mob/tools/gui/a;->a(Ljava/lang/String;Lcom/mob/tools/gui/a$b;Lcom/mob/tools/gui/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/mob/tools/gui/a$b;Lcom/mob/tools/gui/a$a;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/a$b;
    .param p2, "callback"    # Lcom/mob/tools/gui/a$a;

    .prologue
    .line 84
    const-class v0, Lcom/mob/tools/gui/a;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v1, v2, v3, p2}, Lcom/mob/tools/gui/a;->a(Ljava/lang/String;Lcom/mob/tools/gui/a$b;ZZLcom/mob/tools/gui/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v0

    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/mob/tools/gui/a$b;ZZJLcom/mob/tools/gui/a$a;)V
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/a$b;
    .param p2, "useRamCache"    # Z
    .param p3, "useDiskCache"    # Z
    .param p4, "diskCacheTime"    # J
    .param p6, "callback"    # Lcom/mob/tools/gui/a$a;

    .prologue
    const/4 v7, 0x0

    .line 94
    const-class v8, Lcom/mob/tools/gui/a;

    monitor-enter v8

    if-nez p0, :cond_0

    .line 133
    :goto_0
    monitor-exit v8

    return-void

    .line 98
    :cond_0
    :try_start_0
    sget-object v9, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_1
    sget-object v10, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_1
    if-ge v2, v6, :cond_6

    .line 100
    sget-object v10, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/gui/a$c;

    .line 102
    .local v3, "req":Lcom/mob/tools/gui/a$c;
    invoke-static {v3}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 103
    .local v5, "sameUrl":Z
    invoke-static {v3}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v10

    if-nez v10, :cond_1

    if-eqz p1, :cond_2

    .line 104
    :cond_1
    invoke-static {v3}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {v3}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;)Lcom/mob/tools/gui/a$b;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/mob/tools/gui/a$b;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    const/4 v4, 0x1

    .line 105
    .local v4, "sameOpt":Z
    :goto_2
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 106
    if-eqz p6, :cond_3

    invoke-static {v3}, Lcom/mob/tools/gui/a$c;->c(Lcom/mob/tools/gui/a$c;)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_3

    .line 107
    invoke-static {v3}, Lcom/mob/tools/gui/a$c;->c(Lcom/mob/tools/gui/a$c;)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3
    invoke-static {}, Lcom/mob/tools/gui/a;->a()V

    .line 110
    monitor-exit v9

    goto :goto_0

    .line 113
    .end local v3    # "req":Lcom/mob/tools/gui/a$c;
    .end local v4    # "sameOpt":Z
    .end local v5    # "sameUrl":Z
    .end local v6    # "size":I
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .end local v2    # "i":I
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v2    # "i":I
    .restart local v3    # "req":Lcom/mob/tools/gui/a$c;
    .restart local v5    # "sameUrl":Z
    .restart local v6    # "size":I
    :cond_4
    move v4, v7

    .line 104
    goto :goto_2

    .line 99
    .restart local v4    # "sameOpt":Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "req":Lcom/mob/tools/gui/a$c;
    .end local v4    # "sameOpt":Z
    .end local v5    # "sameUrl":Z
    :cond_6
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :try_start_4
    new-instance v3, Lcom/mob/tools/gui/a$c;

    invoke-direct {v3}, Lcom/mob/tools/gui/a$c;-><init>()V

    .line 116
    .restart local v3    # "req":Lcom/mob/tools/gui/a$c;
    invoke-static {v3, p0}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-static {v3, p1}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Lcom/mob/tools/gui/a$b;)Lcom/mob/tools/gui/a$b;

    .line 118
    invoke-static {v3, p2}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;Z)Z

    .line 119
    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Lcom/mob/tools/gui/a$c;->a(Lcom/mob/tools/gui/a$c;J)J

    .line 120
    invoke-static {v3, p3}, Lcom/mob/tools/gui/a$c;->b(Lcom/mob/tools/gui/a$c;Z)Z

    .line 121
    if-eqz p6, :cond_7

    .line 122
    invoke-static {v3}, Lcom/mob/tools/gui/a$c;->c(Lcom/mob/tools/gui/a$c;)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_7
    sget-object v9, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :try_start_5
    sget-object v7, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v7, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v10, 0x78

    if-le v7, v10, :cond_8

    .line 127
    :goto_3
    sget-object v7, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v10, 0x64

    if-le v7, v10, :cond_8

    .line 128
    sget-object v7, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 131
    :catchall_2
    move-exception v7

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 132
    :try_start_8
    invoke-static {}, Lcom/mob/tools/gui/a;->a()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/mob/tools/gui/a$b;ZZLcom/mob/tools/gui/a$a;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/a$b;
    .param p2, "useRamCache"    # Z
    .param p3, "useDiskCache"    # Z
    .param p4, "callback"    # Lcom/mob/tools/gui/a$a;

    .prologue
    .line 89
    const-class v7, Lcom/mob/tools/gui/a;

    monitor-enter v7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v6, p4

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/mob/tools/gui/a;->a(Ljava/lang/String;Lcom/mob/tools/gui/a$b;ZZJLcom/mob/tools/gui/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v7

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 3

    .prologue
    .line 69
    const-class v1, Lcom/mob/tools/gui/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/mob/tools/gui/a;->n:Z

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mob/tools/gui/a;->n:Z

    .line 71
    sget-object v2, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    sget-object v0, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    sget-object v0, Lcom/mob/tools/gui/a;->i:Lcom/mob/tools/gui/b;

    invoke-virtual {v0}, Lcom/mob/tools/gui/b;->a()V

    .line 74
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    sget-object v0, Lcom/mob/tools/gui/a;->o:Lcom/mob/tools/gui/a$d;

    invoke-virtual {v0}, Lcom/mob/tools/gui/a$d;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    :cond_0
    monitor-exit v1

    return-void

    .line 74
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/a$b;

    .prologue
    .line 152
    sget-object v0, Lcom/mob/tools/gui/a;->i:Lcom/mob/tools/gui/b;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/mob/tools/gui/a;->i:Lcom/mob/tools/gui/b;

    invoke-static {p0, p1}, Lcom/mob/tools/gui/a;->e(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/a$b;

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/mob/tools/gui/a;->b(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)V

    .line 160
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mob/tools/gui/a;->m:Ljava/io/File;

    invoke-static {p0}, Lcom/mob/tools/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v0, "cachedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "cachedFile":Ljava/io/File;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c()[Lcom/mob/tools/gui/a$f;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/a;->k:[Lcom/mob/tools/gui/a$f;

    return-object v0
.end method

.method static synthetic d()Lcom/mob/tools/gui/b;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/a;->i:Lcom/mob/tools/gui/b;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/mob/tools/gui/a$b;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/mob/tools/gui/a;->e(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;Lcom/mob/tools/gui/a$b;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bitmapDesiredOptions"    # Lcom/mob/tools/gui/a$b;

    .prologue
    .line 136
    if-nez p1, :cond_0

    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mob/tools/gui/a$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic e()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/a;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/mob/tools/gui/a;->n:Z

    return v0
.end method

.method static synthetic g()Ljava/io/File;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/a;->m:Ljava/io/File;

    return-object v0
.end method

.method static synthetic h()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/a;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i()Lcom/mob/tools/a/n$a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mob/tools/gui/a;->h:Lcom/mob/tools/a/n$a;

    return-object v0
.end method
