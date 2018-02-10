.class public final Landroid/support/v4/media/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/a$m;,
        Landroid/support/v4/media/a$d;,
        Landroid/support/v4/media/a$n;,
        Landroid/support/v4/media/a$a;,
        Landroid/support/v4/media/a$o;,
        Landroid/support/v4/media/a$h;,
        Landroid/support/v4/media/a$g;,
        Landroid/support/v4/media/a$f;,
        Landroid/support/v4/media/a$i;,
        Landroid/support/v4/media/a$j;,
        Landroid/support/v4/media/a$e;,
        Landroid/support/v4/media/a$l;,
        Landroid/support/v4/media/a$c;,
        Landroid/support/v4/media/a$p;,
        Landroid/support/v4/media/a$b;,
        Landroid/support/v4/media/a$k;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "MediaBrowserCompat"

.field static final b:Z

.field public static final c:Ljava/lang/String; = "android.media.browse.extra.PAGE"

.field public static final d:Ljava/lang/String; = "android.media.browse.extra.PAGE_SIZE"


# instance fields
.field private final e:Landroid/support/v4/media/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "MediaBrowserCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/a;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/a$b;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/support/v4/media/a$b;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/support/v4/os/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Landroid/support/v4/media/a$h;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/a$h;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/a$b;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 132
    new-instance v0, Landroid/support/v4/media/a$g;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/a$g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/a$b;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    goto :goto_0

    .line 133
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 134
    new-instance v0, Landroid/support/v4/media/a$f;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/a$f;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/a$b;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    goto :goto_0

    .line 136
    :cond_3
    new-instance v0, Landroid/support/v4/media/a$i;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v4/media/a$i;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/a$b;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0}, Landroid/support/v4/media/a$e;->d()V

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/a$e;->a(Ljava/lang/String;Landroid/support/v4/media/a$p;)V

    .line 294
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$l;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/support/v4/media/a$l;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "query cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    if-nez p3, :cond_1

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/a$e;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$l;)V

    .line 349
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$p;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "callback"    # Landroid/support/v4/media/a$p;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    if-nez p3, :cond_1

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    if-nez p2, :cond_2

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/a$e;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$p;)V

    .line 276
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/a$c;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "cb"    # Landroid/support/v4/media/a$c;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/a$e;->a(Ljava/lang/String;Landroid/support/v4/media/a$c;)V

    .line 328
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/media/a$p;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "callback"    # Landroid/support/v4/media/a$p;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    if-nez p2, :cond_1

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/support/v4/media/a$e;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/a$p;)V

    .line 239
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0}, Landroid/support/v4/media/a$e;->e()V

    .line 157
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/support/v4/media/a$p;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "callback"    # Landroid/support/v4/media/a$p;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    if-nez p2, :cond_1

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/a$e;->a(Ljava/lang/String;Landroid/support/v4/media/a$p;)V

    .line 316
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0}, Landroid/support/v4/media/a$e;->f()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/content/ComponentName;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0}, Landroid/support/v4/media/a$e;->g()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0}, Landroid/support/v4/media/a$e;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0}, Landroid/support/v4/media/a$e;->i()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/support/v4/media/session/g$i;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/support/v4/media/a$e;

    invoke-interface {v0}, Landroid/support/v4/media/a$e;->j()Landroid/support/v4/media/session/g$i;

    move-result-object v0

    return-object v0
.end method
