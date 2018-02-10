.class public Landroid/support/v4/media/s;
.super Landroid/support/v4/media/r;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final i:I = 0x7e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final j:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final k:I = 0x82
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final l:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final m:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final p:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final q:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final r:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final s:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/support/v4/media/v;

.field final c:Landroid/media/AudioManager;

.field final d:Landroid/view/View;

.field final e:Ljava/lang/Object;

.field final f:Landroid/support/v4/media/u;

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/media/w;",
            ">;"
        }
    .end annotation
.end field

.field final h:Landroid/support/v4/media/t;

.field final t:Landroid/view/KeyEvent$Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/media/v;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbacks"    # Landroid/support/v4/media/v;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/media/s;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/v;)V

    .line 218
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/v;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callbacks"    # Landroid/support/v4/media/v;

    .prologue
    .line 228
    invoke-direct {p0}, Landroid/support/v4/media/r;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/s;->g:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Landroid/support/v4/media/s$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/s$1;-><init>(Landroid/support/v4/media/s;)V

    iput-object v0, p0, Landroid/support/v4/media/s;->h:Landroid/support/v4/media/t;

    .line 190
    new-instance v0, Landroid/support/v4/media/s$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/s$2;-><init>(Landroid/support/v4/media/s;)V

    iput-object v0, p0, Landroid/support/v4/media/s;->t:Landroid/view/KeyEvent$Callback;

    .line 229
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/s;->a:Landroid/content/Context;

    .line 230
    iput-object p3, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    .line 231
    iget-object v0, p0, Landroid/support/v4/media/s;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/s;->c:Landroid/media/AudioManager;

    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .end local p2    # "view":Landroid/view/View;
    :cond_0
    iput-object p2, p0, Landroid/support/v4/media/s;->d:Landroid/view/View;

    .line 233
    iget-object v0, p0, Landroid/support/v4/media/s;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/s;->e:Ljava/lang/Object;

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 235
    new-instance v0, Landroid/support/v4/media/u;

    iget-object v1, p0, Landroid/support/v4/media/s;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/s;->c:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/support/v4/media/s;->d:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/media/s;->h:Landroid/support/v4/media/t;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/u;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/t;)V

    iput-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    .line 240
    :goto_1
    return-void

    .line 229
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 238
    .end local p2    # "view":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;Landroid/support/v4/media/v;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/support/v4/media/v;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/s;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/v;)V

    .line 226
    return-void
.end method

.method static a(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 172
    sparse-switch p0, :sswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 184
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private l()[Landroid/support/v4/media/w;
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Landroid/support/v4/media/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    .line 306
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/support/v4/media/w;

    .line 307
    .local v0, "listeners":[Landroid/support/v4/media/w;
    iget-object v1, p0, Landroid/support/v4/media/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/support/v4/media/s;->l()[Landroid/support/v4/media/w;

    move-result-object v1

    .line 313
    .local v1, "listeners":[Landroid/support/v4/media/w;
    if-eqz v1, :cond_0

    .line 314
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 315
    .local v0, "listener":Landroid/support/v4/media/w;
    invoke-virtual {v0, p0}, Landroid/support/v4/media/w;->a(Landroid/support/v4/media/r;)V

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "listener":Landroid/support/v4/media/w;
    :cond_0
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/support/v4/media/s;->l()[Landroid/support/v4/media/w;

    move-result-object v1

    .line 322
    .local v1, "listeners":[Landroid/support/v4/media/w;
    if-eqz v1, :cond_0

    .line 323
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 324
    .local v0, "listener":Landroid/support/v4/media/w;
    invoke-virtual {v0, p0}, Landroid/support/v4/media/w;->b(Landroid/support/v4/media/r;)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "listener":Landroid/support/v4/media/w;
    :cond_0
    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    iget-object v1, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v1}, Landroid/support/v4/media/v;->f()Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    .line 332
    invoke-virtual {v2}, Landroid/support/v4/media/v;->e()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    .line 333
    invoke-virtual {v4}, Landroid/support/v4/media/v;->h()I

    move-result v4

    .line 331
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/u;->a(ZJI)V

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    invoke-virtual {v0}, Landroid/support/v4/media/u;->f()V

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0}, Landroid/support/v4/media/v;->a()V

    .line 360
    invoke-direct {p0}, Landroid/support/v4/media/s;->o()V

    .line 361
    invoke-direct {p0}, Landroid/support/v4/media/s;->m()V

    .line 362
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/v;->a(J)V

    .line 431
    return-void
.end method

.method public a(Landroid/support/v4/media/w;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/media/w;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v4/media/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    iget-object v1, p0, Landroid/support/v4/media/s;->t:Landroid/view/KeyEvent$Callback;

    iget-object v0, p0, Landroid/support/v4/media/s;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p1, v1, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    invoke-virtual {v0}, Landroid/support/v4/media/u;->g()V

    .line 376
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0}, Landroid/support/v4/media/v;->b()V

    .line 377
    invoke-direct {p0}, Landroid/support/v4/media/s;->o()V

    .line 378
    invoke-direct {p0}, Landroid/support/v4/media/s;->m()V

    .line 379
    return-void
.end method

.method public b(Landroid/support/v4/media/w;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/media/w;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v4/media/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public c()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    invoke-virtual {v0}, Landroid/support/v4/media/u;->h()V

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0}, Landroid/support/v4/media/v;->c()V

    .line 394
    invoke-direct {p0}, Landroid/support/v4/media/s;->o()V

    .line 395
    invoke-direct {p0}, Landroid/support/v4/media/s;->m()V

    .line 396
    return-void
.end method

.method public d()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0}, Landroid/support/v4/media/v;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0}, Landroid/support/v4/media/v;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0}, Landroid/support/v4/media/v;->f()Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0}, Landroid/support/v4/media/v;->g()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0}, Landroid/support/v4/media/v;->h()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    invoke-virtual {v0}, Landroid/support/v4/media/u;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0}, Landroid/support/v4/media/s;->o()V

    .line 343
    invoke-direct {p0}, Landroid/support/v4/media/s;->m()V

    .line 344
    invoke-direct {p0}, Landroid/support/v4/media/s;->n()V

    .line 345
    return-void
.end method

.method public k()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v4/media/s;->f:Landroid/support/v4/media/u;

    invoke-virtual {v0}, Landroid/support/v4/media/u;->b()V

    .line 487
    return-void
.end method
