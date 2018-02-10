.class public abstract Landroid/support/v4/app/af;
.super Landroid/support/v4/app/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/ad;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroid/content/Context;

.field final c:I

.field final d:Landroid/support/v4/app/ah;

.field private final e:Landroid/os/Handler;

.field private f:Landroid/support/v4/k/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/o",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/as;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/support/v4/app/at;

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .prologue
    .line 67
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    invoke-direct {p0}, Landroid/support/v4/app/ad;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/app/ah;

    invoke-direct {v0}, Landroid/support/v4/app/ah;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    .line 68
    iput-object p1, p0, Landroid/support/v4/app/af;->a:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Landroid/support/v4/app/af;->b:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Landroid/support/v4/app/af;->e:Landroid/os/Handler;

    .line 71
    iput p4, p0, Landroid/support/v4/app/af;->c:I

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .prologue
    .line 58
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v4/app/af;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 60
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 63
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/af;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 64
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ZZ)Landroid/support/v4/app/at;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 304
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v1, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Landroid/support/v4/k/o;

    invoke-direct {v1}, Landroid/support/v4/k/o;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    .line 307
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/k/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/at;

    .line 308
    .local v0, "lm":Landroid/support/v4/app/at;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 309
    new-instance v0, Landroid/support/v4/app/at;

    .end local v0    # "lm":Landroid/support/v4/app/at;
    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/at;-><init>(Ljava/lang/String;Landroid/support/v4/app/af;Z)V

    .line 310
    .restart local v0    # "lm":Landroid/support/v4/app/at;
    iget-object v1, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/k/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_1
    :goto_0
    return-object v0

    .line 311
    :cond_2
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/app/at;->f:Z

    if-nez v1, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/support/v4/app/at;->b()V

    goto :goto_0
.end method

