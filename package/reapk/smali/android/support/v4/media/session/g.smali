.class public Landroid/support/v4/media/session/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/g$c;,
        Landroid/support/v4/media/session/g$d;,
        Landroid/support/v4/media/session/g$b;,
        Landroid/support/v4/media/session/g$e;,
        Landroid/support/v4/media/session/g$g;,
        Landroid/support/v4/media/session/g$f;,
        Landroid/support/v4/media/session/g$i;,
        Landroid/support/v4/media/session/g$a;,
        Landroid/support/v4/media/session/g$h;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "MediaSessionCompat"

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field static final e:Ljava/lang/String; = "android.support.v4.media.session.action.PLAY_FROM_URI"

.field static final f:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE"

.field static final g:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

.field static final h:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

.field static final i:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE_FROM_URI"

.field static final j:Ljava/lang/String; = "android.support.v4.media.session.action.SET_REPEAT_MODE"

.field static final k:Ljava/lang/String; = "android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED"

.field static final l:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

.field static final m:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_QUERY"

.field static final n:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_URI"

.field static final o:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

.field static final p:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

.field static final q:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"

.field static final r:Ljava/lang/String; = "android.support.v4.media.session.EXTRA_BINDER"

.field static s:I = 0x0

.field private static final w:I = 0x140


# instance fields
.field private final t:Landroid/support/v4/media/session/g$b;

.field private final u:Landroid/support/v4/media/session/c;

.field private final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/media/session/g$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/g$b;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Landroid/support/v4/media/session/g$b;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/g;->v:Ljava/util/ArrayList;

    .line 289
    iput-object p2, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 292
    new-instance v0, Landroid/support/v4/media/session/g$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/g$2;-><init>(Landroid/support/v4/media/session/g;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/g;->a(Landroid/support/v4/media/session/g$a;)V

    .line 294
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/c;

    invoke-direct {v0, p1, p0}, Landroid/support/v4/media/session/c;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g;)V

    iput-object v0, p0, Landroid/support/v4/media/session/g;->u:Landroid/support/v4/media/session/c;

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v4/media/session/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/media/session/g;->v:Ljava/util/ArrayList;

    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "tag must not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_1
    if-nez p3, :cond_2

    .line 258
    invoke-static {p1}, Landroid/support/v4/media/session/MediaButtonReceiver;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p3

    .line 259
    if-nez p3, :cond_2

    .line 260
    const-string v1, "MediaSessionCompat"

    const-string v2, "Couldn\'t find a unique registered media button receiver in the given context."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_2
    if-eqz p3, :cond_3

    if-nez p4, :cond_3

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 272
    .end local v0    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 273
    new-instance v1, Landroid/support/v4/media/session/g$c;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/media/session/g$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    .line 274
    iget-object v1, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v1, p4}, Landroid/support/v4/media/session/g$b;->b(Landroid/app/PendingIntent;)V

    .line 276
    new-instance v1, Landroid/support/v4/media/session/g$1;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/g$1;-><init>(Landroid/support/v4/media/session/g;)V

    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/g;->a(Landroid/support/v4/media/session/g$a;)V

    .line 280
    :goto_0
    new-instance v1, Landroid/support/v4/media/session/c;

    invoke-direct {v1, p1, p0}, Landroid/support/v4/media/session/c;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g;)V

    iput-object v1, p0, Landroid/support/v4/media/session/g;->u:Landroid/support/v4/media/session/c;

    .line 282
    sget v1, Landroid/support/v4/media/session/g;->s:I

    if-nez v1, :cond_4

    .line 283
    const/4 v1, 0x1

    const/high16 v2, 0x43a00000    # 320.0f

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 283
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/support/v4/media/session/g;->s:I

    .line 286
    :cond_4
    return-void

    .line 278
    :cond_5
    new-instance v1, Landroid/support/v4/media/session/g$d;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/support/v4/media/session/g$d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/g;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaSession"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 658
    invoke-static {p0, p1}, Landroid/support/v4/media/session/g;->b(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/g;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/g;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaSession"    # Ljava/lang/Object;

    .prologue
    .line 672
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 673
    :cond_0
    const/4 v0, 0x0

    .line 675
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/media/session/g;

    new-instance v1, Landroid/support/v4/media/session/g$c;

    invoke-direct {v1, p1}, Landroid/support/v4/media/session/g$c;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/g;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g$b;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->a(I)V

    .line 356
    return-void
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 329
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->a(Landroid/app/PendingIntent;)V

    .line 330
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->a(Landroid/os/Bundle;)V

    .line 576
    return-void
.end method

.method public a(Landroid/support/v4/media/m;)V
    .locals 1
    .param p1, "metadata"    # Landroid/support/v4/media/m;

    .prologue
    .line 493
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->a(Landroid/support/v4/media/m;)V

    .line 494
    return-void
.end method

.method public a(Landroid/support/v4/media/session/g$a;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v4/media/session/g$a;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/g;->a(Landroid/support/v4/media/session/g$a;Landroid/os/Handler;)V

    .line 306
    return-void
.end method

.method public a(Landroid/support/v4/media/session/g$a;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v4/media/session/g$a;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    if-eqz p2, :cond_0

    .end local p2    # "handler":Landroid/os/Handler;
    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/g$b;->a(Landroid/support/v4/media/session/g$a;Landroid/os/Handler;)V

    .line 318
    return-void

    .line 317
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/g$e;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/media/session/g$e;

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/g;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    return-void
.end method

.method public a(Landroid/support/v4/media/session/p;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/media/session/p;

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->a(Landroid/support/v4/media/session/p;)V

    .line 482
    return-void
.end method

.method public a(Landroid/support/v4/media/x;)V
    .locals 2
    .param p1, "volumeProvider"    # Landroid/support/v4/media/x;

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "volumeProvider may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->a(Landroid/support/v4/media/x;)V

    .line 392
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 519
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->a(Ljava/lang/CharSequence;)V

    .line 520
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/g$b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 436
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/g$f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/g$f;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->a(Ljava/util/List;)V

    .line 509
    return-void
.end method

.method public a(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 408
    iget-object v1, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/g$b;->a(Z)V

    .line 409
    iget-object v1, p0, Landroid/support/v4/media/session/g;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/g$e;

    .line 410
    .local v0, "listener":Landroid/support/v4/media/session/g$e;
    invoke-interface {v0}, Landroid/support/v4/media/session/g$e;->a()V

    goto :goto_0

    .line 412
    .end local v0    # "listener":Landroid/support/v4/media/session/g$e;
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/g$b;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/g$b;->b()V

    .line 445
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->b(I)V

    .line 370
    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->b(Landroid/app/PendingIntent;)V

    .line 347
    return-void
.end method

.method public b(Landroid/support/v4/media/session/g$e;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/media/session/g$e;

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/g;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 643
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 563
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->b(Z)V

    .line 564
    return-void
.end method

.method public c()Landroid/support/v4/media/session/g$i;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/g$b;->c()Landroid/support/v4/media/session/g$i;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->c(I)V

    .line 537
    return-void
.end method

.method public d()Landroid/support/v4/media/session/c;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v4/media/session/g;->u:Landroid/support/v4/media/session/c;

    return-object v0
.end method

.method public d(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .prologue
    .line 551
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/g$b;->d(I)V

    .line 552
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/g$b;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/g$b;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        a = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Landroid/support/v4/media/session/g;->t:Landroid/support/v4/media/session/g$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/g$b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