.method public a(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 121
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/af;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 130
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/af;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/af;->a:Landroid/app/Activity;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/d;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .prologue
    .line 158
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    return-void
.end method

.method a(Landroid/support/v4/k/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/k/o",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/as;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    .local p1, "loaderManagers":Landroid/support/v4/k/o;, "Landroid/support/v4/k/o<Ljava/lang/String;Landroid/support/v4/app/as;>;"
    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Landroid/support/v4/k/o;->size()I

    move-result v1

    .line 354
    .local v1, "numLoaderManagers":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 355
    invoke-virtual {p1, v0}, Landroid/support/v4/k/o;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/at;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/at;->a(Landroid/support/v4/app/af;)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "i":I
    .end local v1    # "numLoaderManagers":I
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    .line 359
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 84
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    return-void
.end method

.method a(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    .line 256
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iput-boolean p1, p0, Landroid/support/v4/app/af;->g:Z

    .line 258
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/af;->j:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/af;->j:Z

    .line 267
    if-eqz p1, :cond_2

    .line 268
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    invoke-virtual {v0}, Landroid/support/v4/app/at;->d()V

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    invoke-virtual {v0}, Landroid/support/v4/app/at;->c()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 90
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 165
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/af;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method b(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 230
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 220
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v1, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/k/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/at;

    .line 222
    .local v0, "lm":Landroid/support/v4/app/at;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/at;->g:Z

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/support/v4/app/at;->h()V

    .line 224
    iget-object v1, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/k/o;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v0    # "lm":Landroid/support/v4/app/at;
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 362
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    iget-boolean v0, p0, Landroid/support/v4/app/af;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/at;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 114
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget v0, p0, Landroid/support/v4/app/af;->c:I

    return v0
.end method

.method public abstract g()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method h()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/af;->a:Landroid/app/Activity;

    return-object v0
.end method

.method i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/af;->b:Landroid/content/Context;

    return-object v0
.end method

.method j()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/af;->e:Landroid/os/Handler;

    return-object v0
.end method

.method k()Landroid/support/v4/app/ah;
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/af;->d:Landroid/support/v4/app/ah;

    return-object v0
.end method

.method l()Landroid/support/v4/app/at;
    .locals 3

    .prologue
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v2, 0x1

    .line 210
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    .line 215
    :goto_0
    return-object v0

    .line 213
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/af;->i:Z

    .line 214
    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/af;->j:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/af;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/at;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    .line 215
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    goto :goto_0
.end method

.method m()Z
    .locals 1

    .prologue
    .line 233
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/af;->g:Z

    return v0
.end method

.method n()V
    .locals 4

    .prologue
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v3, 0x1

    .line 237
    iget-boolean v0, p0, Landroid/support/v4/app/af;->j:Z

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 240
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/af;->j:Z

    .line 242
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    invoke-virtual {v0}, Landroid/support/v4/app/at;->b()V

    .line 251
    :cond_1
    :goto_1
    iput-boolean v3, p0, Landroid/support/v4/app/af;->i:Z

    goto :goto_0

    .line 244
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/af;->i:Z

    if-nez v0, :cond_1

    .line 245
    const-string v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/af;->j:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/af;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/at;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    .line 247
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    iget-boolean v0, v0, Landroid/support/v4/app/at;->f:Z

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    invoke-virtual {v0}, Landroid/support/v4/app/at;->b()V

    goto :goto_1
.end method

.method o()V
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    invoke-virtual {v0}, Landroid/support/v4/app/at;->d()V

    goto :goto_0
.end method

.method p()V
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/af;->h:Landroid/support/v4/app/at;

    invoke-virtual {v0}, Landroid/support/v4/app/at;->h()V

    goto :goto_0
.end method

.method q()V
    .locals 5

    .prologue
    .line 289
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    iget-object v4, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    if-eqz v4, :cond_1

    .line 290
    iget-object v4, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    invoke-virtual {v4}, Landroid/support/v4/k/o;->size()I

    move-result v0

    .line 291
    .local v0, "N":I
    new-array v3, v0, [Landroid/support/v4/app/at;

    .line 292
    .local v3, "loaders":[Landroid/support/v4/app/at;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 293
    iget-object v4, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    invoke-virtual {v4, v1}, Landroid/support/v4/k/o;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/at;

    aput-object v4, v3, v1

    .line 292
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 295
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 296
    aget-object v2, v3, v1

    .line 297
    .local v2, "lm":Landroid/support/v4/app/at;
    invoke-virtual {v2}, Landroid/support/v4/app/at;->e()V

    .line 298
    invoke-virtual {v2}, Landroid/support/v4/app/at;->g()V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lm":Landroid/support/v4/app/at;
    .end local v3    # "loaders":[Landroid/support/v4/app/at;
    :cond_1
    return-void
.end method

.method r()Landroid/support/v4/k/o;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/k/o",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/as;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Landroid/support/v4/app/af;, "Landroid/support/v4/app/af<TE;>;"
    const/4 v5, 0x0

    .line 319
    .local v5, "retainLoaders":Z
    iget-object v6, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    if-eqz v6, :cond_4

    .line 322
    iget-object v6, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    invoke-virtual {v6}, Landroid/support/v4/k/o;->size()I

    move-result v0

    .line 323
    .local v0, "N":I
    new-array v4, v0, [Landroid/support/v4/app/at;

    .line 324
    .local v4, "loaders":[Landroid/support/v4/app/at;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 325
    iget-object v6, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    invoke-virtual {v6, v2}, Landroid/support/v4/k/o;->c(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/at;

    aput-object v6, v4, v2

    .line 324
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/af;->m()Z

    move-result v1

    .line 328
    .local v1, "doRetainLoaders":Z
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 329
    aget-object v3, v4, v2

    .line 330
    .local v3, "lm":Landroid/support/v4/app/at;
    iget-boolean v6, v3, Landroid/support/v4/app/at;->g:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    .line 331
    iget-boolean v6, v3, Landroid/support/v4/app/at;->f:Z

    if-nez v6, :cond_1

    .line 332
    invoke-virtual {v3}, Landroid/support/v4/app/at;->b()V

    .line 334
    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/app/at;->d()V

    .line 336
    :cond_2
    iget-boolean v6, v3, Landroid/support/v4/app/at;->g:Z

    if-eqz v6, :cond_3

    .line 337
    const/4 v5, 0x1

    .line 328
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 339
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/app/at;->h()V

    .line 340
    iget-object v6, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    iget-object v7, v3, Landroid/support/v4/app/at;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v4/k/o;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 345
    .end local v0    # "N":I
    .end local v1    # "doRetainLoaders":Z
    .end local v2    # "i":I
    .end local v3    # "lm":Landroid/support/v4/app/at;
    .end local v4    # "loaders":[Landroid/support/v4/app/at;
    :cond_4
    if-eqz v5, :cond_5

    .line 346
    iget-object v6, p0, Landroid/support/v4/app/af;->f:Landroid/support/v4/k/o;

    .line 348
    :goto_3
    return-object v6

    :cond_5
    const/4 v6, 0x0

    goto :goto_3
.end method